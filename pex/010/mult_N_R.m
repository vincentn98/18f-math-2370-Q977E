function y = mult_N_R(n, x)
    % mult_N_R: Multiply a natural n and a real x using repeated addition.
    %     Signature: y = mult_N_R(n, x)
    %     Input n: n, a natural.
    %     Input x: x, a real.
    %     Output y: n*x
    %
    assert(isN(n),'mult_N_R:natural_n','Input n must be natural.');
    assert(isR(x),'mult_N_R:real_x','Input x must be real.')
    if (n == 0)
        y =  0;
    elseif (x == 0)
        y = 0;
    else
        y =  x+mult_N_R(n-1,x) ;
    end
end

