function y = isR(x)
    % isR: Determines if x is real.
    %     Signature: y = isR(x)
    %     Input x: Any value whatsoever.
    %     Output y: True when x is numeric and scalar, false otherwise.
    %
    % 
    y = (isnumeric(x)) && (isscalar(x));
    
end
