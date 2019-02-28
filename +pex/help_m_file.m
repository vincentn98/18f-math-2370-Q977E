function y = help_m_file(x)
    assert(ischar(x) && ~isempty(x), 'Expected input x to be non-empty char.');
    [p, b, e] = fileparts(x);
    assert(strcmp(e, '.m'), 'Input must be a .m file.');
    assert(exist(x, 'file') > 0, 'File %s does not exist.', x);

    if isempty(p)
        p = pwd();
    end

    here = pwd();
    cd(p);
    try
        y = help(b);
    catch
        y = '';
    end
    cd(here);
end

