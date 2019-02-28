
# `gcd_2`

<table><tr><td>Description</td><td>Greatest Common Divisor, without Euclidean division, using divisions by 2 and subtractions.</td></tr><tr><td>Signature</td><td><code>d&nbsp;=&nbsp;gcd_2(a,&nbsp;b)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>a</code></td><td>A natural.</td></tr><tr><td><code>b</code></td><td>A natural.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>d</code></td><td>The GCD of <code>a</code> and <code>b</code>.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>gcd_2:natural_a</code></td><td>Input <code>a</code> must be natural.</td></tr><tr><td><code>gcd_2:natural_b</code></td><td>Input <code>b</code> must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><em>None specified.</em></td></tr><tr><td>Must Not Call</td><td><code>euclid_2</code>, <code>floor</code>, <code>gcd</code>, <code>gcd_s</code>, <code>isodd</code>, <code>mod</code>, <code>rem</code></td></tr><tr><td>Counted Calls</td><td><code>isN</code>, <code>iseven</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><code>*2 (no general *)</code>, <code>-</code>, <code>/2 (no general /)</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>return</code></td></tr></table>

The function you must implement here is slightly different than the one written in the lecture notes.
Try to figure out the difference, and why the difference works!

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


