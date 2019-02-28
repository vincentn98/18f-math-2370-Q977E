function Y = R_R_R(X, S)
    assert(pex.is_function(X), 'Expected %s.m to be a function file, but it is either a script or empty or missing.', X);

    if nargin < 2, S = [1e-2, 1, 10, 1e4, 1e8]; end

    Y = { ...
            {-1, -1, -1}, {-1,  0, -1}, {-1,  1, -1}, ...
            {-1, -1, -1}, {-1,  0, -1}, {-1,  1, -1}, ...
            { 0, -1, -1}, { 0,  0, -1}, { 0,  1, -1}, ...
            { 1, -1,  0}, { 1,  0,  0}, { 1,  1,  0}, ...
            { 0, -1,  0}, { 0,  0,  0}, { 0,  1,  0}, ...
            { 1, -1,  0}, { 1,  0,  0}, { 1,  1,  0}, ...
            { 1, -1,  1}, { 1,  0,  1}, { 1,  1,  1}, ...
            { 0, -1,  1}, { 0,  0,  1}, { 0,  1,  1}, ...
            { 1, -1,  1}, { 1,  0,  1}, { 1,  1,  1} ...
            };

    n = 3;

    N = 50;
    for j = 1 : n
        for s = [-1, 0, 1]
            y = cell(1, N);
            for i = 1 : N
                x = num2cell(-1 + 2*rand(1, n));
                x{j} = s;
                y{i} = x;
            end
        end
    end
    Y = [Y, y];

    N = 1000;
    y = cell(1, N);
    for i = 1 : N
        s = randsample(S, n, true);
        r = -1 + 2*rand(1, n);
        y{i} = num2cell(s .* r);
    end
    Y = [Y, y];

    Y = [Y, pex.test.args0.fuzz(X)];
end
