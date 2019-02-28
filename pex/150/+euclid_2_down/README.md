
# `euclid_2_down`

<table><tr><td>Description</td><td>The <em>down</em> phase of <code>euclid_2</code>.</td></tr><tr><td>Signature</td><td><code>[q,&nbsp;r]&nbsp;=&nbsp;euclid_2_down(n,&nbsp;d,&nbsp;s)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>Dividend, a natural.</td></tr><tr><td><code>d</code></td><td>Divisor, a positive natural.</td></tr><tr><td><code>s</code></td><td>Scale.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>q</code></td><td>Quotient, a natural.</td></tr><tr><td><code>r</code></td><td>Remainder, a natural.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>euclid_2_down:natural_d</code></td><td>Input <code>d</code> must be natural.</td></tr><tr><td><code>euclid_2_down:natural_n</code></td><td>Input <code>n</code> must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>aux</code>, <code>floor</code></td></tr><tr><td>Must Not Call</td><td><em>None specified.</em></td></tr><tr><td>Counted Calls</td><td><code>isN</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>false</code></td></tr><tr><td>Must Use Syntax</td><td><code>/2 (no general /)</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>.*</code>, <code>./</code>, <code>for</code>, <code>while</code></td></tr></table>

This must calculate in the same was as the `D` function from `wex/150`.
The auxiliary function must be another function inside of `euclid_2_down.m`, with the following signature.

```
function [q, r] = aux(n, d, s, q0)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


