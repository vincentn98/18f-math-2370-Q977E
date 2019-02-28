function m = fibonacci_human(n)
    % fibonacci_human: The Fibonacci function.
    %     Signature: m = fibonacci_human(n)
    %     Input n: n, a natural.
    %     Output m: The nth Fibonacci number.
    %
    assert(isN(n),'fibonacci_human:natural','Input must be natural.')
    m = fibonacci_human_auxiliary(n,0,1);
end

