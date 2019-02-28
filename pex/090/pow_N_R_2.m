function y = pow_N_R_2(n, x)
    % pow_N_R_2: Raise a real x to a natural exponent n.
    %     Signature: y = pow_N_R_2(n, x)
    %     Input n: n, a natural.
    %     Input x: x, a real.
    %     Output y: x^n
    %
    assert(isN(n),'pow_N_R_2:natural_n','Input n must be natural.');
    assert(isR(x),'pow_N_R_2:real_x','Input x must be real.');
    assert((n~=0 || x~=0),'pow_N_R_2:undefined_0_0','0^0 is undefined.');
    if (x == 0)
        y = 0;
    elseif (n == 0)
        y =  1;
    elseif iseven(n)
        y = pow_N_R_2(n/2,x*x);
    else
        y =  x*pow_N_R_2(n-1,x);
    end
end