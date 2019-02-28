function y = join_args(args)
    y = '';
    function meow(x, varargin)
        y = [y, sprintf(x, varargin{:})];
    end
    f = @meow;
    N = numel(args);
    for i = 1 : N
        start(f, args{i});
        if i < N, f(', '); end
    end
end

function y = is_term(X)
    y = false;
    if ischar(X)
        y = true;
    elseif isscalar(X)
        switch class(X)
            case {'double', 'logical', 'function_handle'}
                y = true;
        end
    end
end

function start(f, X)
    if is_term(X)
        term_out(f, X);
    else
        recurse_out(f, X);
    end
end

function y = term_repr(X)
    switch class(X)
        case 'char'
            X = strrep(X, '''', '''''');
            X = regexprep(X, '[\n\r]', ' ');
            y = ['''', X, ''''];
        case 'double'
            if X == floor(X)
                y = sprintf('%d', X);
            else
                y = sprintf('%f', X);
            end
        case 'logical'
            if X
                y = 'true';
            else
                y = 'false';
            end
        case 'function_handle'
            y = func2str(X);
        otherwise
            error('Don''t know what do to with a %s.', class(X));
    end
end

function term_out(f, X)
    f(term_repr(X));
end

function recurse_out(f, X)
    switch class(X)
        case 'cell'
            cell_out(f, X);
        case {'double', 'logical'}
            array_out(f, X);
        case 'struct'
            struct_out(f, X);
        otherwise
            error('Don''t know what to do with a %s.', class(X));
    end
end

function array_out(f, X)
    assert(isempty(X) || isvector(X), 'Must be empty or vector.');
    f('[');
    N = numel(X);
    for i = 1 : N
        term_out(f, X(i));
        if i < N, f(', '); end
    end
    f(']');
end

function cell_out(f, X)
    assert(isempty(X) || isvector(X), 'Must be empty or vector.');
    f('{');
    N = numel(X);
    for i = 1 : N
        start(f, X{i});
        if i < N, f(', '); end
    end
    f('}');
end

function struct_out(f, ~)
    f('struct(...)');
end

