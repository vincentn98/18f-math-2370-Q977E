
# `fibonacci_human_auxiliary`

<table><tr><td>Description</td><td>The auxiliary Fibonacci function.</td></tr><tr><td>Signature</td><td><code>m&nbsp;=&nbsp;fibonacci_human_auxiliary(n,&nbsp;a,&nbsp;b)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>A natural.</td></tr><tr><td><code>a</code></td><td>The lesser of current pair of known Fibonacci numbers.</td></tr><tr><td><code>b</code></td><td>The greater of current pair of known Fibonacci numbers.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>m</code></td><td>The <code>n</code>th Fibonacci number (assuming the initial call had the correct <code>a</code> and <code>b</code>).</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>fibonacci_human_auxiliary:monotone_increasing</code></td><td>The pair <code>a</code> and <code>b</code> must be monotone increasing.</td></tr><tr><td><code>fibonacci_human_auxiliary:natural_a</code></td><td>Input <code>a</code> must be natural.</td></tr><tr><td><code>fibonacci_human_auxiliary:natural_b</code></td><td>Input <code>b</code> must be natural.</td></tr><tr><td><code>fibonacci_human_auxiliary:natural_n</code></td><td>Input <code>n</code> must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>error</code>, <code>fibonacci</code></td></tr><tr><td>Counted Calls</td><td><code>isN</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><code>+</code>, <code>if</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>for</code>, <code>while</code></td></tr></table>

This must be the recursive function with signature `N x N x N -> N` with 2 clauses.
This kind of function is referred to as an auxiliary function.

Note that this function is actually capable of evaluating lots of sequences
which are not the Fibonacci sequence, by altering the first two numbers in the sequence.
For example, in our class the first two numbers in the sequence are 0 and 1:

```
      0, 1, 1, 2, 3, 5, 8, 13, ...
```

Another common definition is that the first two numbers are 1 and 1:

```
      1, 1, 2, 3, 5, 8, 13, ...
```

I've never heard of the first two numbers being 5 and 8, but it makes sense to say:

```
      5, 8, 13, 21, 34, ...
```

And in principle (where this function is concerned), the first two numbers could be anything:

```
      23, 70, 93, 163, ...
```

As a small constraint on this, the `a` and `b` arguments will be checked to verify they are natural and monotone increasing.

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


