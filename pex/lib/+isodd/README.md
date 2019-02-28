
# `isodd`

<table><tr><td>Description</td><td>Determines if <code>n</code> is odd.</td></tr><tr><td>Signature</td><td><code>y&nbsp;=&nbsp;isodd(n)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td><em>Any</em> value whatsoever.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>y</code></td><td>True when <code>n</code> is natural and not even, <code>false</code> otherwise.</td></tr></table></td></tr><tr><td>Exceptions</td><td>No exceptions <em>specific to this function</em> were recorded.</td></tr><tr><td>Must Call</td><td><em>None specified.</em></td></tr><tr><td>Must Not Call</td><td><code>mod</code></td></tr><tr><td>Counted Calls</td><td><code>isN</code>, <code>iseven</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><em>None specified.</em></td></tr><tr><td>Must Use Syntax</td><td><code>&&</code>, <code>~</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>==</code>, <code>if</code></td></tr></table>

This function must be defined for *all* inputs, e.g., `isodd('kitty')` is `false`.

Be sure to try out your function before running `test`. Example:

```
>> isodd(7023)
```

**Hint:** Note the way `isodd` and `iseven` are defined!

```
>> iseven('kitty') % is false
>> isodd('kitty')  % is false
```

Therefore `'kitty'` is neither *even* nor *odd*.

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


