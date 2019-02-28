function y = fopen_A(x, mode)
    y = pex.path.fopen_(x, mode);
    assert(y > 0, 'File `%s` does not exist and could not be resolved.');
end
