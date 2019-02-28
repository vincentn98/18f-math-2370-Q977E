function y = isN(x)
    % isN: Determines if x is a natural number.
    %     Signature: y = isN(x)
    %     Input x: Any value whatsoever.
    %     Output y: True when x is an integer and non-negative, false otherwise.
    %
    % 
    y = isZ(x) && ((x >= 0));
    
end
