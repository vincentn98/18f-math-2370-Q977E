function y = search_upward_for_git(x)
    pex.is_nonempty_char_A(x);
    y = x;
    for i = 1 : 100
        git = fullfile(y, '.git');
        if exist(git, 'dir')
            return
        end
        [y, ~, ~] = fileparts(y);
    end
    y = '';
end

