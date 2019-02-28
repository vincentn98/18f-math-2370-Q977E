function b = count_div_by_2(X)
    W = pex.path.witch_A(X);

    T = mtree(W, '-file');
    n = T.mtfind('Kind', 'DIV');

    b = 0;

    for j = n.indices
        m = n.select(j);

        x = m.Right;
        if strcmp(x.kind, 'INT') && strcmp(x.string, '2')
            b = b + 1;
            continue
        end
    end
end

