function y = mult_N_R_2(n, x)
    % mult_N_R_2: Multiply a natural n and a real x using repeated addition.
    %     Signature: y = mult_N_R_2(n, x)
    %     Input n: n, a natural.
    %     Input x: x, a real.
    %     Output y: n*x
    %
    assert(isN(n),'mult_N_R_2:natural_n','Input n must be natural.');
    assert(isR(x),'mult_N_R_2:real_x','Input x must be real.')
    if (n == 0)
        y =  0;
    elseif (x == 0)
        y = 0;
    elseif iseven(n)
        y = mult_N_R_2(n/2,2*x);
    else
        y =  x+mult_N_R_2(n-1,x) ;
    end
end

