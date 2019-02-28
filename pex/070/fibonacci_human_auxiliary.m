function m = fibonacci_human_auxiliary(n, a, b)
    % fibonacci_human_auxiliary: The auxiliary Fibonacci function.
    %     Signature: m = fibonacci_human_auxiliary(n, a, b)
    %     Input n: n, a natural.
    %     Input a: a, The lesser of current pair of known Fibonacci numbers.
    %     Input b: b, The greater of current pair of known Fibonacci numbers.
    %     Output m: The nth Fibonacci number (assuming the initial call had the correct a and b).
    %
    assert(isN(n),'fibonacci_human_auxiliary:natural_n','Input n must be natural.')
    assert(isN(a),'fibonacci_human_auxiliary:natural_a','Input a must be natural.')
    assert(isN(b),'fibonacci_human_auxiliary:natural_b','Input b must be natural.')
    assert((b>=a),'fibonacci_human_auxiliary:monotone_increasing','The pair a and b must be monotone increasing.');
    if n == 0
        m = a;
    else
        m = fibonacci_human_auxiliary(n-1,b,a+b);
    end
end

