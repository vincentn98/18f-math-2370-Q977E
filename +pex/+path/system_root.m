function [p, b, m] = system_root()
    p0 = pwd();
    p1 = which('pex.path.system_root');

    g0 = pex.path.search_upward_for_git(p0);
    g1 = pex.path.search_upward_for_git(p1);

    e0 = isempty(g0);
    e1 = isempty(g1);

    if e0 && e1
        y0 = 'Could not find .git directory from either:';
        y1 = ['    ', p0];
        y2 = ['    ', p1];
        y = strjoin({y0, y1, y2}, '\n');
        error(y);
    elseif ~e0 && ~e1 && ~strcmp(g0, g1)
        y0 = 'Two different .git directories were resolved:';
        y1 = ['    ', g0];
        y2 = ['    ', g1];
        y = strjoin({y0, y1, y2}, '\n');
        error(y);
    elseif ~e0
        g = g0;
    else
        g = g1;
    end

    [p, b, m] = pbm(g);
end

function [p, b, m] = pbm(p)
    [~, b, ~] = fileparts(p);
    m = regexp(b, pex.path.repo_regexp_exact(), 'names');
    assert(numel(m) == 1, sprintf('I found .git in %s, but parent directory %s did not look like a math 2370 directory: giving up.', p, b));
end

