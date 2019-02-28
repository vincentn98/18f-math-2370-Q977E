
function count = capture_count(X, args0, exception)

    assert(pex.is_function(X), 'Expected %s.m to be a function file, but it is either a script or empty or missing.', X);

    D = pex.task.(X).dependence();

    C = D.count;
    K = numel(C);

    N = numel(args0);

    % The counting shims.
    reset = cell(1, K);
    value = cell(1, K);
    count = cell(1, K);
    funs = cell(1, K);
    for k = 1 : K
        [r, v] = pex.test.make_count_shim(C{k});
        assert(exist([C{k}, '.m'], 'file') > 0, 'This should never happen.');
        reset{k} = r;
        value{k} = v;
        funs{k} = str2func(C{k});
        count{k} = cell(1, N);
    end

    % The function to capture counts from.
    f = str2func(X);

    for n = 1 : N
        if ~isempty(exception{n}), continue; end
        for k = 1 : K, funs{k}(reset{k}); end
        f(args0{n}{:});
        for k = 1 : K, count{k}{n} = funs{k}(value{k}); end
    end

    for k = 1 : K
        delete([C{k}, '.m']);
    end

    count = cell2struct(count, C, 2);
end

