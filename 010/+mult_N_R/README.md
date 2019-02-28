
# `mult_N_R`

<table><tr><td>Description</td><td>Multiply a natural <code>n</code> and a real <code>x</code> using repeated addition.</td></tr><tr><td>Signature</td><td><code>y&nbsp;=&nbsp;mult_N_R(n,&nbsp;x)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>A natural.</td></tr><tr><td><code>x</code></td><td>A real.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>y</code></td><td><code>n*x</code></td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>mult_N_R:natural_n</code></td><td>Input <code>n</code> must be natural.</td></tr><tr><td><code>mult_N_R:real_x</code></td><td>Input <code>x</code> must be real.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>error</code></td></tr><tr><td>Counted Calls</td><td><code>isN</code>, <code>isR</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><code>+</code>, <code>-1</code>, <code>else</code>, <code>if</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>.*</code>, <code>for</code>, <code>while</code></td></tr></table>

Be sure to try out your function before running `test`. Example:

```
>> mult_N_R(3, 5)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


