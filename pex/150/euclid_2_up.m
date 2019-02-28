function [d0, s0] = euclid_2_up(n, d)
    % euclid_2_up: The up phase of euclid_2.
    %     Signature: [d0, s0] = euclid_2_up(n, d)
    %     Input n: Dividend, a natural.
    %     Input d: Divisor, a positive natural.
    %     Output d0: Scaled divisor, a natural.
    %     Output s0: Scale.
    %
    assert(isN(n),'euclid_2_up:natural_n','Input n must be natural.');
    assert(isN(d),'euclid_2_up:natural_d','Input d must be natural.');
    assert(d>0,'euclid_2_up:positive_d','Input d must be positive.');
    
    [d0, s0] = aux(n, d, 1);
end

function [d0, s0] = aux(n, d, s)
    if d > n
        d0 = floor(d/2);
        s0 = floor(s/2);
    else
        [d0, s0] = aux(n, 2*d, 2*s);
    end
end