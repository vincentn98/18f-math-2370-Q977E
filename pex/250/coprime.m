function y = coprime(a, b)
    % coprime: Determine if two naturals are coprime.
    %     Signature: y = coprime(a, b)
    %     Input a: A natural.
    %     Input b: A natural.
    %     Output y: Logical.
    %
    assert(isN(a),'coprime:natural_a','Input a must be natural.');
    assert(isN(b),'coprime:natural_b','Input b must be natural.');
   
    y = gcd(a,b) == 1;
end