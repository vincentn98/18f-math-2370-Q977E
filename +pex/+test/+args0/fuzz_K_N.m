function Y = fuzz_K_N(K, N)

    function a = ok(x)
        a = isnumeric(x) && isscalar(x) && x > 0;
    end

    assert(ok(K), 'Expected `K` to be a positive integer.');
    assert(ok(N), 'Expected `N` to be a positive integer.');

    % ------------------------------------------------------------------------
    % Things MATLAB says are empty.
    % ------------------------------------------------------------------------

    empty = {[], {}, ''};
    for i = 1 : numel(empty)
        x = empty{i};
        if ~isempty(x)
            disp(x);
            error('Expected element %d to be empty.', i);
        end
    end

    % ------------------------------------------------------------------------
    % Things MATLAB says are scalar.
    % ------------------------------------------------------------------------

    scalar = {-1, 0, 1, -1e-2, 1e-2, 'x', ' ', @() 0, @(x) x, false, true, struct(), struct('x', 1), pi, -pi};

    % For every x in empty + scalar, MATLAB also considers the 1x1 cell array `{x}` to be a scalar.
    M0 = numel(empty);
    empty_1 = cell(1, M0);
    for i = 1 : M0, empty_1{i} = empty(i); end

    M1 = numel(scalar);
    scalar_1 = cell(1, M1);
    for i = 1 : M1, scalar_1{i} = scalar(i); end

    scalar = horzcat(scalar, scalar_1, empty_1);

    for i = 1 : numel(scalar)
        x = scalar{i};
        if ~isscalar(x)
            disp(x);
            error('Expected element %d to be scalar.', i);
        end
    end

    % ------------------------------------------------------------------------
    % Package the above.
    % ------------------------------------------------------------------------

    W = horzcat(empty, scalar);

    % ------------------------------------------------------------------------
    % Now randomly sample some of the above.
    % ------------------------------------------------------------------------

    % Specifically create a 1xN cell array with elements that are 1xK cell 
    % arrays, suitable for use as the arguments to a function with arity K.

    Y = cell(1, N);
    for i = 1 : N
        Y{i} = randsample(W, K, true);
    end
end
