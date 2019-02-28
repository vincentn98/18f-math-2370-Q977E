function Y = Z_Z(X, N, small, large)
    assert(pex.is_function(X), 'Expected %s.m to be a function file, but it is either a script or empty or missing.', X);

    if nargin < 2, N = 50; end
    if nargin < 3, small = 50; end
    if nargin < 4, large = 1e3; end

    Y = {};

    % ------------------------------------------------------------------------
    % (-N/2 to N/2) vs Small
    % ------------------------------------------------------------------------
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi([-small, small]), i - floor(N/2)}; end
    Y = horzcat(Y, y);
    
    y = cell(1, N);
    for i = 1 : N, y{i} = {i - floor(N/2), randi([-small, small])}; end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N, y{i} = {0, i - floor(N/2)}; end
    Y = horzcat(Y, y);
    
    y = cell(1, N);
    for i = 1 : N, y{i} = {i - floor(N/2), 0}; end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N, y{i} = {1, i - floor(N/2)}; end
    Y = horzcat(Y, y);
    
    y = cell(1, N);
    for i = 1 : N, y{i} = {i - floor(N/2), 1}; end
    Y = horzcat(Y, y);

    % ------------------------------------------------------------------------
    % Small vs Small
    % ------------------------------------------------------------------------
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi([-small, small]), randi([-small, small])}; end
    Y = horzcat(Y, y);
     
    % ------------------------------------------------------------------------
    % Small vs Large 
    % ------------------------------------------------------------------------
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi([-small, small]), randi([-large, large])}; end
    Y = horzcat(Y, y);
     
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi([-large, large]), randi([-small, small])}; end
    Y = horzcat(Y, y);

    % ------------------------------------------------------------------------
    % Fuzz
    % ------------------------------------------------------------------------
    y = cell(1, N);
    for i = 1 : N, y{i} = {randi([-small, small]) + rand(), randi([-small, small])}; end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N, y{i} = {randi([-small, small]), randi([-small, small]) + rand()}; end
    Y = horzcat(Y, y);

    Y = horzcat(Y, pex.test.args0.fuzz(X));
end
