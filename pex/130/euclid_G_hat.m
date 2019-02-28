function [q, r] = euclid_G_hat(r0, d, q0)
    % euclid_G_hat: Auxiliary Euclidean division function.
    %     Signature: [q, r] = euclid_G_hat(r0, d, q0)
    %     Input r0: Current remainder.
    %     Input d: Divisor, a positive natural.
    %     Input q0: Current quotient.
    %     Output q: Quotient, a natural.
    %     Output r: Remainder, a natural satisfying 0 <= r < d
    %
    assert(isN(r0),'euclid_G_hat:natural_r0','Current remainder must be natural.');
    assert(isN(d),'euclid_G_hat:natural_d','Divisor must be natural.');
    assert(d~=0,'euclid_G_hat:div_by_zero','Cannot divide by zero.');
    assert(isN(q0),'euclid_G_hat:natural_q0','Current quotient must be natural.');
    
    if r0 < d
        r = r0;
        q = q0;
    else
        [q, r] = euclid_G_hat(r0-d, d, q0+1);
    end
end