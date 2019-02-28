function y = fopen_(x, mode)
    pex.is_nonempty_char_A(x);
    y = fopen(x, mode);
    if y < 0
        y = fopen(pex.path.witch_A(x), mode);
    end
end
