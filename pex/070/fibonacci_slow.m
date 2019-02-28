function m = fibonacci_slow(n)
    % fibonacci_slow: The Fibonacci function.
    %     Signature: m = fibonacci_slow(n)
    %     Input n: n, a natural.
    %     Output m: The nth Fibonacci number.
    %
    assert(isN(n),'fibonacci_slow:natural','Input must be natural.')
    if n == 0
        m = 0;
    elseif n == 1
        m = 1;
    else
        m = fibonacci_slow(n-2)+fibonacci_slow(n-1);
    end
end

