function [q, r] = euclid_2(n, d)
    % euclid_2: Euclidean division, quickly.
    %     Signature: [q, r] = euclid_2(n, d)
    %     Input n: Dividend, a natural.
    %     Input d: Divisor, a positive natural.
    %     Output q: Quotient, a natural.
    %     Output r: Remainder, a natural satisfying 0 <= r < d
    %
    assert(isN(n),'euclid_2:natural_n','Input n must be natural.');
    assert(isN(d),'euclid_2:natural_d','Input d must be natural.');
    assert(d>0,'euclid_2:positive_d','Input d must be positive.');
    
    [d0, s0] = euclid_2_up(n, d);
    [q, r] = euclid_2_down(n, d0, s0);
end