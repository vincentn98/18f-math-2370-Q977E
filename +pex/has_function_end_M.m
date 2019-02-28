function y = has_function_end_M(x)
    pex.path.is_ok_A();
    y = '';
    w = pex.indent_m_file(x);
    L = strsplit(w, '\n');
    for i = numel(L) : -1 : 1
        if ~isempty(L{i})
            break
        end
    end
    if ~strcmp(L{i}, 'end')
        y = sprintf('File of function `%s` does not have an `end` keyword paired with `function` keyword, found `%s`.', x, L{i});
    end
end

