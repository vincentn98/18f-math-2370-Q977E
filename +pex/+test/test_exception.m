
function test_exception(t)
    
    X = t.TestData.X;
    S = t.TestData.S;
    T = t.TestData.T;

    repr0 = S.repr0;

    exception_0 = S.exception;
    exception_1 = T.exception;

    m0 = 'Expected %s%s to throw exception `%s` (%s), but your function returned normally.';
    m1 = 'Expected %s%s to succeed, but your function threw exception `%s` (%s).';
    m2 = 'Expected %s%s to throw exception `%s` (%s), but your function threw `%s` (%s).';

    N = numel(repr0);

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

    for i = 1 : N
        e0 = exception_0{i};
        e1 = exception_1{i};
        R = repr0{i};

        if isempty(e0) && ~isempty(e1)
            m = sprintf(m1, X, R, e1.identifier, e1.message);
            verifyTrue(t, false, m)
        elseif ~isempty(e0) && isempty(e1)
            m = sprintf(m0, X, R, e0.identifier, e0.message);
            verifyTrue(t, false, m)
        elseif ~isempty(e0) && ~isempty(e1) && ~strcmp(e0.identifier, e1.identifier)
            m = sprintf(m2, X, R, e0.identifier, e0.message, e1.identifier, e1.message);
            verifyTrue(t, false, m)
        end
        if fail >= max_fail, return; end
    end
end

