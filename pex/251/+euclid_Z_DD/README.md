
# `euclid_Z_DD`

<table><tr><td>Description</td><td>Euclidean division over the integers, <strong>sign agrees with dividend</strong> rule.</td></tr><tr><td>Signature</td><td><code>[q,&nbsp;r]&nbsp;=&nbsp;euclid_Z_DD(N,&nbsp;d)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>N</code></td><td>Dividend, an integer.</td></tr><tr><td><code>d</code></td><td>Divisor, a non-zero integer.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>q</code></td><td>The quotient, an integer.</td></tr><tr><td><code>r</code></td><td>The remainder.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>euclid_Z_DD:integer_dividend</code></td><td>Dividend <code>N</code> must be integer.</td></tr><tr><td><code>euclid_Z_DD:nonzero_integer_divisor</code></td><td>Divisor <code>d</code> must be non-zero integer.</td></tr></table></td></tr><tr><td>Must Call</td><td><em>None specified.</em></td></tr><tr><td>Must Not Call</td><td><code>abs</code>, <code>floor</code>, <code>mod</code>, <code>rem</code></td></tr><tr><td>Counted Calls</td><td><code>euclid_Z_LP</code>, <code>isZ</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><em>None specified.</em></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>/</code>, <code>^</code>, <code>for</code>, <code>while</code></td></tr></table>

See the documentation for `euclid_Z_LP` for the definition of this rule.

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


