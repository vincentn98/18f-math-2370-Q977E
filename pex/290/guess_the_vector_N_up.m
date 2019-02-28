function [a, b] = guess_the_vector_N_up(f, k)
    % guess_the_vector_N_up: Plays the up portion of the guess-the-natural game, for vectors.
    %     Signature: [a, b] = guess_the_vector_N_up(f, k)
    %     Input f: The oracle function (see make_oracle).
    %     Input k: The dimension of the vector to guess.
    %     Output a: The lower-bound (inclusive).
    %     Output b: The upper-bound (inclusive).
    %
    
    x = ones(1, k);              % The first question we ask the oracle.
    %
    % In the `while` loop below, one loop is one oracle question.
    question = true;             % We need to ask at least one question.
    %
    while question               % While there is a question to ask.
        c = f(x);                % Ask the question.
        question = false;        % Assume we don't need to ask another question.
        for i = 1 : k            % Check the oracle's responses in every dimension.
            if c(i) < 0          % Dimension `i` not big enough.
                x(i) = x(i) * 2; % Double dimension `i`.
                question = true; % We need to ask another question.
            end                  %
        end                      %
    end                          %
    %
    % We asked at least one question and the oracle's
    % responses in every dimension were one of:
    %     `0`: this dimension is correct
    %     `1`: this dimension is too big
    % The last question we asked is in variable `x`.
    % The oracle's responses are in the variable `c`.
    %
    %
    a = zeros(1, k);             % The lower-bound in every dimension defaults to zero.
    b = zeros(1, k);             % The upper-bound in every dimension defaults to zero.
    %
    %
    % Now calculate the values of `a` and `b` in every dimension,
    % I.e., you need to calculate `a(i)` and `b(i)` for every `i`.
    %
    % You need to write that loop.
    %
end