function y = is_ok_M()
    y = '';

    root0 = matlabroot();
    root1 = pex.path.system_root();

    P = strsplit(path(), pathsep());

    for i = 1 : numel(P)
        if pex.starts_with(P{i}, root0) || pex.starts_with(P{i}, root1) || pex.starts_with(P{i}, tempdir())
            continue
        end
        y = sprintf('Unexpected path element: %s', P{i});
        return
    end
end
