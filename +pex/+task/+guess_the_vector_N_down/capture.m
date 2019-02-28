
function S = capture(X, args0)

    assert(pex.is_function(X), 'Expected %s.m to be a function file, but it is either a script or empty or missing.', X);

    if nargin < 2
        args0 = pex.task.(X).args0(X);
    end

    N = numel(args0);
    correct = cell(1, N);
    repr0 = cell(1, N);
    for i = 1 : N
        args0i = args0{i};
        if isempty(args0i), continue; end
        n = args0i{1};
        ok = isrow(n) && isnumeric(n) && all(floor(n) == n);
        if ~ok, continue; end
        for j = 2 : numel(args0i)
            m = args0i{j};
            ok = isrow(m) && isnumeric(m) && all(floor(m) == m);
            if ~ok, break, end
        end
        if ~ok, continue; end
                
        correct{i} = n;

        args0{i}{1} = make_oracle(n);

        r0 = sprintf('make_oracle(%s)', pex.join_args({n}));
        r1 = pex.join_args(args0i(2:end));
        if isempty(r1)
            r = r0;
        else
            r = [r0, ', ', r1];
        end
        repr0{i} = ['(', r, ')'];
    end

    here = pwd();

    path_to_task = pex.path.to_system_path(pex.task.(X).path);
    path_to_pex_root = pex.path.system_root();

    tdir = tempname();
    mkdir(tdir);
    cleaner = @() {cd(here), addpath(path_to_pex_root), rmpath(tdir), rmdir(tdir, 's'), rmpath(path_to_task), pex.setup()};
    cu = onCleanup(cleaner);
    addpath(path_to_task);
    addpath(tdir);
    cd(tdir);

    X_m = pex.path.to_system_path([fullfile(path_to_task, X), '.m']);
    copyfile(X_m, tdir);

    [args1, exception] = pex.test.capture_output(X, args0);

    [repr0_generic, repr1] = pex.test.capture_repr(args0, args1, exception);
    
    for i = 1 : N
        if ~isempty(correct{i}), continue; end
        repr0{i} = repr0_generic{i};
    end

    guess = cell(1, N);
    for i = 1 : N
        if isempty(correct{i}), continue; end
        guess{i} = args0{i}{1}('oracle-count');
    end

    for i = 1 : N
        if isempty(correct{i}), continue; end
        args0{i}{1} = make_oracle(correct{i});
    end
    count = pex.test.capture_count(X, args0, exception);

    S = struct('args0', {args0}, 'exception', {exception}, 'args1', {args1}, 'repr0', {repr0}, 'repr1', {repr1}, 'count', {count}, 'guess', {guess}, 'correct', {correct});

    for i = 1 : N
        S.args0{i}{1} = correct{i};
    end
end

