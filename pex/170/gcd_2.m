function d = gcd_2(a, b)
    % gcd_2: Greatest Common Divisor, without Euclidean division, using divisions by 2 and subtractions.
    %     Signature: d = gcd_2(a, b)
    %     Input a: A natural.
    %     Input b: A natural.
    %     Output d: The GCD of a and b.
    %
    assert(isN(a),'gcd_2:natural_a','Input a must be natural.');
    assert(isN(b),'gcd_2:natural_b','Input b must be natural.');
    
    Z = iseven(a);
    Y = iseven(b);
    if a > b
        d = gcd_2(b,a);
    elseif a == 0
        d = b;
    elseif Z && Y
        d = 2*gcd_2(a/2, b/2);
    elseif Z
        d = gcd_2(a/2, b);
    elseif Y
        d = gcd_2(a, b/2);
    else
        d = gcd_2(a, b-a);
    end
end