
function S = capture(X, varargin)

    assert(pex.is_function(X), 'Expected %s.m to be a function file, but it is either a script or empty or missing.', X);

    x = ['pex.task.', X, '.capture'];
    if isempty(which(x))
        S = capture_generic(X, varargin{:});
    else
        S = pex.task.(X).capture(X, varargin{:});
    end

    args0 = S.args0;
    N = numel(args0);

    F = fieldnames(S);

    for i = 1 : numel(F)
        X = S.(F{i});
        assert(iscell(X) || isstruct(X), 'Expected S.%s be cell or struct, but it is %s.', F{i}, class(X));
        if iscell(X)
            M = numel(X);
            assert(N == M, 'Expected cell S.%s to have %d elements, but it has %d.', F{i}, N, M);
        else
            G = fieldnames(X);
            for j = 1 : numel(G)
                Y = X.(G{j});
                assert(iscell(Y), 'Expected S.%s.%s to be cell, but it is %s.', F{i}, G{j}, class(Y));
                M = numel(Y);
                assert(N == M, 'Expected S.%s.%s to have %d elements, but it has %d.', F{i}, G{j}, N, M);
            end
        end
    end

    repr0 = S.repr0;
    repr1 = S.repr1;
    exception = S.exception;
    
    for i = 1 : N
        r0i = repr0{i};
        assert(ischar(r0i), 'Expected S.repr0{%d} to be char, not %s.', i, class(r0i));
        if ~isempty(exception{i}), continue; end
        r1i = repr1{i};
        assert(ischar(r1i), 'Expected S.repr1{%d} to be char, not %s.', i, class(r1i));
    end
end

function S = capture_generic(X, args0)
    pex.setup();

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

    if nargin < 2
        args0 = pex.task.(X).args0(X);
    end

    [args1, exception] = pex.test.capture_output(X, args0);

    [repr0, repr1] = pex.test.capture_repr(args0, args1, exception);

    count = pex.test.capture_count(X, args0, exception);

    S = struct('args0', {args0}, 'exception', {exception}, 'args1', {args1}, 'repr0', {repr0}, 'repr1', {repr1}, 'count', {count});
end

