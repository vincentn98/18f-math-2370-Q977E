function d = gcd_s(a, b)
    % gcd_s: Greatest Common Divisor, using subtraction only.
    %     Signature: d = gcd_s(a, b)
    %     Input a: A natural.
    %     Input b: A natural.
    %     Output d: The GCD of a and b.
    %
    assert(isN(a),'gcd_s:natural_a','Input a must be natural.');
    assert(isN(b),'gcd_s:natural_b','Input b must be natural.');
    
    if a > b
        d = gcd_s(b,a);
    elseif a == 0
        d = b;
    else
        d = gcd_s(a, b-a);
    end
end