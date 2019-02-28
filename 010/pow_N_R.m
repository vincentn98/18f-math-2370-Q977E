function y = pow_N_R(n, x)
    % pow_N_R: Raise a real x to a natural exponent n using repeated multiplication.
    %     Signature: y = pow_N_R(n, x)
    %     Input n: n, a natural.
    %     Input x: x, a real.
    %     Output y: x^n
    %
    assert(isN(n),'pow_N_R:natural_n','Input n must be natural.');
    assert(isR(x),'pow_N_R:real_x','Input x must be real.');
    assert((n~=0 || x~=0),'pow_N_R:undefined_0_0','0^0 is undefined.');
    if (x == 0)
        y = 0;
    elseif (n == 0)
        y =  1;
    else
        y =  x*pow_N_R(n-1,x);
    end
end