
# `mod_mult_inv`

<table><tr><td>Description</td><td>Calculate the modular multiplicative inverse of <code>a</code> modulo <code>b</code>.</td></tr><tr><td>Signature</td><td><code>x&nbsp;=&nbsp;mod_mult_inv(a,&nbsp;b)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>a</code></td><td>A natural less than <code>b</code>.</td></tr><tr><td><code>b</code></td><td>A natural greater than <code>1</code>.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>x</code></td><td>A natural less than <code>b</code> such that <code>mod(x*a, b) == 1</code>.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>mod_mult_inv:a_less_than_b</code></td><td>Inputs must satisfy <code>a &lt; b</code>.</td></tr><tr><td><code>mod_mult_inv:b_greater_than_1</code></td><td>Input <code>b</code> must be greater than <code>1</code>.</td></tr><tr><td><code>mod_mult_inv:exists</code></td><td>The modular multiplicative inverse does not exist.</td></tr><tr><td><code>mod_mult_inv:natural_a</code></td><td>Input <code>a</code> must be natural.</td></tr><tr><td><code>mod_mult_inv:natural_b</code></td><td>Input <code>b</code> must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><em>None specified.</em></td></tr><tr><td>Must Not Call</td><td><code>floor</code>, <code>gcd</code>, <code>gcd_2</code>, <code>gcd_s</code>, <code>logical</code>, <code>mod</code>, <code>rem</code>, <code>xgcd</code>, <code>xgcd_tail</code></td></tr><tr><td>Counted Calls</td><td><code>coprime</code>, <code>isN</code>, <code>xgcd_while</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><em>None specified.</em></td></tr><tr><td>Must Use Syntax</td><td><em>None specified.</em></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>/</code>, <code>for</code>, <code>while</code></td></tr></table>

The XGCD calculates `d`, `x` and `y` such that:

```
    d == x*a + y*b
```

The modular multiplicative inverse exists exactly when `d == 1`.

```
    1 == x*a + y*b
```

If we apply modulo `b` to both sides of the equation, then:


```
            1 == x*a + y*b
    mod(1, b) == mod(x*a + y*b, b) % modulo `b` both sides
            1 == mod(x*a + y*b, b) % because `1 < b`
            1 == mod(x*a, b)       % because `mod(y*b, b) == 0`
```

So `x` (the Bezout coefficient for `a`) was exactly what we were looking for ... **almost**.
The Bezout coefficients `x, y` calculated by XGCD are **integers**, but this function requires
a **natural** `x`. In fact, those equations above are a little misleading because as soon as
we introduced `mod`, the integer constants/variables became equivalence classes, equivalence
became congruence, et cetera.

There are infinitely many Bezout pairs which satisfy `1 == x*a + y*b`. Due to the way we defined
and calculated XGCD (the initial conditions and satisfying equations at each step), the Bezout
coefficients we have calculated are minimal. In the specific case here with `a < b`, the `x`
coefficient must satisfy:

```
   -b < x < b  and  x ~= 0
```

So `x` is *small* compared to `b`. But it could be negative and therefore not natural.
One of the following is true.

1. `x > 0`. Then `x` is the natural modular multiplicative inverse we were looking for.
1. `x < 0`. Then `x` is **not** the natural modular multiplicative inverse we were looking for. But `x + b > 0` **is** the natural modular multiplicative inverse we were looking for.

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


