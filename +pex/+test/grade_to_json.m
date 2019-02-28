function grade_to_json(X, G)
    if nargin < 2
        [P, S] = pex.test.grade();
        G = {P, S};
    end
    fid = fopen(X, 'w');
    cu = onCleanup(@() fclose(fid));

    json(fid, G); 
end

function tprintf(t, fid, x, varargin)
    for i = 1 : t, fprintf(fid, '    '); end
    fprintf(fid, x, varargin{:});
end

function json(fid, X)
    t = 0;
    tprintf(t, fid, '{\n');
    t = t + 1;
    nX = numel(X);
    for i = 1 : nX
        x = strsplit(X(i).Name, '/');
        [T, x] = x{:};
        if strcmp(T, 'pex.test.test_manifest')
            x = 'pex/manifest';
        else
            x = strsplit(x, '__');
            [~, task, suffix] = x{:};
            p = pex.task.(task).path();
            %p = '#me/yow';
            p = p(2:end);
            x = fullfile(p, task, suffix);
        end
        tprintf(t, fid, '"%s":\n', x);
        tprintf(t, fid, '{\n');
        t = t + 1;
        tprintf(t, fid, '"%s": %f,\n', 'duration', X(i).Duration);
        tprintf(t, fid, '"%s": %d,\n', 'failed', X(i).Failed);
        tprintf(t, fid, '"%s": %d,\n', 'incomplete', X(i).Incomplete);
        tprintf(t, fid, '"%s": %d\n', 'passed', X(i).Passed);
        t = t - 1;
        if i == nX, e = '}\n'; else, e = '},\n'; end
        tprintf(t, fid, e);
    end
    t = t - 1;
    tprintf(t, fid, '}\n');
end

