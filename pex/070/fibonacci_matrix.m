function m = fibonacci_matrix(n)
    % fibonacci_matrix: The Fibonacci function.
    %     Signature: m = fibonacci_matrix(n)
    %     Input n: n, a natural.
    %     Output m: The nth Fibonacci number.
    %
    assert(isN(n),'fibonacci_matrix:natural','Input must be natural.')
    H = [0,1;1,1]^n*[0;1];
    m = H(1,1);
end

