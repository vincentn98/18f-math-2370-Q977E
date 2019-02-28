
function f = make_oracle(n)
    % make_oracle: Make an oracle for the guessing game.
    %     Signature: f = make_oracle(n)
    %     Input n: A row vector of naturals.
    %     Output f: An *oracle function*. See discussion for a description of what an *oracle function* is.
    % 
    % oracle: The oracle in the guessing game. It "knows" the correct `n`, you provide to it your guess `x`. You are allowed a maximum of `1000` guesses.
    %     Signature: y = oracle(x)
    %     Input x: A row vector of naturals which must be the same size as `n` (or a *magic* input, see below).
    %     Output y: A row vector of oracle responses the same size as `n`: -1` when guess was too small, `0` when guess was correct, `1` when guess was too high (or a *magic* output, see below).
    %
    % The oracle accepts the following *magic* inputs.
    %     `'oracle-count'`: Oracle returns the number of guesses made so far.
    %     `'oracle-reveal'`: Oracle returns `n` (the correct answer), records it has done so, and accepts no further guesses.
    %     `'oracle-player-asked-for-reveal'`: Oracle returns whether or not it ever received `'oracle-reveal'`.
    %     `'oracle-player-guessed-correctly'`: Oracle returns whether or not it ever recieved `n`.
    %     `'oracle-player-overflowed'`: Oracle returns whether or not the player made more than `1000` guesses.
    %
    % For example,
    %
    % ```
    %     >> f = make_oracle(2370)
    %     
    %     f = 
    %     
    %         @(x)oracle(x)
    %     
    %     >> f(1000)
    %     
    %     ans =
    %     
    %         -1
    %     
    %     >> f(2370)
    %     
    %     ans =
    %     
    %          0
    %     
    %     >> f('oracle-count')
    %     
    %     ans =
    %     
    %          2
    % ```
    %
    % For those of you who are wondering how this works (e.g., how the oracle can "know" `n`):
    %
    %     1. The notation `@(x) 23*x^2 + 70` creates an anonymous function (the MATLAB type is `function_handle`)
    %        which takes one input `x` and returns the evaluation of the expression `23*x^2 + 70`.
    %     2. The notation `@(x) oracle(x)` creates an anonymous function which takes one input `x` and returns
    %        the evaluation of `oracle(x)`.
    %     3. The `oracle` function is defined inside the `make_oracle` function because it is between the `function`
    %        and `end` which defines `make_oracle`.
    %     4. Therefore the definition of the `oracle` function can depend on variables defined *in* `make_oracle`.
    %     5. `make_oracle` includes an input `n` and then defines `count = 0` and `max_count = 1000`. The set of all 
    %        variables defined in a function is called its *workspace*.
    %     6. When MATLAB evaluates the `@(x) oracle(x)` to create an anonymous function, it analyzes the current workspace 
    %        (which is `make_oracle`'s workspace) to determine which variables should be in this anonymous function's
    %        workspace.
    %     7. As a result, the anonymous function has a workspace which includes `n`, `count`, and `max_count`.
    %     8. The variable `f` holds the resulting anonymous function, including its workspace.
    %
    % This process (of creating function objects (like `f`) with attached workspaces including all variables which were 
    % visible at the time function object was created) is called *lexical closure*. Variables which are used in the function, 
    % but not part of the function's inputs (like `n`, `count` and `max_count`, but not `x`) are called *free variables*. 
    % Variables which are part of the function object's inputs (like `x`) are called *parameters*.
    %
    % At the time of the creation of the anonymous function object, all free variables must be defined. The value of each 
    % free variable is saved and attached to the anonymous function object. Such variables are said to be *lexically captured*,
    % and (where that particular function object is concerned) those free variables have become *bound variables*.
    %
    % This collection of ideas (closure, capture, free, bound, parameter) is called *lexical analysis*.
    %
    % Many people are surpised by lexical closure/capture the first time they see it in a programming language.
    %
    %     1. In some programming languages there are *global variables*. A global variable is the special case of
    %        a free variable to *every* function which is bound to the same value for every function.
    %     2. *Procedural* languages (like C/Fortran/Algol) almost never support function objects or lexical closures.
    %        Extra parameters or global variables are used to achieve effects similar to closure.
    %     3. *Object-oriented* languages (like C++/Java) provide/promote a different mechanism to achieve the same effect.
    %        You define a `class` and initialize an object of that class with any variables you want captured.
    %        You then call functions with that class object as a parameter, and that function accesses the captured
    %        variables "through" the class object. This is exactly the same as passing extra parameters (like
    %        procedural languages), but object-oriented languages offer a (sometimes) more convenient syntax.
    %     4. *Functional* programming languages (like lisp and haskell) use lexical closure.
    %     5. Many languages (like MATLAB) support both techniques (classes and lexical closures).
    %
    % But whatever your history/preference, lexical closure/capure is used *everywhere* in math. As a result, math
    % folks who also like programming may be biased towards functional programming languages and lexical analysis.
    % Be aware of all approaches!
    %

    function assert_(prefix, m)
        assert(isnumeric(m), [prefix, ':numeric'], 'Input must be numeric, not %s.', class(m));
        assert(isrow(m), [prefix, ':row'], 'Input must be a row vector.');
        assert(all(floor(m) == m) && all(m >= 0), [prefix, ':natural'], 'Input must be natural.');
    end

    assert_('make_oracle', n);

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
        if ischar(x)
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
            end
        else
            assert_('oracle', x);
            assert(all(numel(x) == numel(n)), 'oracle:numel', 'Input must must have %d %s, not %d.', numel(n), pl('element', n), numel(x));
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

