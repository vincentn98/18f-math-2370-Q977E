function [q, r] = euclid_Z_DR(N, d)
    % euclid_Z_DR: Euclidean division over the integers, sign agrees with divisor rule.
    %     Signature: [q, r] = euclid_Z_DR(N, d)
    %     Input N: Dividend, an integer.
    %     Input d: Divisor, a non-zero integer.
    %     Output q: The quotient, an integer.
    %     Output r: The remainder.
    %
    assert(isZ(N),'euclid_Z_DR:integer_dividend','Dividend N must be integer.');
    assert(isZ(d) && d~=0,'euclid_Z_DR:nonzero_integer_divisor','Divisor d must be non-zero integer.');
    
    if d < 0
        [q0,r0] = euclid_Z_DR(N, -d);
        q = -q0;
        r = r0;
    elseif N < 0
        [q0,r0] = euclid_Z_LP(-N, d);
        if r0 == 0
            q = -q0;
            r = r0;
        else
            q = -(q0+1);
            r = d-r0;
        end
    else
        [q,r] = euclid_Z_LP(N,d);
    end   
end