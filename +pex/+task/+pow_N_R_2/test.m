
% Automatically generated file.
function x = test()
    x = functiontests(localfunctions());
end

function setupOnce(t)
    X = 'pow_N_R_2';

    mat = pex.test.mat_name(X);
    mat = pex.path.to_system_path(mat);

    S = load(mat);

    T = pex.test.capture(X, S.args0);

    should_be_impossible_but_just_in_case = 'This is an error in the test harness.\nPlease re-sync your repository from GitHub and try again.\nIf that does not work then inform the instructor of the problem.';

    [b, reason] = pex.equal(S, T, 0, 1, 1);
    assert(b, 'Capture structures differ: %s\n\n%s', reason, should_be_impossible_but_just_in_case);

    % Disabled for now.
    %[b, reason] = pex.equal(S.repr0, T.repr0);
    %assert(b, '%s: %s\n\n%s', 'repr0', reason, should_be_impossible_but_just_in_case);

    [b, reason] = pex.equal(S.count, T.count, 0, 1, 1);
    assert(b, '%s: %s\n\n%s', 'count', reason, should_be_impossible_but_just_in_case);

    t.TestData.X = X;
    t.TestData.S = S;
    t.TestData.T = T;
end

function test__pow_N_R_2__count(t)
    pex.test.test_count(t);
end

function test__pow_N_R_2__dependence(t)
    pex.test.test_dependence(t);
end

function test__pow_N_R_2__exception(t)
    pex.test.test_exception(t);
end

function test__pow_N_R_2__format(t)
    pex.test.test_format(t);
end

function test__pow_N_R_2__output(t)
    pex.test.test_output(t);
end

function test__pow_N_R_2__warning(t)
    pex.test.test_warning(t);
end


