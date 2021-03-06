
% This file is automatically generated.
function x = test()
    x = functiontests(localfunctions());
end

function test__rename__renamed(t)
    MALTAB = 'MALTAB.md';
    MATLAB = strrep(MALTAB, 'MALTAB', 'MATLAB');
   
    path_to_original_MALTAB = pex.path.to_system_path('#+pex/+task/+rename/MALTAB.md');

    path_to_current_MALTAB = pex.path.to_system_path(fullfile(pex.task.rename.path, MALTAB));
    path_to_current_MATLAB = pex.path.to_system_path(fullfile(pex.task.rename.path, MATLAB));

    function initialize()
        copyfile(path_to_original_MALTAB, path_to_current_MALTAB, 'f');
    end
 
    current_MALTAB_exist = (exist(path_to_current_MALTAB, 'file') > 0);
    current_MATLAB_exist = (exist(path_to_current_MATLAB, 'file') > 0);

    verifyFalse(t, current_MALTAB_exist, sprintf('The file %s should not exist.', MALTAB));
    verifyTrue(t, current_MATLAB_exist, sprintf('The file %s should exist.', MATLAB));

    contents_of_original_MALTAB = pex.trim_file(path_to_original_MALTAB);
    
    if current_MALTAB_exist
        contents_of_current_MALTAB = pex.trim_file(path_to_current_MALTAB);
        ok = strcmp(contents_of_original_MALTAB, contents_of_current_MALTAB);
        verifyTrue(t, ok, sprintf('The file %s exists, yet does not contain the original contents. It will be re-initialized.', MALTAB));
        if ~ok, initialize(); end
    end

    if current_MATLAB_exist
        contents_of_current_MATLAB = pex.trim_file(path_to_current_MATLAB);
        ok = strcmp(contents_of_original_MALTAB, contents_of_current_MATLAB);
        verifyTrue(t, ok, sprintf('The file %s exists, yet does not contain the contents of the original %s. %s will be deleted.', MATLAB, MALTAB, MATLAB));
        if ~ok 
            delete(path_to_current_MATLAB); 
            current_MATLAB_exist = false;
        end
    end

    ok = (current_MALTAB_exist || current_MATLAB_exist);
    verifyTrue(t, ok, sprintf('Neither %s nor %s exists. Your problems won''t go away by deleting them. %s will be re-initialized.', MALTAB, MATLAB, MALTAB));
    if ~ok
        initialize();
    end
end

