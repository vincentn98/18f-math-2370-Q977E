
# `xgcd_lcm_Z_LA`

<table><tr><td>Description</td><td>XGCD and LCM over <strong>Z</strong> using <strong>least absolute</strong> Euclidean division.</td></tr><tr><td>Signature</td><td><code>[d,&nbsp;x,&nbsp;y,&nbsp;m]&nbsp;=&nbsp;xgcd_lcm_Z_LA(a,&nbsp;b)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>a</code></td><td>An integer.</td></tr><tr><td><code>b</code></td><td>An integer.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>d</code></td><td>The GCD of <code>a</code> and <code>b</code>, a natural.</td></tr><tr><td><code>x</code></td><td>Bezout coefficient for <code>a</code>, an integer.</td></tr><tr><td><code>y</code></td><td>Bezout coefficient for <code>b</code>, an integer.</td></tr><tr><td><code>m</code></td><td>LCM of <code>a</code> and <code>b</code>, a natural.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>xgcd_lcm_Z_LA:integer_a</code></td><td>Input <code>a</code> must be integer.</td></tr><tr><td><code>xgcd_lcm_Z_LA:integer_b</code></td><td>Input <code>b</code> must be integer.</td></tr></table></td></tr><tr><td>Must Call</td><td><em>None specified.</em></td></tr><tr><td>Must Not Call</td><td><code>abs</code>, <code>euclid_2</code>, <code>floor</code>, <code>gcd</code>, <code>gcd_2</code>, <code>gcd_s</code>, <code>lcm</code>, <code>mod</code>, <code>rem</code>, <code>xgcd</code>, <code>xgcd_tail</code>, <code>xgcd_while</code></td></tr><tr><td>Counted Calls</td><td><code>euclid_Z_LA</code>, <code>isZ</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>false</code></td></tr><tr><td>Must Use Syntax</td><td><code>while</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>/</code>, <code>^</code>, <code>for</code></td></tr></table>

# Least Common Multiple

The *order* used in GCD and LCM is the division order.
Let `a, b, n, m` in **N**.
You say `a` is *division-order less-than* n `n` and write `a <| n` when there is an `m` such that `a * m == n`.
Some notes about the phrase *divison-order less-than* and the notation `<|`:

1. In lecture we wrote `<|` as a verticle bar and a less-than on top of each other.
1. A much more common notation than `<|` is `|`, as in `a | b`. But the problem with that notation is:
   1. A `|` is (visually) horizontally symmetric, but the division order is not symmetric.
      1. `a < b`: `a` is linear-order less-than `b`
      1. `a > b`: `a` is linear-order greater-than `b`
      1. `a | b`: `a` is division-order less than `b`, but **you can't turn around** a `|` like you turn around a `<`.
      1. `a <| b`: `a` is division-order less-or-equal to `b`
      1. `a |> b`: `a` is division-order greater-or-equal to `b`
1. A much more common phrase than *division-order less-than* is *divides*, as in `a <| b` is said `a` divides `b`.
1. The phrase *division-order less-than* and the notation `<|` are chosen to emphasize that `<|` is an **order**.

Concerning **least** and **greatest**, there are some notable surprises about the division order.

1. `0` is least in the linear order: `0 <= n` for all natural `n`.
1. There is no greatest natural in the linear order.
1. `0` is the greatest natural in the division order: `n <| 0` for all natural `n` because `n * 0 = 0`.
1. `1` is neither least nor greatest in the linear order.
1. `1` is least in the division order: `1 <| n` for all natural `n` because `1 * n = n`.

In math, many objects/functions come in pairs, especially when it comes to *ordering* things.

1. `min` and `max`
1. `inf` and `sup`
1. `gcd` and `lcm`

Contrary to the word *greatest* in the title GCD, `gcd` is analogous to `inf` (and `min`) because GCD is the greatest of all of the **little** things:

1. Let `LB(a, b)` denote the set of all `n` such that `n <| a` and `n <| b` (the division-order lower-bounds).
1. `1` is in `LB(a, b)` because `1 <| a` and `1 <| b`.
1. Then `d = gcd(a, b)` is the division-order greatest element of `LB(a, b)`:  `n <| d` for all `n` in `LB(a, b)` (the *biggest* **little** number).

Similarly, `lcm` is analogous to `sup` (and `max`) because LCM is the least of all of the **big** things (which `a` and `b` both divide).

