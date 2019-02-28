function y = find(x)
    pex.path.is_ok_A();
    if nargin < 1
        x = pwd();
    else
        x = pex.path.to_system_path(x);
    end
    [name, isdir] = foo(x);
    y = containers.Map(name, isdir);
end

function [name, isdir] = foo(x)
    D = dir(x);
    N = 0;
    for i = 1 : numel(D)
        switch D(i).name
            case '.'
            case '..'
            otherwise
                N = N + 1;
        end
    end
    name = cell(1, N);
    isdir = cell(1, N);
    n = 1;
    for i = 1 : numel(D)
        switch D(i).name
            case '.'
            case '..'
            otherwise
                name{n} = pex.path(fullfile(x, D(i).name));
                isdir{n} = D(i).isdir;
                n = n + 1;
        end
    end
    for i = 1 : numel(D)
        switch D(i).name
            case '.'
            case '..'
            otherwise
                if D(i).isdir
                    [namei, isdiri] = foo(fullfile(x, D(i).name));
                    name = horzcat(name, namei); %#ok
                    isdir = horzcat(isdir, isdiri); %#ok
                end
        end
    end
end
