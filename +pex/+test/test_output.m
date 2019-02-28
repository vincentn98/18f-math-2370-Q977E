
function test_output(t)
    X = t.TestData.X;

    name = ['pex.task.', X, '.test_output'];
    if isempty(which(name))
        test_output_generic(t)
    else
        pex.task.(X).test_output(t)
    end
end

function test_output_generic(t)
    X = t.TestData.X;
    S = t.TestData.S;
    T = t.TestData.T;

    repr0 = S.repr0;

    args1_0 = S.args1;
    args1_1 = T.args1;

    exception_0 = S.exception;
    exception_1 = T.exception;

    repr1_0 = S.repr1;
    repr1_1 = T.repr1;

    m0 = 'Expected %s%s == %s, but found %s.';
    m1 = 'Expected %s%s == %s, but your function threw exception `%s` (%s).';

    if pex.is_dev()
        max_fail = 1;
    else
        max_fail = 5;
    end
    fail = 0;

    function snoop(~, ~) 
        fail = fail + 1; 
    end 
    addlistener(t, 'VerificationFailed', @snoop);

    N = numel(repr0);
    for i = 1 : N
        e0i = exception_0{i};
        e1i = exception_1{i};
        if ~isempty(e0i), continue; end
        R = repr0{i};
        y0 = args1_0{i};
        y1 = args1_1{i};
        L0 = repr1_0{i};
        L1 = repr1_1{i};
        if isempty(e1i)
            m = sprintf(m0, X, R, L0, L1);
            verifyEqual(t, y1, y0, 'RelTol', 1e-9, m);
        else
            % An exception where none was expected.
            m = sprintf(m1, X, R, L0, e1i.identifier, e1i.message);
            verifyTrue(t, false, m);
        end
        if fail >= max_fail, return; end
    end
end

