
# `guess_the_vector_N_up`

<table><tr><td>Description</td><td>Plays the <em>up</em> portion of the <em>guess-the-natural</em> game, for <em>vectors</em>.</td></tr><tr><td>Signature</td><td><code>[a,&nbsp;b]&nbsp;=&nbsp;guess_the_vector_N_up(f,&nbsp;k)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>f</code></td><td>The oracle function (see <code>help make_oracle</code>).</td></tr><tr><td><code>k</code></td><td>The dimension of the vector to guess.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>a</code></td><td>The lower-bound (inclusive).</td></tr><tr><td><code>b</code></td><td>The upper-bound (inclusive).</td></tr></table></td></tr><tr><td>Exceptions</td><td>No exceptions <em>specific to this function</em> were recorded.</td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>make_oracle</code>, <code>up</code></td></tr><tr><td>Counted Calls</td><td><em>None specified.</em></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>false</code></td></tr><tr><td>Must Use Syntax</td><td><code>*2 (no general *)</code>, <code>+1</code>, <code>-1</code>, <code>/2 (no general /)</code>, <code>for</code>, <code>while</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>.^</code>, <code>^</code>, <code>return</code></td></tr></table>

Now the point to find is a row vector of naturals of dimension `k`.
For example, the hidden vector might be:

```matlab
>> v = [23, 70]

v = 23 70
```

You can find the dimension of a vector like this:

```matlab
>> p = length(v)

p = 2
```

You give the oracle a vector of guesses and the oracle returns a vector of responses:

```matlab
>> v = [23, 70]; f = make_oracle(v);
>> w = f([10, 32])

w = -1    -1 % [too small, too small]

>> w = f([10, 100])

w = -1     1 % [too small, too big]

>> w = f([23, 100])

w =  0     1 % [correct, too big]
```

Just like the original *guess-the-natural* game, we're going to start by asking about `1`.
But this time, we need to ask about a vector of `1`s. MATLAB has a function `ones(m, n)`
which gives a `m` by `n` matrix of ones.

```matlab
>> x = ones(1, 5)

x = 1     1     1     1     1 % A row vector of ones.

>> x = zeros(1, 5)

x = 0     0     0     0     0 % A row vector of zeros.

```

The teaching-purpose of this exercise is to get you to use loops.
In particular, there are two loops:

1. An outer-loop of asking the oracle questions.
1. An inner-loop processing the oracle's response over every dimension.

Since this may be the first time you've done that, here is a good place to start (it's safe to copy/paste!).

```matlab
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
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


