
function Y = args0(~)
    Y = {};

    N = 100;

    % Big-ish hidden numbers, small-ish tolerance.
    y = cell(1, N);
    for i = 1 : N
        a = (rand() - 0.5)*1e6;
        n = a + rand()*1e2;
        b = n + rand()*1e2;
        t = rand()*1e-2;
        y{i} = {n, a, b, t};
    end
    Y = horzcat(Y, y);

    % Big-ish hidden numbers, big-ish tolerance.
    y = cell(1, N);
    for i = 1 : N
        a = (rand() - 0.5)*1e6;
        n = a + rand()*1e2;
        b = n + rand()*1e2;
        t = rand()*4 + 1;
        y{i} = {n, a, b, t};
    end
    Y = horzcat(Y, y);

    N = 20;

    % Small-ish hidden numbers.
    y = cell(1, N);
    for i = 1 : N
        a = (rand() - 0.5)*2;
        n = a + rand()*1e2;
        b = n + rand()*1e2;
        t = rand()*1e-2;
        y{i} = {n, a, b, t};
    end
    Y = horzcat(Y, y);

    % Violation of a is real.
    y = cell(1, N);
    for i = 1 : N
        a = (rand() - 0.5)*1e3;
        n = a + rand()*1e2;
        b = n + rand()*1e2;
        t = rand()*1e-2;
        y{i} = {n, b, a, t};
    end
    Y = horzcat(Y, y);

    % Violation of a <= b.
    y = cell(1, N);
    for i = 1 : N
        a = (rand() - 0.5)*1e3;
        n = a + rand()*1e2;
        b = n + rand()*1e2;
        t = rand()*1e-2;
        y{i} = {n, b, a, t};
    end
    Y = horzcat(Y, y);

    % Violation of t > 0.
    y = cell(1, N);
    for i = 1 : N
        a = (rand() - 0.5)*1e3;
        n = a + rand()*1e2;
        b = n + rand()*1e2;
        t = -rand()*1e-2;
        y{i} = {n, a, b, t};
    end
    Y = horzcat(Y, y);

    % Hidden number is left end point.
    y = cell(1, N);
    for i = 1 : N
        a = (rand() - 0.5)*1e3;
        n = a;
        b = n + rand()*1e2;
        t = rand()*1e-2;
        y{i} = {n, a, b, t};
    end
    Y = horzcat(Y, y);

    % Hidden number is right end point.
    y = cell(1, N);
    for i = 1 : N
        a = (rand() - 0.5)*1e3;
        n = a + rand()*1e2;
        b = n;
        t = rand()*1e-2;
        y{i} = {n, a, b, t};
    end
    Y = horzcat(Y, y);

    % Interval is trivial.
    y = cell(1, N);
    for i = 1 : N
        a = (rand() - 0.5)*1e3;
        n = a;
        b = n;
        t = rand()*1e-2;
        y{i} = {n, a, b, t};
    end
    Y = horzcat(Y, y);
end

