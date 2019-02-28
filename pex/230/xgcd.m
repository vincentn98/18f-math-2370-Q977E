function [d, x, y] = xgcd(a, b)
    % xgcd: Extended Greatest Common Divisor, using Euclidean division.
    %     Signature: [d, x, y] = xgcd(a, b)
    %     Input a: A natural.
    %     Input b: A natural.
    %     Output d: The GCD of a and b.
    %     Output x: Bezout coefficient for a.
    %     Output y: Bezout coefficient for b.
    %
    assert(isN(a),'xgcd:natural_a','Input a must be natural.');
    assert(isN(b),'xgcd:natural_b','Input b must be natural.');
    
    if a == 0
        d = b;
        x = 0;
        y = 1;
    else
        [q,r] = euclid_2(b,a);
        [d,x1,y1] = xgcd(r,a);
        x = y1-q*x1;
        y = x1;
    end
end