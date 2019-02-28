
function Y = args0(~)
    Y = {};

    % ------------------------------------------------
    % Dense set of 1-dim games.
    % ------------------------------------------------

    y = dense(32);
    Y = horzcat(Y, y);

    % ------------------------------------------------
    % Dense set of 2-dim games.
    % ------------------------------------------------

    y = dense([16, 11]);
    Y = horzcat(Y, y);

    % ------------------------------------------------
    % Dense set of 3-dim games.
    % ------------------------------------------------

    y = dense([4, 5, 4]);
    Y = horzcat(Y, y);

    % ------------------------------------------------
    % Trivial games
    % ------------------------------------------------

    N = 10;
    K = 10;

    y = cell(1, N);
    for i = 1 : N
        k = randi(K);
        a = randi(1e2, 1, k);
        y{i} = {a, k, a, a};
    end
    Y = horzcat(Y, y);

    % ------------------------------------------------
    % Almost-solved games.
    % ------------------------------------------------

    N = 10;
    K = 10;

    y = cell(1, N);
    for i = 1 : N
        k = randi(K);
        a = randi(1e2, 1, k);
        d = randi([0, 1], 1, k);
        y{i} = {a, k, a - d, a};
    end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N
        k = randi(K);
        a = randi(1e2, 1, k);
        d = randi([0, 1], 1, k);
        y{i} = {a, k, a, a + d};
    end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N
        k = randi(K);
        a = randi(1e2, 1, k);
        d0 = randi([0, 1], 1, k);
        d1 = randi([0, 1], 1, k);
        y{i} = {a, k, a - d0, a + d1};
    end
    Y = horzcat(Y, y);

    % -----------------------------------------------------
    % Games where the first and last dimension are trivial.
    % -----------------------------------------------------

    N = 5;
    K = 6;

    y = cell(1, N);
    for i = 1 : N
        k = K;
        a = 0 + randi(1e2, 1, k);
        n = a + randi(1e2, 1, k);
        b = n + randi(1e2, 1, k);
        a(1) = n(1);
        b(1) = n(1);
        a(end) = n(end);
        b(end) = n(end);
        y{i} = {n, k, a, b};
    end
    Y = horzcat(Y, y);

    % ------------------------------------------------
    % General games.
    % ------------------------------------------------

    N = 10;
    K = 5;

    y = cell(1, N);
    for i = 1 : N
        k = randi(K);
        a = 0 + randi(1e2, 1, k);
        n = a + randi(1e2, 1, k);
        b = n + randi(1e2, 1, k);
        y{i} = {n, k, a, b};
    end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N
        k = randi(K);
        a = 0 + randi(1e6, 1, k);
        n = a + randi(1e6, 1, k);
        b = n + randi(1e6, 1, k);
        y{i} = {n, k, a, b};
    end
    Y = horzcat(Y, y);

end

function y = dense(N)
    k = numel(N);
    y = cell(1, prod(N + 1));
    a = randi(1e6, 1, k);
    b = a + N;
    n = zeros(1, k);
    for i = 1 : numel(y)
        assert(all(0 <= n) && all(n <= N), 'n');
        y{i} = {a + n, k, a, b};
        for j = 1 : k
            if n(j) < N(j)
                n(j) = n(j) + 1;
                break;
            end
            n(j) = 0;
        end
    end
end

