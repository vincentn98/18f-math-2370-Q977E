function y = cwd()
    T = pex.path.system_root();
    P = pwd();
    assert(strfind(P, T) == 1, 'You dont''t appear to be in a pex dir.');
    y = ['#', P(numel(T) + 2 : end)];
end
