
# `play`

<table><tr><td>Description</td><td>Plays the <em>guess-the-natural</em> game.</td></tr><tr><td>Signature</td><td><code>d&nbsp;=&nbsp;play(f)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>f</code></td><td>The oracle function (see <code>make_oracle</code>).</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>d</code></td><td>The answer.</td></tr></table></td></tr><tr><td>Exceptions</td><td>No exceptions <em>specific to this function</em> were recorded.</td></tr><tr><td>Must Call</td><td><em>None specified.</em></td></tr><tr><td>Must Not Call</td><td><code>error</code>, <code>make_oracle</code></td></tr><tr><td>Counted Calls</td><td><code>down</code>, <code>up</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><em>None specified.</em></td></tr><tr><td>Must Use Syntax</td><td><em>None specified.</em></td></tr><tr><td>Must Not Use Syntax</td><td><code>if</code></td></tr></table>

Implementation requirements:

1. All work must be completed by `up` and `down`.
1. This function just calls `up` and then `down` with appropriate arguments.

Input `f` is a `function_handle` (see `up` for a discussion about `function_handle`).

Be sure to try out your function before running `test`. Example:

```
>> flutter = make_oracle(30); shy = play(flutter)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


