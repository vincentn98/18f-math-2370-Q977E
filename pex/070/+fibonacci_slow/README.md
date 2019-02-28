
# `fibonacci_slow`

<table><tr><td>Description</td><td>The Fibonacci function.</td></tr><tr><td>Signature</td><td><code>m&nbsp;=&nbsp;fibonacci_slow(n)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>A natural.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>m</code></td><td>The <code>n</code>th Fibonacci number.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>fibonacci_slow:natural</code></td><td>Input must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>error</code>, <code>fibonacci</code></td></tr><tr><td>Counted Calls</td><td><code>isN</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>true</code></td></tr><tr><td>Must Use Syntax</td><td><code>if</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>^</code>, <code>for</code>, <code>while</code></td></tr></table>

This must be the recursive function with signature `N -> N` and 3 clauses (see lecture).
This is a **terribly** inefficient/slow way to calculate Fibonacci numbers.

Be sure to try out your function before running `test`. Example:

```
>> fibonacci_slow(7)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


