
function test_count(t)
    X = t.TestData.X;

    name = ['pex.task.', X, '.test_count'];
    if isempty(which(name))
        test_count_generic(t);
    else
        pex.task.(X).test_count(t);
    end
end

function test_count_generic(t)
    X = t.TestData.X;
    S = t.TestData.S;
    T = t.TestData.T;

    repr0 = S.repr0;

    exception_0 = S.exception;
    exception_1 = T.exception;

    count_0 = S.count;
    count_1 = T.count;

    F = fieldnames(count_0);
    M = numel(F);

    m0 = 'Expected %s%s to succeed, but your function threw exception `%s` (%s).';
    m1 = 'Expected %s%s to call %s %d times, but your function called it %d times.';

    if pex.is_dev()
        max_fail = 1;
    else
        max_fail = 5;
    end
    fail = 0;

    N = numel(repr0);
    for i = 1 : N
        e0 = exception_0{i};
        e1 = exception_1{i};

        if ~isempty(e0), continue, end

        R = repr0{i};

        if ~isempty(e1)
            m = sprintf(m0, X, R, e1.identifier, e1.message);
            verifyTrue(t, false, m);
            fail = fail + 1; if fail >= max_fail; return; end
        else
            for j = 1 : M
                c0j = count_0.(F{j}){i};
                c1j = count_1.(F{j}){i};
                m = sprintf(m1, X, R, F{j}, c0j, c1j);
                verifyEqual(t, c1j, c0j, m);
                if c0j == c1j, continue; end
                fail = fail + 1; if fail >= max_fail; return; end
            end
        end
    end
end

