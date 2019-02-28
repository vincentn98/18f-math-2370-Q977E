function y = pow_Z_R_2(n, x)
    % pow_Z_R_2: Raise a real x to an integer exponent n.
    %     Signature: y = pow_Z_R_2(n, x)
    %     Input n: n, an integer.
    %     Input x: x, a real.
    %     Output y: x^n
    %
    assert(isZ(n),'pow_Z_R_2:integer_n','Input n must be an integer.');
    assert(isR(x),'pow_Z_R_2:real_x','Input x must be real.');
    assert((n>0 || x~=0),'pow_Z_R_2:undefined_0_n','0^n is undefined when n <= 0.');
    if (n >= 0)
        y = pow_N_R_2(n,x);
    else
        y = 1/(pow_N_R_2(-n,x));
    end
end