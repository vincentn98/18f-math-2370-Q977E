function Y = N(X, M, small, large)
    assert(pex.is_function(X), 'Expected %s.m to be a function file, but it is either a script or empty or missing.', X);

    if nargin < 2, M = 50; end
    if nargin < 3, small = 50; end
    if nargin < 4, large = 1e3; end

    Y = {};

    % ------------------------------------------------------------------------
    % (-M/2 to M/2) 
    % ------------------------------------------------------------------------
    y = cell(1, M);
    for i = 1 : M, y{i} = {i - floor(M/2)}; end
    Y = horzcat(Y, y);
    
    % ------------------------------------------------------------------------
    % (0 ... M) for Small M
    % ------------------------------------------------------------------------
    M = randi(small);

    y = cell(1, M + 1);
    for i = 0 : M, y{i + 1} = {i}; end
    Y = horzcat(Y, y);
     
    % ------------------------------------------------------------------------
    % Small vs Large 
    % ------------------------------------------------------------------------
    y = cell(1, M);
    for i = 1 : M, y{i} = {randi(small)}; end
    Y = horzcat(Y, y);
     
    y = cell(1, M);
    for i = 1 : M, y{i} = {randi(large)}; end
    Y = horzcat(Y, y);

    % ------------------------------------------------------------------------
    % Fuzz
    % ------------------------------------------------------------------------
    y = cell(1, M);
    for i = 1 : M, y{i} = {randi(small) + rand()}; end
    Y = horzcat(Y, y);

    y = cell(1, M);
    for i = 1 : M, y{i} = {-randi(small)}; end
    Y = horzcat(Y, y);

    Y = horzcat(Y, pex.test.args0.fuzz(X));
end
