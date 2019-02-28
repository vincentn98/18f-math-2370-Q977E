
function Y = args0(~)
    Y = {};

    N = 1001;

    y = cell(1, N);
    for i = 1 : N
        n = (rand() - 0.5) * 1e5;
        t = rand()*1e-2;
        y{i} = {n, t};
    end
    Y = horzcat(Y, y);

    N = 20;

    y = cell(1, N);
    for i = 1 : N
        n = (rand() - 0.5) * 2;
        t = rand()*1e-2;
        y{i} = {n, t};
    end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N
        n = (rand() - 0.5) * 1e5;
        t = -rand()*1e-2;
        y{i} = {n, t};
    end
    Y = horzcat(Y, y);

    y = cell(1, 2*N + 1);
    for i = -N : N
        t = rand()*1e-2;
        y{i + N + 1} = {i, t};
    end
    Y = horzcat(Y, y);

    y = cell(1, N + 1);
    for i = 0 : N
        t = rand()*1e-2;
        y{i+1} = {2^i, t};
    end
    Y = horzcat(Y, y);

    y = cell(1, N + 1);
    for i = 0 : N
        t = rand()*1e-2;
        y{i+1} = {-2^i, t};
    end
    Y = horzcat(Y, y);
end

