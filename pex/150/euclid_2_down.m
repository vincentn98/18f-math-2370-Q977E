function [q, r] = euclid_2_down(n, d, s)
    % euclid_2_down: The down phase of euclid_2.
    %     Signature: [q, r] = euclid_2_down(n, d, s)
    %     Input n: Dividend, a natural.
    %     Input d: Divisor, a positive natural.
    %     Input s: Scale.
    %     Output q: Quotient, a natural.
    %     Output r: Remainder, a natural.
    %
    assert(isN(n),'euclid_2_down:natural_n','Input n must be natural.');
    assert(isN(d),'euclid_2_down:natural_d','Input d must be natural.');
    assert(isN(s),'euclid_2_down:natural_s','Input s must be natural.');
    
    [q, r] = aux(n, d, s, 0);
end

function [q, r] = aux(n, d, s, q0)
    if s == 0
        q = q0;
        r = n;
    elseif n < d
        [q, r] = aux(n, floor(d/2), floor(s/2), q0);
    else
        [q, r] = aux(n-d, floor(d/2), floor(s/2), q0+s);
    end
end
