
# Docstring

One of the ways to learn and use MATLAB is by using it's online help feature.
For example, MATLAB has a function named `floor` and you can find out how `floor` works by typing `help floor` at the command console.

```
>> help floor
 FLOOR  Round towards minus infinity.
    FLOOR(X) rounds the elements of X to the nearest integers
    towards minus infinity.
 
    See also ROUND, CEIL, FIX.

    Reference page in Doc Center
       doc floor

    Other functions named floor

       codistributed/floor    gpuArray/floor    sym/floor
       duration/floor
```

The text printed by `help floor` is called `floor`'s docstring.
MATLAB has the convention that a comment immediately after the signature line in a function file is the docstring.
Here is an example.

```matlab
function y = avacado(x)
    % Taco!
    y = x + 2370;
end
```

And now at the command console, we can get `avacado`'s docstring.

```
>> help avacado
  Taco!
```

Well, that's probably not very helpful.
In MATH 2370, your docstrings must be properly formatted and contain useful information.
Here's a better example.

```matlab
function y = avacado(x)
    % avacado: Adds 2370 to its input.
    %     Signature: y = avacado(x)
    %     Input x: A numeric value.
    %     Output y: `x + 2370`.
    y = x + 2370;
end
```

And now:

```
>> help avacado
  avacado: Adds 2370 to its input.
      Signature: y = avacado(x)
      Input x: A numeric value.
      Output y: `x + 2370`.
```



