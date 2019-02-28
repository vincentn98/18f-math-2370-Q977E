function Y = fuzz(X, N)

    assert(pex.is_function(X), 'Expected %s.m to be a function file, but it is either a script or empty or missing.', X);

    K = nargin(X);

    if nargin < 2, N = 100; end

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

    scalar = {-1, 0, 1, 'x', @() 0, @(x) x, false, true, {{}}, struct(), struct('x', 1), pi, -pi};

    M = numel(empty);
    y = cell(1, M);
    for i = 1 : M
        y{i} = empty(i);
    end
    scalar = horzcat(scalar, y);
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

    Y = cell(1, N);
    for i = 1 : N
        Y{i} = randsample(W, K, true);
    end
end
