function d = gcd_ed(a, b)
    % gcd_ed: Greatest Common Divisor, using Euclidean division.
    %     Signature: d = gcd_ed(a, b)
    %     Input a: A natural.
    %     Input b: A natural.
    %     Output d: The GCD of a and b.
    %
    assert(isN(a),'gcd_ed:natural_a','Input a must be natural.');
    assert(isN(b),'gcd_ed:natural_b','Input b must be natural.');
    
    if a == 0
        d = b;
    else
        [~, r] = euclid_2(b,a);
        d = gcd_ed(r,a);
    end
end