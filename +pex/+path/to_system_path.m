function y = to_system_path(x)
    pex.is_nonempty_char_A(x);
    pex.path.is_ok_A();
    if ~strcmp(x(1), '#')
        x = pex.path(x);
    end
    assert(strcmp(x(1), '#'), 'Expected input to start with #.');
    x = x(2:end);
    assert(~isempty(x), 'Expected input to be non-empty after the #.');
    y = fullfile(pex.path.system_root(), x);
end
