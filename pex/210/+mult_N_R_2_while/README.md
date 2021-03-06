
# `mult_N_R_2_while`

<table><tr><td>Description</td><td>Multiply a natural and a real, using a tail recursion.</td></tr><tr><td>Signature</td><td><code>y&nbsp;=&nbsp;mult_N_R_2_while(n,&nbsp;x)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>A natural.</td></tr><tr><td><code>x</code></td><td>A real.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>y</code></td><td><code>n*x</code></td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>mult_N_R_2_while:natural_n</code></td><td>Input <code>n</code> must be natural.</td></tr><tr><td><code>mult_N_R_2_while:real_x</code></td><td>Input <code>x</code> must be real.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>error</code>, <code>mult_N_R</code>, <code>mult_N_R_2</code>, <code>mult_N_R_2_tail</code></td></tr><tr><td>Counted Calls</td><td><code>iseven</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>false</code></td></tr><tr><td>Must Use Syntax</td><td><code>*2 (no general *)</code>, <code>/2 (no general /)</code>, <code>while</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>for</code></td></tr></table>

This function file must use a `while` loop and the same parity trick used in the original `mult_N_R_2`. Example of a `while` loop:

```matlab
n = 1;
while n < 2370
    % More!
    n = 2 * n;
end
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


