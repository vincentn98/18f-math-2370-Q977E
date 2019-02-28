function [d, x, y, m] = xgcd_lcm_Z_LA(a, b)
    % xgcd_lcm_Z_LA: XGCD and LCM over Z using least absolute Euclidean division.
    %     Signature: [d, x, y, m] = xgcd_lcm_Z_LA(a, b)
    %     Input a: An integer.
    %     Input b: An integer.
    %     Output d: The GCD of a and b, a natural.
    %     Output x: Bezout coefficient for a, an integer.
    %     Output y: Bezout coefficient for b, an integer.
    %     Output m: yLCM of a and b, a natural.
    %
    assert(isZ(a),'xgcd_lcm_Z_LA:integer_a','Input a must be integer.');
    assert(isZ(b),'xgcd_lcm_Z_LA:integer_b','Input b must be integer.');
    
    d = gcd(a,b);
    [d, x, y, m] = euclid_Z_LA(N, d);

end