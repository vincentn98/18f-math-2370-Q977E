
# `down_R`

<table><tr><td>Description</td><td>Plays the <em>down</em> portion of the <em>guess-the-real</em> game.</td></tr><tr><td>Signature</td><td><code>d&nbsp;=&nbsp;down_R(f,&nbsp;a,&nbsp;r,&nbsp;t)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>f</code></td><td>The oracle function (see <code>make_oracle_R</code>).</td></tr><tr><td><code>a</code></td><td>The current lower-bound (inclusive).</td></tr><tr><td><code>r</code></td><td>The current upper-bound (inclusive).</td></tr><tr><td><code>t</code></td><td>The tolerance (how close the bounds must be to stop).</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>d</code></td><td>The correct answer.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>down_R:interval</code></td><td>Inputs <code>a</code> and <code>b</code> must satisfy <code>a &lt;= b</code>.</td></tr><tr><td><code>down_R:real_positive_t</code></td><td>Input <code>t</code> must be real and positive.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>abs</code>, <code>error</code>, <code>make_oracle</code>, <code>make_oracle_R</code>, <code>sqrt</code>, <code>up</code>, <code>up_R</code></td></tr><tr><td>Counted Calls</td><td><em>None specified.</em></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><code>/2 (no general /)</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>.*</code>, <code>.^</code>, <code>^</code>, <code>for</code>, <code>return</code>, <code>while</code></td></tr></table>

Implementation requirements:

1. Produce the correct answer to within `t`: i.e., if the *real* answer is `x` then `abs(d - x) < t`.
2. Guess (i.e., evaluate the oracle function) only when necessary, stopping as soon as an answer can be made.
3. When necessary to guess, guess the midpoint of the current interval.
4. Make the minimum possible number of guesses (given the above).

Input `f` is a `function_handle` (see `up` for a discussion about `function_handle`).

Be sure to try out your function before running `test`. Example:

```
>> flutter = make_oracle_R(30.02); shy = down_R(flutter, 23, 70, 0.001)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


