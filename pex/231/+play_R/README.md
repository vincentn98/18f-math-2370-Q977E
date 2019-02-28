
# `play_R`

<table><tr><td>Description</td><td>Plays the <em>guess-the-real</em> game.</td></tr><tr><td>Signature</td><td><code>d&nbsp;=&nbsp;play_R(f,&nbsp;t)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>f</code></td><td>The oracle function (see <code>make_oracle_R</code>).</td></tr><tr><td><code>t</code></td><td>The tolerance (see <code>down_R</code>).</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>d</code></td><td>The answer.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>play_R:real_positive_t</code></td><td>Input <code>t</code> must be real and positive.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>down</code>, <code>error</code>, <code>make_oracle</code>, <code>up</code></td></tr><tr><td>Counted Calls</td><td><code>down_R</code>, <code>up_R</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><em>None specified.</em></td></tr><tr><td>Must Use Syntax</td><td><em>None specified.</em></td></tr><tr><td>Must Not Use Syntax</td><td><code>if</code></td></tr></table>

Implementation requirements:

1. All work must be completed by `up_R` and `down_R`.
1. This function just calls `up_R` and then `down_R` with appropriate arguments.

Be sure to try out your function before running `test`. Example:

```
>> flutter = make_oracle_R(30.07); shy = play_R(flutter, 0.0001)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


