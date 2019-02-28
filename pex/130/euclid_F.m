function [q, r] = euclid_F(n, d)
    % euclid_F: Compute quotient q and remainder r of the Euclidean division of n by d.
    %     Signature: [q, r] = euclid_F(n, d)
    %     Input n: Dividend, a natural.
    %     Input d: Divisor, a positive natural.
    %     Output q: Quotient, a natural.
    %     Output r: Remainder, a natural satisfying 0 <= r < d
    %
    assert(isN(n),'euclid_F:natural_n','Dividend must be natural.');
    assert(isN(d),'euclid_F:natural_d','Divisor must be natural.');
    assert(d~=0,'euclid_F:div_by_zero','Cannot divide by zero.');
    if n < d
        q = 0;
        r = n;
    else
        [q, r] = euclid_F(n-d,d);
        q = q+1;
    end
end