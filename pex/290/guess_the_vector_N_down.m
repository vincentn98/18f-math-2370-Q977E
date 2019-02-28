function d = guess_the_vector_N_down(f, k, a, b)
    % guess_the_vector_N_down: Plays the down portion of the guess-the-natural game.
    %     Signature: d = guess_the_vector_N_down(f, k, a, b)
    %     Input f: The oracle function (see make_oracle).
    %     Input k: The dimension of the problem, a natural.
    %     Input a: The current lower-bound (inclusive).
    %     Input b: The current upper-bound (inclusive).
    %     Output d: The correct answer, a natural.
    %
    
    if a == b
        d = a;
    else
        x = (a+b)/2;
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