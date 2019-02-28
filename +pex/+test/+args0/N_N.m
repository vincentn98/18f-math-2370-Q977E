function Y = N_N(X, N, small, large)
    assert(pex.is_function(X), 'Expected %s.m to be a function file, but it is either a script or empty or missing.', X);

    if nargin < 2, N = 50; end
    if nargin < 3, small = 50; end
    if nargin < 4, large = 1e3; end

    Y = {};

    % ------------------------------------------------------------------------
    % (-N/2 to N/2) vs Small
    % ------------------------------------------------------------------------
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi(small), i - floor(N/2)}; end
    Y = horzcat(Y, y);
    
    y = cell(1, N);
    for i = 1 : N, y{i} = {i - floor(N/2), randi(small)}; end
    Y = horzcat(Y, y);

    % ------------------------------------------------------------------------
    % (0 ... N) vs 0
    % ------------------------------------------------------------------------
    y = cell(1, N + 1);
    for i = 0 : N, y{i + 1} = {i, 0}; end
    Y = horzcat(Y, y);
     
    y = cell(1, N + 1);
    for i = 0 : N, y{i + 1} = {0, i}; end
    Y = horzcat(Y, y);

    % ------------------------------------------------------------------------
    % (0 ... N) vs 1
    % ------------------------------------------------------------------------
    y = cell(1, N + 1);
    for i = 0 : N, y{i + 1} = {i, 1}; end
    Y = horzcat(Y, y);
     
    y = cell(1, N + 1);
    for i = 0 : N, y{i + 1} = {1, i}; end
    Y = horzcat(Y, y);

    % ------------------------------------------------------------------------
    % (0 ... N) vs N
    % ------------------------------------------------------------------------
    y = cell(1, N + 1);
    for i = 0 : N, y{i + 1} = {i, N}; end
    Y = horzcat(Y, y);
     
    y = cell(1, N + 1);
    for i = 0 : N, y{i + 1} = {N, i}; end
    Y = horzcat(Y, y);

    % ------------------------------------------------------------------------
    % Small vs Small
    % ------------------------------------------------------------------------
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi(small), randi(small)}; end
    Y = horzcat(Y, y);
     
    % ------------------------------------------------------------------------
    % Small vs Large 
    % ------------------------------------------------------------------------
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi(small), randi(large)}; end
    Y = horzcat(Y, y);
     
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi(large), randi(small)}; end
    Y = horzcat(Y, y);
     
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi(large), randi(large)}; end
    Y = horzcat(Y, y);

    % ------------------------------------------------------------------------
    % Fuzz
    % ------------------------------------------------------------------------
    y = cell(1, N);
    for i = 1 : N, y{i} = {-randi(small), randi(small)}; end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N, y{i} = {randi(small), -randi(small)}; end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N, y{i} = {randi(small) + rand(), randi(small)}; end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N, y{i} = {randi(small), randi(small) + rand()}; end
    Y = horzcat(Y, y);

    Y = horzcat(Y, pex.test.args0.fuzz(X));
end
