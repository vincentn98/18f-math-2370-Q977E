function y = isodd(n)
    % isodd: Determines if n is odd.
    %     Signature: y = isodd(n)
    %     Input n: Any value whatsoever.
    %     Output y: True when n is natural and not even, false otherwise.
    %
    %
    y = isN(n) && ~iseven(n);
end
