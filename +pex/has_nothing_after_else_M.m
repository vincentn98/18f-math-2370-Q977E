function y = has_nothing_after_else_M(x)
    pex.path.is_ok_A();
    pex.is_nonempty_char_A(x);
    w = pex.path.witch_A(x);

    y = '';

    t = mtree(w, '-file');
    n = t.mtfind('Kind', 'ELSE');
    L = n.lineno;
    for i = 1 : numel(L)
        if sum(t.lineno == L(i)) > 1
            y = sprintf('In file `%s` line `%d`, there should be nothing on the same line after the `else` keyword. You must start a new line and indent.', x, L(i));
            return
        end
    end
end

