function m = pyramidP(n)
    % pyramidP: The pyramid function.
    %     Signature: m = pyramidP(n)
    %     Input n: A natural.     
    %     Output m: The nth pyramidal number.
    %
    assert(isN(n),'pyramidP:natural','Input must be natural.');
    m = (n*(n+1))/2;
end

