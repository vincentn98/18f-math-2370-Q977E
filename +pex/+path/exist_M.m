function y = exist_M(x)
    pex.is_nonempty_char(x);
    pex.path.is_ok_A();

    y = '';
    if exist(x, 'file') > 0
        return
    end

    w = pex.path.witch(x);
    if ~isempty(w)
        return
    end

    y = sprintf('File `%s` does not exist/resolve.', x);
end
