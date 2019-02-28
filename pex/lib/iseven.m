function y = iseven(n)
    % iseven: Determines if n is even.
    %     Signature: y = iseven(n)
    %     Input n: Any value whatsoever.
    %     Output y: True when n is natural and has remainder 0 when divided by 2, false otherwise.
    %
    %
    y = isN(n) && mod (n,2) == 0;
end

