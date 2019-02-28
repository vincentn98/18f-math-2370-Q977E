function d = down_R(f, a, b, t)
    % down_R: Plays the down portion of the guess-the-real game.
    %     Signature: d = down_R(f, a, b, t)
    %     Input f: The oracle function (see make_oracle_R).
    %     Input a: The current lower-bound (inclusive).
    %     Input b: The current upper-bound (inclusive).
    %     Input t: The tolerance (how close the bounds must be to stop).
    %     Output d: The correct answer.
    %
    assert((b >= a),'down_R:interval','Inputs a and b must satisfy a <= b.');
    assert(isR(t) && t>0,'down_R:real_positive_t','Input t must be real and positive.');
    
    if a > 0
        if a == b
            d = a;
        else
            x = (a+b)/2;
            n = f(x);
            if t > b-a
                d = x;
            elseif n == 1
                d = down_R(f, a, x,t);
            else
                d = down_R(f, x, b,t);
            end
        end
    end
end
