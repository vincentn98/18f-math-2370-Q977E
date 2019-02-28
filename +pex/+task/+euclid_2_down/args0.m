function Y = args0(X)
    Y = pex.test.args0.N_N(X, 50, 50, 500);
    N = length(Y);
    for i = 1 : N
        args0i = Y{i};
        try
            n = args0i{1};
            d = args0i{2};
            [d0, s0] = euclid_2_up(n, d);
            Y{i} = {n, d0, s0};
        catch
            Y{i} = {n, d, randi(1e9)};
        end
    end
end
