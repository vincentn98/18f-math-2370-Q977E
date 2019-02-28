
function Y = args0(~)
    Y = {};

    N = 1001;

    y = cell(1, N);
    for i = 1 : N
        y{i} = {i - 1};
    end
    Y = horzcat(Y, y);

    N = 100;

    y = cell(1, N);
    for i = 1 : N
        y{i} = {randi(1e9)};
    end
    Y = horzcat(Y, y);
end

