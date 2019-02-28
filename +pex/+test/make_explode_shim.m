
function make_explode_shim(X)
    % make_explode_shim: Make a counting shim in this directory.
    %     Signature: make_explode_shim(X)
    %     Input X: The name of the function to shim.
    %
    % This will write an m-file in the current directory which explodes every time it is called.
    %
    [~, B, ~] = fileparts(X);
    B_m = [B, '.m'];
    cwd = pwd();
    cwd_B_m = fullfile(cwd, B_m);
    assert(exist(cwd_B_m, 'file') == 0, 'A file named %s already exists in %s!', B_m, cwd);

    fid = fopen(B_m, 'w');
    cu = onCleanup(@() fclose(fid));

    fprintf(fid, 'function varargout = %s(varargin)\n', B);
    fprintf(fid, '    error(''%s:boom'', ''Cannot call the %s function!'')\n', B, B);
    fprintf(fid, 'end\n');
end

