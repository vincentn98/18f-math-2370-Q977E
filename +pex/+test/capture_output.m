
function [args1, exception] = capture_output(X, args0)

    assert(pex.is_function(X), 'Expected %s.m to be a function file, but it is either a script or empty or missing.', X);

    D = pex.task.(X).dependence();

    explode = D.explode;

    for i = 1 : numel(explode)
        pex.test.make_explode_shim(explode{i});
        assert(exist([explode{i}, '.m'], 'file') > 0, 'This should never happen.');
    end

    f = str2func(X);
    k = nargout(f);

    n = numel(args0);
    args1 = cell(1, n);
    exception = cell(1, n);
    for i = 1 : n
        args1i = cell(1, k);
        try
            [args1i{:}] = f(args0{i}{:});
            args1{i} = args1i;
        catch exc
            %if strcmp(exc.identifier, 'MATLAB:UndefinedFunction'), rethrow(exc); end
            if strcmp(exc.identifier, 'MATLAB:cellRefFromNonCell')
                %args0'
                %k
                %i
                %args0{i}
                rethrow(exc); 
            end
            exci = struct('identifier', exc.identifier, 'message', exc.message);
            exception{i} = exci;
        end 
    end

    for i = 1 : numel(explode)
        delete([explode{i}, '.m']);
    end
end

