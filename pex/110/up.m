function [a, b] = up(f)
    % up: Plays the up portion of the guess-the-natural game.
    %     Signature: [a, b] = up(f)
    %     Input f: The oracle function (see make_oracle).
    %     Output a: The lower-bound (inclusive).
    %     Output b: The upper-bound (inclusive).
    %
    [a, b] = up0(f,1);
end

function [a, b] = up0(f, x)
    n=f(x);
    if n == 1 && x == 1
        a=0;
        b=0;
    elseif n == 0
        a=x;
        b=x;
    elseif n == 1
        a=x/2+1;
        b=x-1;
    elseif n == -1
        [a,b] = up0(f,x*2);
    end
end


