
# `coprime`

<table><tr><td>Description</td><td>Determine if two naturals are coprime.</td></tr><tr><td>Signature</td><td><code>y&nbsp;=&nbsp;coprime(a,&nbsp;b)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>a</code></td><td>A natural.</td></tr><tr><td><code>b</code></td><td>A natural.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>y</code></td><td>Logical.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>coprime:natural_a</code></td><td>Input <code>a</code> must be natural.</td></tr><tr><td><code>coprime:natural_b</code></td><td>Input <code>b</code> must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>gcd</code></td></tr><tr><td>Must Not Call</td><td><code>floor</code>, <code>gcd_2</code>, <code>gcd_s</code>, <code>logical</code>, <code>mod</code>, <code>rem</code>, <code>xgcd</code>, <code>xgcd_tail</code>, <code>xgcd_while</code></td></tr><tr><td>Counted Calls</td><td><code>isN</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><em>None specified.</em></td></tr><tr><td>Must Use Syntax</td><td><code>==</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>/</code>, <code>for</code>, <code>if</code>, <code>switch</code>, <code>while</code></td></tr></table>

Two naturals are coprime when their GCD is 1.

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


