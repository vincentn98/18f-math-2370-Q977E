function y = mult_N_R_2_while(n, x)
    % mult_N_R_2_while: Multiply a natural and a real, using a tail recursion.
    %     Signature: y = mult_N_R_2_while(n, x)
    %     Input n: A natural.
    %     Input x: A real.
    %     Output y: n*x
    %
    assert(isN(n),'mult_N_R_2_while:natural_n','Input n must be natural.');
    assert(isR(x),'mult_N_R_2_while:real_x','Input x must be real.');
    
    y = 0;
    while n~=0
        if x == 0
            n = 0;
        elseif iseven(n)
            x = x*2;
            n = n/2;
        else
            y = x+y;
            n = n-1;
        end
    end
end