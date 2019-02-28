
# `down`

<table><tr><td>Description</td><td>Plays the <em>down</em> portion of the <em>guess-the-natural</em> game.</td></tr><tr><td>Signature</td><td><code>d&nbsp;=&nbsp;down(f,&nbsp;a,&nbsp;b)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>f</code></td><td>The oracle function (see <code>make_oracle</code>).</td></tr><tr><td><code>a</code></td><td>The current lower-bound (inclusive).</td></tr><tr><td><code>b</code></td><td>The current upper-bound (inclusive).</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>d</code></td><td>The correct answer.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>down:interval</code></td><td>Inputs <code>a</code> and <code>b</code> must satisfy <code>a &lt;= b</code>.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code>, <code>floor</code></td></tr><tr><td>Must Not Call</td><td><code>error</code>, <code>make_oracle</code>, <code>up</code></td></tr><tr><td>Counted Calls</td><td><em>None specified.</em></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><code>/2 (no general /)</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>for</code>, <code>return</code>, <code>while</code></td></tr></table>

Implementation requirements:

1. Produce the correct answer.
2. Guess (i.e., evaluate the oracle function) only when necessary, stopping as soon as an answer can be made.
3. When necessary to guess, guess the `floor` of the midpoint of the current interval.
4. Make the minimum possible number of guesses (given the above).

Input `f` is a `function_handle` (see `up` for a discussion about `function_handle`).

Be sure to try out your function before running `test`. Example:

```
>> flutter = make_oracle(30); shy = down(flutter, 23, 70)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


