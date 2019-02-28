
function [reset, value] = make_count_shim(X)
    % make_count_shim: Make a counting shim in this directory.
    %     Signature: [reset, value] = make_count_shim(X)
    %     Input X: The name of the function to shim.
    %     Output reset: The magic input to reset the counter.
    %     Output value: The magic input to return the counter's value.
    %
    % This will write an m-file in the current directory to shim the function `X`.
    %
    % Warning: In here be dragons.
    %
    here = pwd();
    P_X_m = which(X);
    assert(~isempty(P_X_m), 'Expected to be able to find %s.', X);
    assert(exist(P_X_m, 'file') > 0, 'Expected file "%s" to exist. Note: built-ins like `mod` cannot be shimmed.', P_X_m);
    [P, B, E] = fileparts(P_X_m);
    assert(strcmp(E, '.m'), 'Expected extension .m, found %s: %s', E, P_X_m);
    assert(~strcmp(here, P), 'The file to shim (%s) is in this directory (%s)!', X, here);
    B_m = [B, '.m'];

    cwd = pwd();
    cwd_B_m = fullfile(cwd, B_m);
    assert(exist(cwd_B_m, 'file') == 0, 'A file named %s already exists in %s!', B_m, cwd);

    fid = fopen(B_m, 'w');
    cu = onCleanup(@() fclose(fid));

    counter = matlab.lang.makeValidName(tempname('tmp'));
    actual = matlab.lang.makeValidName(tempname('tmp'));
    value = matlab.lang.makeValidName(tempname('tmp'));
    reset = matlab.lang.makeValidName(tempname('tmp'));

    fprintf(fid, 'function [y, varargout] = %s(x, varargin)\n', B);
    fprintf(fid, '    %% There is some ugly magic going on in this file.\n');
    fprintf(fid, '    %% We want to be able to count how many times %s is called.\n', B);
    fprintf(fid, '    %%     1. So we create this shim also called %s, but in a new directory.\n', B);
    fprintf(fid, '    %%     2. This shim in turn calls the real %s.\n', B);
    fprintf(fid, '    %%     3. But to make it work requires meddling with the path, and a few global variables.\n');
    fprintf(fid, '    %%     4. The globals have randomized names to avoid collisions with existing variable names,\n');
    fprintf(fid, '    %%        and to make them impossible to guess.\n');
    fprintf(fid, '\n');
    fprintf(fid, '    %% This global keeps track of how many times %s has been called.\n', B);
    fprintf(fid, '    global %s;\n', counter);
    fprintf(fid, '    if isempty(%s)\n', counter);
    fprintf(fid, '        %s = 0;\n', counter);
    fprintf(fid, '    end\n');
    fprintf(fid, '\n');
    fprintf(fid, '    %% This global keeps a `function_handle` to the real %s.\n', B);
    fprintf(fid, '    global %s;\n', actual);
    fprintf(fid, '    if isempty(%s)\n', actual);
    fprintf(fid, '        B = ''%s'';\n', B);
    fprintf(fid, '        P = ''%s'';\n', P);
    fprintf(fid, '        here = pwd();\n');
    fprintf(fid, '        cd(P);\n');
    fprintf(fid, '        %s = str2func(B);\n', actual);
    fprintf(fid, '        cd(here);\n');
    fprintf(fid, '    end\n');
    fprintf(fid, '\n');
    fprintf(fid, '    %% If this argument is provided then the counter will be reset.\n');
    fprintf(fid, '    reset = ''%s'';\n', reset);
    fprintf(fid, '\n');
    fprintf(fid, '    %% If this argument is provided then value of the counter will be returned.\n');
    fprintf(fid, '    value = ''%s'';\n', value);
    fprintf(fid, '\n');
    fprintf(fid, '    %% Otherwise this function will pass the args on to the real %s, and return the results.\n', B);
    fprintf(fid, '\n');
    fprintf(fid, '    if nargin == 1 && ischar(x) && strcmp(x, reset)\n');
    fprintf(fid, '        %s = 0;\n', counter);
    fprintf(fid, '    elseif nargin == 1 && ischar(x) && strcmp(x, value)\n');
    fprintf(fid, '        y = %s;\n', counter);
    fprintf(fid, '    else\n');
    fprintf(fid, '        %s = %s + 1;\n', counter, counter);
    fprintf(fid, '        N = max(1, nargout);\n');
    fprintf(fid, '        args1 = cell(1, N);\n');
    fprintf(fid, '        [args1{:}] = %s(x, varargin{:});\n', actual);
    fprintf(fid, '        y = args1{1};\n');
    fprintf(fid, '        for i = 2 : N\n');
    fprintf(fid, '            varargout{i - 1} = args1{i};\n');
    fprintf(fid, '        end\n');
    fprintf(fid, '    end\n');
    fprintf(fid, 'end\n');
end

