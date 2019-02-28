function y = mult_N_R_2_tail(n, x)
    % mult_N_R_2_tail: Multiply a natural and a real, using a tail recursion.
    %     Signature: y = mult_N_R_2_tail(n, x)
    %     Input n: A natural.
    %     Input x: A real.
    %     Output y: n*x
    %
    assert(isN(n),'mult_N_R_2_tail:natural_n','Input n must be natural.');
    assert(isR(x),'mult_N_R_2_tail:real_x','Input x must be real.');
    
    y = aux(n,x,0);
end

function y = aux(n,x,a)
    if n==0 || x ==0
        y = a;
    elseif iseven(n)
        y = aux(n/2,x*2,a);
    else
        y = aux(n-1,x,a+x);
    end
end