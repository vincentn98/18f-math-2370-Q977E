function y = is_function_M(x)
    y = '';
    pex.path.exist_A(x);
    try
        nargin(x);
    catch me
        if strcmp(me.identifier, 'MATLAB:nargin:isScript')
            y = sprintf('Expected `%s` to be a function, but it is a script.', x);
        else
            rethrow(me);
        end
    end
end

