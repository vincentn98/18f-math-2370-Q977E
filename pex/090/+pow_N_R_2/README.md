
# `pow_N_R_2`

<table><tr><td>Description</td><td>raise a real <code>x</code> to a natural exponent <code>n</code>.</td></tr><tr><td>Signature</td><td><code>y&nbsp;=&nbsp;pow_N_R_2(n,&nbsp;x)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>A natural.</td></tr><tr><td><code>x</code></td><td>A real.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>y</code></td><td><code>x^n</code></td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>pow_N_R_2:natural_n</code></td><td>Input <code>n</code> must be natural.</td></tr><tr><td><code>pow_N_R_2:real_x</code></td><td>Input <code>x</code> must be real.</td></tr><tr><td><code>pow_N_R_2:undefined_0_0</code></td><td><code>0^0</code> is undefined.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>error</code>, <code>power</code></td></tr><tr><td>Counted Calls</td><td><code>iseven</code></td></tr><tr><td>Explode if Called</td><td><code>pow_N_R</code></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><code>/2 (no general /)</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>.^</code>, <code>^</code>, <code>for</code>, <code>while</code></td></tr></table>

Implementation requirements:

1. Must use the parity (even/odd) algorithm.

Be sure to try out your function before running `test`. Example:

```
>> pow_N_R_2(3, 5)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


