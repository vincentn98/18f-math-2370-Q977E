
function Y = args0(~)
    Y = {};

    N = 1000;

    y = cell(1, N);
    a = randi(1e6);
    b = a + N;
    for i = 1 : N
        n = a + i - 1;
        y{i} = {n, a, b};
    end
    Y = horzcat(Y, y);

    N = 20;

    y = cell(1, N);
    for i = 1 : N
        a = randi(1e3);
        y{i} = {a, a, a};
    end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N
        a = randi(1e3);
        y{i} = {a, a - 1, a};
    end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N
        a = randi(1e3);
        y{i} = {a, a, a + 1};
    end
    Y = horzcat(Y, y);

    y = cell(1, N);
    for i = 1 : N
        a = randi(1e3);
        y{i} = {a, a - 1, a + 1};
    end
    Y = horzcat(Y, y);

    N = 100;

    y = cell(1, N);
    for i = 1 : N
        a = 0 + randi(1e6);
        n = a + randi(1e8);
        b = n + randi(1e8);
        y{i} = {n, a, b};
    end
    Y = horzcat(Y, y);

    N = 100;

    y = cell(1, N);
    a = 0 + randi(1e6);
    b = a + N;
    n = a : b;
    for i = 1 : N
        y{i} = {n(i), a, b};
    end
    Y = horzcat(Y, y);

    N = 10;

    y = cell(1, N);
    for i = 1 : N
        a = 0 + randi(1e6);
        n = a + randi(1e8);
        b = n + randi(1e8);
        y{i} = {n, b, a};
    end
    Y = horzcat(Y, y);
end

