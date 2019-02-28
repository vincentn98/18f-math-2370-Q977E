
# `up_R`

<table><tr><td>Description</td><td>Plays the <em>up</em> portion of the <em>guess-the-real</em> game.</td></tr><tr><td>Signature</td><td><code>[a,&nbsp;b]&nbsp;=&nbsp;up_R(f)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>f</code></td><td>The oracle function (see <code>make_oracle_R</code>).</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>a</code></td><td>The lower-bound (inclusive).</td></tr><tr><td><code>b</code></td><td>The upper-bound (inclusive).</td></tr></table></td></tr><tr><td>Exceptions</td><td>No exceptions <em>specific to this function</em> were recorded.</td></tr><tr><td>Must Call</td><td><em>None specified.</em></td></tr><tr><td>Must Not Call</td><td><code>down</code>, <code>down_R</code>, <code>error</code>, <code>make_oracle</code>, <code>make_oracle_R</code>, <code>pow_N_R</code>, <code>pow_N_R_2</code>, <code>pow_Z_R_2</code>, <code>power</code></td></tr><tr><td>Counted Calls</td><td><em>None specified.</em></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><em>None specified.</em></td></tr><tr><td>Must Use Syntax</td><td><code>*2 (no general *)</code>, <code>- (negation)</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>.^</code>, <code>^</code>, <code>for</code>, <code>return</code>, <code>while</code></td></tr></table>

The overall process must evaluate `f` at 0, and then at sequential powers of `2` in the `-` or `+` direction, as required.

Be sure to try out your function before running `test`. Example:

```
>> po = make_oracle_R(30.02); [ta, toes] = up_R(po)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


