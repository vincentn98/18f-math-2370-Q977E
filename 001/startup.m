
if isempty(which('pex.setup'))
    p = pwd();
    N = 200;
    for i = 1 : 200
        assert(i < N/2, 'I could not find the .git directory anywhere!');
        git = fullfile(p, '.git');
        if exist(git, 'dir')
            break
        end
        [p, ~, ~] = fileparts(p);
    end
    addpath(p);
end
pex.setup();

