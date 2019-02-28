
# `up`

<table><tr><td>Description</td><td>Plays the <em>up</em> portion of the <em>guess-the-natural</em> game.</td></tr><tr><td>Signature</td><td><code>[a,&nbsp;b]&nbsp;=&nbsp;up(f)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>f</code></td><td>The oracle function (see <code>help make_oracle</code>).</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>a</code></td><td>The lower-bound (inclusive).</td></tr><tr><td><code>b</code></td><td>The upper-bound (inclusive).</td></tr></table></td></tr><tr><td>Exceptions</td><td>No exceptions <em>specific to this function</em> were recorded.</td></tr><tr><td>Must Call</td><td><code>up0</code></td></tr><tr><td>Must Not Call</td><td><code>down</code>, <code>error</code>, <code>make_oracle</code>, <code>pow_N_R</code>, <code>pow_N_R_2</code>, <code>pow_Z_R_2</code>, <code>power</code></td></tr><tr><td>Counted Calls</td><td><em>None specified.</em></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><em>None specified.</em></td></tr><tr><td>Must Use Syntax</td><td><code>*2 (no general *)</code>, <code>+1</code>, <code>-1</code>, <code>/2 (no general /)</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>.^</code>, <code>^</code>, <code>for</code>, <code>return</code>, <code>while</code></td></tr></table>

Implementation requirements:

1. File `up.m` must contain an auxiliary function named `up0` (see below).
2. Function `up` must call function `up0` with appropriate arguments.
3. The overall process must evaluate `f` at sequential powers of `2`. First 1 then 2 then 4, et cetera.
4. When the oracle finally says something other than "too small", return the *smallest* interval.

Be sure to try out your function before running `test`. Example:

```
>> friendship = make_oracle(30); [is, magic] = up(friendship)
```

One of the purposes of this task to illustrate that m-files can contain
more than one function. The file `up.m` should look like:

```matlab
function [a, b] = up(f)
    % No work done in here, just a call to `up0` with appropriate arguments.
end

function [a, b] = up0(f, x)
    % Work done here, using recursion.
end
```

The input `f` is a function, and you'll need to evaluate it, like `f(2370)`.
`f` is made (elsewhere) by a call to `make_oracle` (see `help make_oracle`).
Note that your function evaluates the oracle, and **should not try to make an oracle**.

In MATLAB, variables which are functions have type `function_handle`.
You can determine if a variable is a function handle in MATLAB by:

```
>> isa(2370, 'function_handle')

ans =

     logical(0)
```

MATLAB responds with `logical(0)` (i.e., `false`) because `2370` is numeric,
not a `function_handle`. Making a `function_handle` **is not part of this exercise**,
but here is an example.

```
>> best_linear_function = @(x, y) 23*x + 70*y

best_linear_function =

    @(x,y)23*x+70*y

>> best_linear_function(2, 1)

ans =

   116

>> isa(best_linear_function, 'function_handle')

ans =

     logical(1)
```
See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


