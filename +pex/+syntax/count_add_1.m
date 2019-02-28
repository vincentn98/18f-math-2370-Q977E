function b = count_add_1(X)
    W = pex.path.witch_A(X);

    T = mtree(W, '-file');
    n = T.mtfind('Kind', 'PLUS');

    b = 0;

    for j = n.indices
        m = n.select(j);

        x = m.Left;
        if strcmp(x.kind, 'INT') && strcmp(x.string, '1')
            b = b + 1;
            continue
        end

        x = m.Right;
        if strcmp(x.kind, 'INT') && strcmp(x.string, '1')
            b = b + 1;
            continue
        end
    end
end

