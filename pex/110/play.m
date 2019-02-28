function d = play(f)
    % play: Plays the guess-the-natural game.
    %     Signature: d = play(f)
    %     Input f: The oracle function (see make_oracle).
    %     Output d: The answer.
    %
    [a, b] = up(f);
    d = down(f, a, b);
end