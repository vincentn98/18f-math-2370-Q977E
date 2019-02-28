
# `fibonacci_matrix`

<table><tr><td>Description</td><td>The Fibonacci function.</td></tr><tr><td>Signature</td><td><code>m&nbsp;=&nbsp;fibonacci_matrix(n)</code></td></tr><tr><td>Input</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>n</code></td><td>A natural.</td></tr></table></td></tr><tr><td>Output</td><td><table><tr><th>Name</th><th>Description</th></tr><tr><td><code>m</code></td><td>The <code>n</code>th Fibonacci number.</td></tr></table></td></tr><tr><td>Exceptions</td><td><table><tr><th>Identifier</th><th>Message</th></tr><tr><td><code>fibonacci_matrix:natural</code></td><td>Input must be natural.</td></tr></table></td></tr><tr><td>Must Call</td><td><code>assert</code></td></tr><tr><td>Must Not Call</td><td><code>error</code>, <code>fibonacci</code></td></tr><tr><td>Counted Calls</td><td><code>isN</code></td></tr><tr><td>Explode if Called</td><td><em>None specified.</em></td></tr><tr><td>Recursive</td><td><code>false</code></td></tr><tr><td>Must Use Syntax</td><td><code>*</code>, <code>^</code></td></tr><tr><td>Must Not Use Syntax</td><td><code>for</code>, <code>if</code>, <code>while</code></td></tr></table>

This must be the function which uses matrix powers to evaluate the Fibonacci function (see lecture).

Be sure to try out your function before running `test`. Example:

```
>> fibonacci_matrix(7)
```

In MATLAB, the notation for a row vector (covector) is below.
Note that the commas are *optional*.
When you want one of the components to be an expression (e.g., `x + 4`), you may need to use commas to make sure the vector components are unambiguous.
Note that MATLAB always interprets row vectors as `1 x k` matrices.

```
>> R = [23, 70]

R =

      23   70
```

In MATLAB, the notation for a column vector (vector) is below.
Note that the semicolons are **mandatory**.
Note that MATLAB always interprets column vectors as `k x 1` matrices.

```
>> C = [23; 70]

C =

      23
      70
```

In MATLAB, the notation for a matrix is below.
It is a mixture of the notation for row vectors and column vectors.
Specifically, it is listing out the elements of the matrix, one row at a time, and the rows are separated by semicolons.
Note that the commas are *optional*, but semicolons are **mandatory**.

```
>> M = [23, 70; 20, 18; 9, 18]

M =

    23    70
    20    18
     9    18
```

You can obtain the value of the element at a specific row and column like:

```
>> M(3, 1)

ans =

     9
```

In the case of a vector (row or column), you only need to supply one index.

In MATLAB, the notation to raise something to an exponent is `^`, and this also works for (square) matrices.

See the following for tables of correct/expected output.

1. [COUNT.md](COUNT.md)
1. [EXCEPTION.md](EXCEPTION.md)
1. [OUTPUT.md](OUTPUT.md)


