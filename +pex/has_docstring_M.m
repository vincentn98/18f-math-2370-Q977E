function y = has_docstring_M(x)
    % has_docstring: Determines if a MATLAB function has a docstring.
    %     Signature: y = has_docstring(x)
    %     Input x: A character string which names a MATLAB function.
    %     Output y: True when x has a docstring, false otherwise (even when x does not resolve to a function).
    pex.path.is_ok_A();
    pex.is_function_A(x);

    y = '';
    h = help(x);
    if isempty(h)
        y = sprintf('Function `%s` docstring is empty.', x);
    else
        t = regexp(h, '\s+', 'split');
        if numel(t) >= 4
            m = {x, 'is', 'a', 'function.'};
            if all(strcmp(m, t(1:4)))
                y = sprintf('Function `%s` docstring is *probably* empty.', x);
            end
        end
    end
end

