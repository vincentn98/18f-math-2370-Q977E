function y = isZ(x)
    % isZ: Determines if x is an integer.
    %     Signature: y = isZ(x)
    %     Input x: Any value whatsoever.
    %     Output y: True when x is real and equal to its own floor, false otherwise.
    %
    % 
    y = isR(x) && (x == floor(x));
    
end
