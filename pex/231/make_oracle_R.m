
function f = make_oracle_R(n)
    % make_oracle_R: Make an oracle for the guessing game.
    %     Signature: f = make_oracle_R(n)
    %     Input n: A row vector of reals.
    %     Output f: An *oracle function*.
    %

    function assert_(prefix, m)
        assert(isnumeric(n), [prefix, ':numeric'], 'Input must be numeric, not %s (see `isnumeric`).', class(m));
        assert(isrow(m), [prefix, ':row'], 'Input must be a row vector (see `isrow`).');
    end

    assert_('make_oracle_R', n);

    function y = pl(x, m)
        if numel(m) == 1
            y = x;
        else
            y = [x, 's'];
        end
    end

    count = 0;
    max_count = 1000;

    function y = oracle(x)
        switch x
            case 'oracle-count'
                y = abs(count);
            case 'oracle-reveal'
                count = nan;
                y = n;
            case 'oracle-player-asked-for-reveal'
                y = isnan(count);
            case 'oracle-player-guessed-correctly'
                y = (count < 0);
            case 'oracle-player-overflowed'
                y = (count > max_count);
            otherwise
                assert_('oracle', x);
                assert(all(numel(x) == numel(n)), 'oracle:numel', 'Input must must have %d %s, not %d (see `numel`).', numel(n), pl('element', n), numel(x));
                assert(~isnan(count), 'oracle:reveal', 'No inputs after the answer has been revealed.');
                assert(count >= 0, 'oracle:game_over', 'No inputs after you guessed the right answer.');
                count = count + 1;
                assert(count <= max_count, 'oracle:overflow', 'Number of guesses cannot exceed %d.', max_count);
                y = sign(x - n);
                if all(y == 0)
                    count = -count;
                end
        end
    end

    f = @(x) oracle(x);
end

