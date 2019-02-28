
# `euclid_2`

<table><tr><td>Description</td><td>Euclidean division, quickly.</td></tr><tr><td>Signature</td><td><code>[q,&nbsp;r]&nbsp;=&nbsp;euclid_2(n,&nbsp;d)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>Dividend, a natural.</td></tr><tr><td><code>d</code></td><td>Divisor, a positive natural.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>q</code></td><td>Quotient, a natural.</td></tr><tr><td><code>r</code></td><td>Remainder, a natural satisfying <code>0 &lt;= r &lt; d</code>.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>euclid_2:natural_d</code></td><td>Input <code>d</code> must be natural.</td></tr><tr><td><code>euclid_2:natural_n</code></td><td>Input <code>n</code> must be natural.</td></tr><tr><td><code>euclid_2:positive_d</code></td><td>Input <code>d</code> must be positive.</td></tr></table></td></tr><tr><td>Must Call</td><td><em>None specified.</em></td></tr><tr><td>Must Not Call</td><td><em>None specified.</em></td></tr><tr><td>Counted Calls</td><td><code>euclid_2_down</code>, <code>euclid_2_up</code>, <code>isN</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>false</code></td></tr><tr><td>Must Use Syntax</td><td><em>None specified.</em></td></tr><tr><td>Must Not Use Syntax</td><td><em>None specified.</em></td></tr></table>

The inputs and outputs of the Euclidean division are all natural and must satisfy `n = d*q + r` with `0 <= r < d`.
This must calculate in the same was as the `E` function from `wex/150`.

Be sure to try out your function before running `test`. Example:

```
>> [rainbow, dash] = euclid_2(70, 23)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


