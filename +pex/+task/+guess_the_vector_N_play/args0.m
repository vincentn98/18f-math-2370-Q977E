
function Y = args0(~)
    Y = {};


    % ------------------------------------
    % Constant games.
    % ------------------------------------

    N = 20;
    K = 5;

    for k = 1 : K
        y = cell(1, N);
        for n = 1 : N
            a = ones(1, k)*(n - 1);
            y{n} = {a, k};
        end
        Y = horzcat(Y, y); %#ok
    end

    % ------------------------------------
    % Random power-of-2 games.
    % ------------------------------------

    N = 5;
    K = 5;

    for k = 1 : K
        y = cell(1, N);
        for n = 1 : N
            a = 2.^(randperm(k) - 1);
            y{n} = {a, k};
        end
        Y = horzcat(Y, y); %#ok
    end

    % ------------------------------------
    % Random almost power-of-2 games.
    % ------------------------------------

    N = 5;
    K = 5;

    for k = 1 : K
        y = cell(1, N);
        for n = 1 : N
            d = randi([0, 1], 1, k);
            a = 2.^(randperm(k) - 1);
            y{n} = {a + d, k};
        end
        Y = horzcat(Y, y); %#ok
    end

    % ------------------------------------
    % General games.
    % ------------------------------------

    N = 40;
    K = 20;

    y = cell(1, N);
    for i = 1 : N
        k = randi(K);
        y{i} = {randi(1e6, 1, k), k};
    end
    Y = horzcat(Y, y);

end

