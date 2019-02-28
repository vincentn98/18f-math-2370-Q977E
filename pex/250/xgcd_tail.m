function [d, x, y] = xgcd_tail(a, b)
    % xgcd_tail: Extended Greatest Common Divisor, using Euclidean division and tail recursion.
    %     Signature: [d, x, y] = xgcd_tail(a, b)
    %     Input a: A natural.
    %     Input b: A natural.
    %     Output d: The GCD of a and b.
    %     Output x: Bezout coefficient for a.
    %     Output y: Bezout coefficient for b.
    %
    assert(isN(a),'xgcd_tail:natural_a','Input a must be natural.');
    assert(isN(b),'xgcd_tail:natural_b','Input b must be natural.');
    
    [d,x,y] = aux(a,1,0,b,0,1);
end
function [d,x,y] = aux(r0,x0,y0,r1,x1,y1)
    if r0 == 0
        d = r1;
        x = x1;
        y = y1;
    else
        [q,r_hat] = euclid_2(r1,r0);
        x_hat = x1-x0*q;
        y_hat = y1-y0*q;
        [d,x,y] = aux(r_hat,x_hat,y_hat,r0,x0,y0);
    end
end