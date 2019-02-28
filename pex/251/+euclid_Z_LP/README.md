
# `euclid_Z_LP`

<table><tr><td>Description</td><td>Euclidean division over the integers, <strong>least positive</strong> rule.</td></tr><tr><td>Signature</td><td><code>[q,&nbsp;r]&nbsp;=&nbsp;euclid_Z_LP(N,&nbsp;d)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>N</code></td><td>Dividend, an integer.</td></tr><tr><td><code>d</code></td><td>Divisor, a non-zero integer.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>q</code></td><td>The quotient, an integer.</td></tr><tr><td><code>r</code></td><td>The remainder.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>euclid_Z_LP:integer_dividend</code></td><td>Dividend <code>N</code> must be integer.</td></tr><tr><td><code>euclid_Z_LP:nonzero_integer_divisor</code></td><td>Divisor <code>d</code> must be non-zero integer.</td></tr></table></td></tr><tr><td>Must Call</td><td><em>None specified.</em></td></tr><tr><td>Must Not Call</td><td><code>abs</code>, <code>floor</code>, <code>mod</code>, <code>rem</code></td></tr><tr><td>Counted Calls</td><td><code>euclid_2</code>, <code>isZ</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><em>None specified.</em></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>/</code>, <code>^</code>, <code>for</code>, <code>while</code></td></tr></table>

The inputs and outputs must satisfy:

```
    N == q * d + r  and  0 <= r < |d|
```

This Euclidean division on **Z** must reduce the problem
to Euclidean division on **N** as described in `wex/251`.

# Other Choices for the Remainder

There are other ways to choose the remainder.
If we relax the inequality from `0 <= r < |d|` to `|r| < |d|` then there are now two choices for a non-zero remainder, one positive and one negative.
If the positive choice is `r` then the negative choice is `r - |d|`.

So we can define Euclidean division by requiring `|r| < |d|` and **one more rule** to uniquely choose a non-zero remainder (there is no choice when the remainder is zero).
Here are the most common rules.

1. Least positive: choose the positive one. This is the rule on `wex/251` and on this function.
1. Least absolute: If the absolute value of the negative one is less than the positive one then choose the negative one. Otherwise choose the positive one.
1. Sign agrees with dividend: `sign(r) == sign(N)`
1. Sign agrees with divisor: `sign(r) == sign(d)`

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


