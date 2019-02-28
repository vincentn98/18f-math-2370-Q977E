function d = down(f, a, b)
    % down: Plays the down portion of the guess-the-natural game.
    %     Signature: d = down(f, a, b)
    %     Input f: The oracle function (see make_oracle).
    %     Input a: The current lower-bound (inclusive).
    %     Input b: The current upper-bound (inclusive).
    %     Output d: The correct answer.
    %
    assert((b >= a),'down:interval','Inputs a and b must satisfy a <= b.');
    if a == b
        d = a;
    else
        x = floor((a+b)/2);
        n = f(x);
        if n == 1
            d = down(f, a, x-1);
        elseif n == -1
            d = down(f, x+1, b);
        else
            d = x;
        end
    end
end
