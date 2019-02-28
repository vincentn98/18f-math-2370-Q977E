function x = mod_mult_inv(a, b)
    % mod_mult_inv: Calculate the modular multiplicative inverse of a modulo b.
    %     Signature: x = mod_mult_inv(a, b)
    %     Input a: A natural less than b.
    %     Input b: A natural greater than 1.
    %     Output x: A natural less than b such that mod(x*a, b) == 1.
    %
    assert(isN(a),'mod_mult_inv:natural_a','Input a must be natural.');
    assert(isN(b),'mod_mult_inv:natural_b','Input b must be natural.');
    assert(a<b,'mod_mult_inv:a_less_than_b','Inputs must satisfy a < b.');
    assert(b>1,'mod_mult_inv:b_greater_than_1','Input b must be greater than 1.');
    assert(coprime(a,b),'mod_mult_inv:exists','The modular multiplicative inverse does not exist.');
   
    [~,x1,~] = xgcd_while(a,b);
    if x1 < 0
        x = b+x1;
    else
        x = x1;
    end
end