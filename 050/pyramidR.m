function m = pyramidR(n)
    % pyramidR: The pyramid function.
    %     Signature: m = pyramidR(n)
    %     Input n: A natural.
    %     Output m: The nth pyramidal number.
    %
    assert(isN(n),'pyramidR:natural','Input must be natural.');
    if n == 0
        m = 0;
    else
        m = n + pyramidR(n - 1);
    end
end

