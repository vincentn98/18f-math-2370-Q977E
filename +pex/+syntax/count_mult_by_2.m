function b = count_mult_by_2(X)
    W = pex.path.witch_A(X);

    T = mtree(W, '-file');
    n = T.mtfind('Kind', 'MUL');

    b = 0;

    for j = n.indices
        m = n.select(j);

        x = m.Left;
        if strcmp(x.kind, 'INT') && strcmp(x.string, '2')
            b = b + 1;
            continue
        end

        x = m.Right;
        if strcmp(x.kind, 'INT') && strcmp(x.string, '2')
            b = b + 1;
            continue
        end
    end
end

