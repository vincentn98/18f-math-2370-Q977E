
# `fibonacci_human`

<table><tr><td>Description</td><td>The Fibonacci function.</td></tr><tr><td>Signature</td><td><code>m&nbsp;=&nbsp;fibonacci_human(n)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>A natural.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>m</code></td><td>The <code>n</code>th Fibonacci number.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>fibonacci_human:natural</code></td><td>Input must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>error</code>, <code>fibonacci</code></td></tr><tr><td>Counted Calls</td><td><code>fibonacci_human_auxiliary</code>, <code>isN</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>false</code></td></tr><tr><td>Must Use Syntax</td><td><em>None specified.</em></td></tr><tr><td>Must Not Use Syntax</td><td><code>*</code>, <code>+</code>, <code>-</code>, <code>for</code>, <code>if</code>, <code>while</code></td></tr></table>

This must be the function with signature `N -> N` which calls the `N x N x N -> N` function (see lecture).
This function doesn't really perform any work, it just makes the call to the `N x N x N -> N` function.

Be sure to try out your function before running `test`. Example:

```
>> fibonacci_human(7)
```

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


