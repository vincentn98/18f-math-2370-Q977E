function y = is_called_M(file, func)
    pex.path.is_ok_A();
    pex.is_ok_text_file_A(file);
    pex.is_nonempty_char_A(func);

    [P, B, E] = fileparts(file);
    assert(isempty(E) || strcmp(E, '.m'), 'Expected file argument to have no extension or .m extension: %s', file);
    file_m = fullfile(P, [B, '.m']);

    [P, B, E] = fileparts(func);
    assert(isempty(P) && isempty(E) && strcmp(func, B), 'Expected func argument to be an identifier, not a path %s', func);

    file1 = '';
    if exist(file_m, 'file') > 0
        file1 = file_m;
    else 
        file0 = pex.path.to_system_path(file_m);
        if exist(file0, 'file') > 0
            file1 = file0;
        else
            file0 = which(file_m);
            if ~isempty(file0) && exist(file0, 'file')
                file1 = file0;
            end
        end
    end
    assert(~isempty(file1), 'Could not find file argument: %s.', file);

    X = getcallinfo(file1);

    for i = 1 : numel(X)
        if any(strcmp(X(i).calls.fcnCalls.names, func)) || any(strcmp(X(i).calls.innerCalls.names, func))
            y = '';
            return
        end
    end

    y = sprintf('File `%s`: function `%s` is never called.', file, func);
end

