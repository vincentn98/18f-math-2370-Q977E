function [d, x, y] = xgcd_while(a, b)
    % xgcd_while: Extended Greatest Common Divisor, using Euclidean division and a while loop.
    %     Signature: [d, x, y] = xgcd_while(a, b)
    %     Input a: A natural.
    %     Input b: A natural.
    %     Output d: The GCD of a and b.
    %     Output x: Bezout coefficient for a.
    %     Output y: Bezout coefficient for b.
    %
    assert(isN(a),'xgcd_while:natural_a','Input a must be natural.');
    assert(isN(b),'xgcd_while:natural_b','Input b must be natural.');
    
    x0 = 1;
    x1 = 0;
    y0 = 0;
    y1 = 1;
    while a ~= 0
        [q,r] = euclid_2(b,a);
        x_hat = x1-x0*q;
        y_hat = y1-y0*q;
        b = a;
        a = r;
        x1 = x0;
        y1 = y0;
        x0 = x_hat;
        y0 = y_hat;     
    end
    d = b;
    x = x1;
    y = y1;
end