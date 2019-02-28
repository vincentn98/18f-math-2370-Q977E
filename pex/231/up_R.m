function [a, b] = up_R(f)
    % up_R: Plays the up portion of the guess-the-real game.
    %     Signature: [a, b] = up_R(f)
    %     Input f: The oracle function (see make_oracle_R).
    %     Output a: The lower-bound (inclusive).
    %     Output b: The upper-bound (inclusive).
    %
    [a, b] = up0(f,0);
end

function [a, b] = up0(f, x)
    n=f(x);
    if n == 0
        a=x;
        b=x;
    elseif n == 1
        a = f((x-1)*2);
        b = a/2;
    elseif n == -1
        [a,b] = up0(f,(x+1)*2);
    end
end
