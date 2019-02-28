function b = count_reciprocal(X)
    W = pex.path.witch_A(X);

    T = mtree(W, '-file');
    n = T.mtfind('Kind', 'DIV');

    b = 0;

    for j = n.indices
        m = n.select(j);

        x = m.Left;
        if strcmp(x.kind, 'INT') && strcmp(x.string, '1')
            b = b + 1;
            continue
        end
    end
end

