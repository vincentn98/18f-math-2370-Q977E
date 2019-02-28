function y = mult_Z_R_2(n, x)
    % mult_Z_R_2: Multiply n and x by reducing the problem to mult_N_R_2.
    %     Signature: y = mult_Z_R_2(n, x)
    %     Input n: n, an integer.
    %     Input x: x, a real.
    %     Output y: n*x
    %
    assert(isZ(n),'mult_Z_R_2:integer_n','Input n must be an integer.');
    assert(isR(x),'mult_Z_R_2:real_x','Input x must be real.')
    if (n >= 0)
        y = mult_N_R_2(n,x);
    else
        y = -(mult_N_R_2(-n,x));
    end
end

