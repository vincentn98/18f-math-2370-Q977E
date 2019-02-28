
# `xgcd_tail`

<table><tr><td>Description</td><td>Extended Greatest Common Divisor, using Euclidean division and tail recursion.</td></tr><tr><td>Signature</td><td><code>[d,&nbsp;x,&nbsp;y]&nbsp;=&nbsp;xgcd_tail(a,&nbsp;b)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>a</code></td><td>A natural.</td></tr><tr><td><code>b</code></td><td>A natural.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>d</code></td><td>The GCD of <code>a</code> and <code>b</code>.</td></tr><tr><td><code>x</code></td><td>Bezout coefficient for <code>a</code>.</td></tr><tr><td><code>y</code></td><td>Bezout coefficient for <code>b</code>.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>xgcd_tail:natural_a</code></td><td>Input <code>a</code> must be natural.</td></tr><tr><td><code>xgcd_tail:natural_b</code></td><td>Input <code>b</code> must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>aux</code></td></tr><tr><td>Must Not Call</td><td><code>floor</code>, <code>gcd</code>, <code>gcd_2</code>, <code>gcd_s</code>, <code>mod</code>, <code>rem</code>, <code>xgcd</code>, <code>xgcd_while</code></td></tr><tr><td>Counted Calls</td><td><code>euclid_2</code>, <code>isN</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><em>None specified.</em></td></tr><tr><td>Must Use Syntax</td><td><em>None specified.</em></td></tr><tr><td>Must Not Use Syntax</td><td><code>/</code>, <code>elseif</code>, <code>for</code>, <code>while</code></td></tr></table>

The auxiliary tail-recursive function must be named `aux`.

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


