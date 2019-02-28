
function b = is_ready_to_test_M(X)
    pex.path.is_ok_A();
    pex.path.witch_A(X);

    b = pex.is_ok_text_file_M(X);
    if ~isempty(b)
        return
    end

    s0 = pex.trim_file(X);
    if isempty(strtrim(s0))
        b = sprintf('File `%s` is empty.', X);
        return
    end

    b = pex.has_warnings_M(X);
    if ~isempty(b)
        return
    end

    b = pex.is_indented_M(X);
    if ~isempty(b)
        return
    end

    b = pex.has_docstring_M(X);
    if ~isempty(b)
        return
    end

    b = pex.has_formatted_docstring_M(X);
    if ~isempty(b)
        return
    end

    b = pex.has_nothing_after_else_M(X);
    if ~isempty(b)
        return
    end

    b = pex.has_function_end_M(X);
    if ~isempty(b)
        return
    end

    D = pex.task.(X).dependence();

    call = D.call;
    nocall = D.nocall;
    recursive = D.recursive;
    syntax = D.syntax;
    nosyntax = D.nosyntax;

    for i = 1 : numel(call)
        Y = call{i};
        if ~pex.is_called(X, Y)
            b = sprintf('Expected `%s` to call `%s`.', X, Y);
            return
        end
    end

    nocall0 = horzcat({'disp', 'fprintf', 'eval'}, nocall);

    for i = 1 : numel(nocall0)
        Y = nocall0{i};
        if pex.is_called(X, Y)
            b = sprintf('Expected `%s` to not call `%s`.', X, Y);
            return
        end
    end

    for i = 1 : numel(syntax)
        Y = syntax{i};
        if ~pex.has_syntax(X, Y)
            b = sprintf('Expected `%s` to use syntax `%s`.', X, Y);
            return
        end
    end

    for i = 1 : numel(nosyntax)
        Y = nosyntax{i};
        if pex.has_syntax(X, Y)
            b = sprintf('Expected `%s` to not use syntax `%s`.', X, Y);
            return
        end
    end

    if ~isempty(recursive)
        if recursive 
            if ~pex.is_recursive(X)
                b = sprintf('Expected `%s` to be recursive.', X);
                return
            end
        else
            if pex.is_recursive(X)
                b = sprintf('Expected `%s` to not be recursive.', X);
                return
            end
        end
    end

    b = pex.has_logical_eq_abuse_M(X);
end

