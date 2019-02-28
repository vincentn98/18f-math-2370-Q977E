function d = play_R(f, t)
    % play_R: Plays the guess-the-real game.
    %     Signature: d = play_R(f, t)
    %     Input f: The oracle function (see make_oracle_R).
    %     Input t: The tolerance (see down_R).  
    %     Output d: The answer.
    %
    assert(isR(t) && t>0,'play_R:real_positive_t','Input t must be real and positive.');
    
    [a, b] = up_R(f);
    d = down_R(f, a, b, t);
end