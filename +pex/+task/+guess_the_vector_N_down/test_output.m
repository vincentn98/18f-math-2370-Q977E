function test_output(t)
    X = t.TestData.X;
    S = t.TestData.S;
    T = t.TestData.T;

    repr0 = S.repr0;

    exception_0 = S.exception;
    args1_0 = S.args1;
    repr1_0 = S.repr1;
    guess_0 = S.guess;
    correct_0 = S.correct;

    exception_1 = T.exception;
    args1_1 = T.args1;
    repr1_1 = T.repr1;
    guess_1 = T.guess;
    correct_1 = T.correct;

    [b, reason] = pex.equal(correct_0, correct_1);
    assert(b, '%s: %s', 'correct', reason);

    [b, reason] = pex.equal(guess_0, guess_1, 0);
    assert(b, '%s: %s', 'guess', reason);

    m0 = 'Expected %s%s == %s, found %s.';
    m1 = 'Expected %s%s == %s, your function threw exception %s (%s).';
    m2 = 'Expected %s%s to call the oracle %d times, not %d.';

    stop = false;
    function fail(~, ~) 
        stop = true; 
    end 
    addlistener(t, 'VerificationFailed', @fail);

    N = numel(repr0);
    for i = 1 : N
        e0 = exception_0{i};
        e1 = exception_1{i};
        if ~isempty(e0), continue; end
        R = repr0{i};
        y0 = args1_0{i};
        y1 = args1_1{i};
        L0 = repr1_0{i};
        L1 = repr1_1{i};
        g0 = guess_0{i};
        g1 = guess_1{i};
        if isempty(exception_1{i})
            m = sprintf(m0, X, R, L0, L1);
            verifyEqual(t, y1, y0, m);

            m = sprintf(m2, X, R, g0, g1);
            verifyEqual(t, g1, g0, m);
        else
            m = sprintf(m1, X, R, L0, e1.identifier, e1.message);
            verifyTrue(t, false, m);
        end
        if stop, return, end
    end
end

