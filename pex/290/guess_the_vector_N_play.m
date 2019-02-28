function d = guess_the_vector_N_play(f, k)
    % guess_the_vector_N_play: Plays the guess-the-natural game.
    %     Signature: d = guess_the_vector_N_play(f, k)
    %     Input f: The oracle function (see make_oracle).
    %     Input k: The dimension of the problem, a natural.
    %     Output d: The correct answer, a natural.
    %
    [a, b] = guess_the_vector_N_up(f, k);
    d = guess_the_vector_N_down(f, k, a, b);

end