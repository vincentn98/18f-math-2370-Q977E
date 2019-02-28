function y = path(x)
    pex.is_nonempty_char_A(x);
    if strcmp(x(1), '#')
        y = x;
    else 
        p = pex.path.system_root();
        if strfind(x, p) == 1
            y = ['#', x(numel(p) + 2 : end)];
        else
            c = pex.path.cwd();
            if strcmp(c, '#')
                y = [c, x];
            else
                y = fullfile(pex.path.cwd(), x);
            end
        end
    end
end
