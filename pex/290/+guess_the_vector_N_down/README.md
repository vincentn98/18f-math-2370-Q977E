
# `guess_the_vector_N_down`

<table><tr><td>Description</td><td>Plays the <em>down</em> portion of the <em>guess-the-natural</em> game.</td></tr><tr><td>Signature</td><td><code>d&nbsp;=&nbsp;guess_the_vector_N_down(f,&nbsp;k,&nbsp;a,&nbsp;b)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>f</code></td><td>The oracle function (see <code>make_oracle</code>).</td></tr><tr><td><code>k</code></td><td>The dimension of the problem, a natural.</td></tr><tr><td><code>a</code></td><td>The current lower-bound (inclusive), a natural.</td></tr><tr><td><code>b</code></td><td>The current upper-bound (inclusive), a natural.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>d</code></td><td>The correct answer, a natural.</td></tr></table></td></tr><tr><td>Exceptions</td><td>No exceptions <em>specific to this function</em> were recorded.</td></tr><tr><td>Must Call</td><td><code>assert</code>, <code>floor</code></td></tr><tr><td>Must Not Call</td><td><code>down</code>, <code>error</code>, <code>guess_the_vector_N_up</code>, <code>make_oracle</code></td></tr><tr><td>Counted Calls</td><td><em>None specified.</em></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>false</code></td></tr><tr><td>Must Use Syntax</td><td><code>/2 (no general /)</code>, <code>for</code>, <code>while</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>return</code></td></tr></table>

The teaching purpose of this question is to get you to use loops.
The most straightforward way to solve this exercise is the same loop-with-loop technique on the *up* portion of the game.

Now that `a` and `b` are vectors, MATLAB exhibits a new behavior.

```matlab
>> a = 5; b = 6;                % Scalar values
>> a <= b                       % Scalar inequality
                                %
ans = 1                         % Scalar true.
                                %
>> a = [23, 70]; b = [10, 100]; % Vector values.
>> a <= b                       % Vector inequality
                                %
ans = 0   1                     % False in the first dimension, true in the second.
                                %
>> all(a <= b)                  % Is it true in all dimensions?
                                %
ans = 0                         % No.
                                %
>> any(a <= b)                  % Is it true in any dimension?
                                %
ans = 1                         % Yes.
                                %
>> length(a)                    % What is the dimension of `a`?
                                %
ans = 2                         %
                                %
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


