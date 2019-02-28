function y = witch_A(x)
    pex.path.is_ok_A();
    y = pex.path.witch(x);
    assert(~isempty(y), 'Expected to be able to resolve `%s` to an m-file.', x);
    [~, ~, e] = fileparts(y);
    assert(strcmp(e, '.m'), 'Expected `%s` to resolve to a file with extension .m, found `%s`.', x, y);
end
