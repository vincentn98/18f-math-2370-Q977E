function [q, r] = euclid_G(n, d)
    % euclid_G: Compute quotient q and remainder r of the Euclidean division of n by d.
    %     Signature: [q, r] = euclid_G(n, d)
    %     Input n: Dividend, a natural.
    %     Input d: Divisor, a positive natural.
    %     Output q: Quotient, a natural.
    %     Output r: Remainder, a natural satisfying 0 <= r < d
    %
    assert(isN(n),'euclid_G:natural_n','Dividend must be natural.');
    assert(isN(d),'euclid_G:natural_d','Divisor must be natural.');
    assert(d~=0,'euclid_G:div_by_zero','Cannot divide by zero.');
    [q, r] = euclid_G_hat(n, d, 0);
end