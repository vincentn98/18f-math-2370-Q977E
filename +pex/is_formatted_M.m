
function b = is_formatted_M(X)
    pex.path.is_ok_A();
    pex.path.witch_A(X);

    s0 = pex.trim_file(X);
    if isempty(strtrim(s0))
        b = sprintf('File `%s` is empty.', X);
        return
    end

    b = pex.is_ok_text_file_M(X);
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

    b = pex.has_logical_eq_abuse_M(X);
end

