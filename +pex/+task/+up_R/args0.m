
function Y = args0(~)
    Y = {};

    N = 1001;

    y = cell(1, N);
    for i = 1 : N
        n = (rand() - 0.5) * 1e5;
        y{i} = {n};
    end
    Y = horzcat(Y, y);

    N = 10;

    y = cell(1, N);
    for i = 1 : N
        n = (rand() - 0.5) * 2;
        y{i} = {n};
    end
    Y = horzcat(Y, y);

    N = 20;

    y = cell(1, 2*N + 1);
    for i = -N : N
        y{i + N + 1} = {i};
    end
    Y = horzcat(Y, y);

    y = cell(1, N + 1);
    for i = 0 : N
        y{i+1} = {2^i};
    end
    Y = horzcat(Y, y);

    y = cell(1, N + 1);
    for i = 0 : N
        y{i+1} = {-2^i};
    end
    Y = horzcat(Y, y);
end

