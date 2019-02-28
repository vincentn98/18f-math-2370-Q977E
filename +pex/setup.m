function y = setup()
    com.mathworks.services.Prefs.setStringPref('EditorMFunctionIndentType', 'AllFunctionIndent');
    com.mathworks.services.Prefs.setIntegerPref('EditorSpacesPerIndent', 4);

    root0 = matlabroot();
    root1 = pex.path.system_root();

    addpath(root1);

    P = strsplit(path(), pathsep());

    for i = 1 : numel(P)
        if pex.starts_with(P{i}, root0) || pex.starts_with(P{i}, root1), continue; end
        rmpath(P{i});
    end

    here = pwd();
    cu = onCleanup(@() cd(here));
    
    cd(fullfile(root1, '+pex', '+task'));

    d = dir();
    for i = 1 : numel(d)
        if ~d(i).isdir, continue; end
        if ~strcmp(d(i).name(1), '+'), continue; end
        pX = d(i).name;
        X = pX(2:end);
        if exist(fullfile(pX, 'path.m'), 'file') == 0, continue; end
        addpath(pex.path.to_system_path(pex.task.(X).path));
    end

    y = true;
end