1. Let `UB(a, b)` denote the set of all `n` such that `n |> a` and `n |> b` (the division-order upper-bounds).
1. `0` is in `UB(a, b)` because `0 |> a` and `0 |> b`.
1. Then `m = lcm(a, b)` is the division-order least element of `UB(a, b)`:  `m <| n` for all `n` in `UB(a, b)` (the *littlest* **big** number).

For GCD, this means:

1. `gcd(a, b) = gcd(b, a)`: GCD is symmetric because the order of elements in a set does not matter.
1. `gcd(0, a) = a`: because `a` is the greatest divisor of `a` (`a <| a`), and everything divides `0` (`a <| 0`), so the greatest **common** divisor is `a`.
1. `gcd(0, 0) = 0`: every natural divides `0` (`d <| 0`), including `0` (`0 <| 0`), and the greatest of all naturals is `0`.

For LCM, this means:

1. `lcm(a, b) = lcm(b, a)`: LCM is symmetric because the order of elements in a set does not matter.
1. `lcm(0, a) = 0`: because the only upper-bound of `0` is `0`: `0 <| n` implies `n = 0`.
1. `lcm(0, 0) = 0`: for the same reason as `lcm(0, a) = a`.

# Equations/Inequalities for LCM

Dual pairs like `gcd` and `lcm` usually satisfy a relationship which makes it to where you can calculate one with the other.

1. `max(a, b) + min(a, b) = a + b`: If you have a formula for `min` then `max(a, b) = (a + b) - min(a, b)`.
1. `gcd(a, b) * lcm(a, b) = a * b`: If you have a formula for `gcd` then `lcm(a, b) = (a * b) / gcd(a, b)`. Well, almost: you'd have to handle `lcm(0, 0)` specially because `gcd(0, 0) = 0`.

So we could calculate LCM from GCD using a `*` and a `/`.
A major theme of calculating GCD is to **avoid** `/`, so using `/` (and the fact that `(0, 0)` must be treated specially) should send you searching for something better.
Recall the tail-recursive XGCD function `X(r0, x0, y0 | r1, x1, y1)`, and that its exit clause is reached when `r0 == 0`:

```matlab
    (d, x, y) = X(0, x0, y0 | r1, x1, y1) = (r1, x1, y1) % The XGCD is the second group of arguments.
```

Many students remark/consider that the first group of arguments seem superfluous in the exit clause.
But remember that each group represents an equation, so when the exit clause is reached:

```matlab
     0 == x0 * a + y0 * b % because r0 == 0.
    r1 == x1 * a + y1 * b
```

And that means:

```matlab
     x0 * a == -y0 * b
```

Therefore (ignoring sign issues for the moment):

1. `a <| x0 * a` and `a <| y0 * b`.
1. `b`<| y0 * b` and `b <| x0 * a`.

Using these (division order) inequalities and the preceding equation, we can determine a formula for LCM.

# GCD/LCM Formulas on **Z**

Note that the inputs to this XGCD are in **Z**, but by definition `gcd(a, b)` and `lcm(a, b)` are in **N**.
As a result, you'll need to flip some signs in some cases to get a natural result.
Here are some formulas.

1. `gcd(0, a) = |a|`
1. `gcd(a, b) * lcm(a, b) = |a * b|`

Suppose we have solved the XGCD problem: `[d, x, y] = XGCD(a, b)` and we have the `x0` Bezout coefficient mentioned above.
The following are evaluated top-to-bottom.

1. `d == 0` implies `a == 0` and `b == 0`, which implies `lcm(a, b) == lcm(0, 0) == 0` (by definition).
1. `a == 0` implies `lcm(0, b) = 0` (by definition).
1. `b == 0` implies `lcm(a, 0) = 0` (by definition).
1. The (division order) inequalities imply `lcm(a, b) = |x0 * a|`.

# The **Least Absolute** Rule

Why would you want to use the **LA** rule instead of the **LP** rule when computing GCD?
Suppose you divide 276 by 100 using the **LP** and **LA** rules:

```
    274 == 2 * 100 + 74 % the LP remainder is r = 74
    274 == 3 * 100 - 26 % the LA remainder is r = -26
```

Recall the GCD (and XGCD) property:

```matlab
    xgcd(a, b) == xgcd(r, a) % where r is remainder of division
```

The goal is to get to `r = 0`.
Now that we're dividing on **Z** instead of **N**, you should revisit/verify that you could continue the computation with either remainder.
So you only need to ask yourself: which remainder do I want to continue with?

```matlab
    xgcd(100, 274) == xgcd( 74, 100) % r = 74 is good
    xgcd(100, 274) == xgcd(-26, 100) % r = -26 is even better b/c -26 is closer to 0
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


