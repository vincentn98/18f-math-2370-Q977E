function b = count_subtract_1(X)
    W = pex.path.witch_A(X);

    T = mtree(W, '-file');
    n = T.mtfind('Kind', 'MINUS');

    b = 0;

    for j = n.indices
        m = n.select(j);

        x = m.Right;
        if strcmp(x.kind, 'INT') && strcmp(x.string, '1')
            b = b + 1;
            continue
        end
    end
end

