
# `euclid_F`

<table><tr><td>Description</td><td>Compute quotient <code>q</code> and remainder <code>r</code> of the Euclidean division of <code>n</code> by <code>d</code>.</td></tr><tr><td>Signature</td><td><code>[q,&nbsp;r]&nbsp;=&nbsp;euclid_F(n,&nbsp;d)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>Dividend, a natural.</td></tr><tr><td><code>d</code></td><td>Divisor, a positive natural.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>q</code></td><td>Quotient, a natural.</td></tr><tr><td><code>r</code></td><td>Remainder, a natural satisfying <code>0 &lt;= r &lt; d</code>.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>euclid_F:div_by_zero</code></td><td>Cannot divide by zero.</td></tr><tr><td><code>euclid_F:natural_d</code></td><td>Divisor must be natural.</td></tr><tr><td><code>euclid_F:natural_n</code></td><td>Dividend must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>isN</code></td></tr><tr><td>Must Not Call</td><td><code>floor</code>, <code>mod</code>, <code>rem</code></td></tr><tr><td>Counted Calls</td><td><code>isN</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><em>None specified.</em></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>.*</code>, <code>./</code>, <code>/</code>, <code>for</code>, <code>while</code></td></tr></table>

The inputs and outputs of the Euclidean division are all natural and must satisfy `n = d*q + r` with `0 <= r < d`.
This must calculate in the same was as the `F` function from `wex/130`.

Be sure to try out your function before running `test`. Example:

```
>> [rainbow, dash] = euclid_F(70, 23)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


