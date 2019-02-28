
# Multiple Outputs

Some functions have multiple outputs.
For example, the following function has **four outputs** and **two inputs**.

```matlab
function [yummy, to, my, tummy] = fruit(buh, na, nuh)
    yummy = 23 * buh + 70 * na;
    to = buh * na * nuh;
    my = buh ^ 2;
    tummy = buh / na / nuh;
end
```

Most problem arise from not **calling** a function correctly, or not **composing** functions correction.

## Calling Functions with Multiple Outputs

When you call a function with more than one output, you need to call it with a left-hand-side which will:

1. Capture the outputs you want with the names you want.
1. Ignore the outputs you don't want.

If you go to this directory (`pex/multiple-outputs`) in MATLAB then you can experiment with the following at the MATLAB console.

```matlab

>> fruit(1, 2, 3)

ans = 163 % First output. You didn't give it a name, so MATLAB called it `ans`.
          % Other outputs are ignored.




>> spam = fruit(1, 2, 3)

spam = 163 % First output. You told MATLAB to call it `spam`.
           % Other outputs are ignored.




>> [spam, eggs] = fruit(1, 2, 3) % You have to use brackets `[` to capture more than one output.

spam = 163 % First output. You told MATLAB to call it `spam`.
eggs = 6   % Second output. You told MATLAB to call it `eggs`.
           % Other outputs are ignored.




>> [spam, eggs, coffee] = fruit(1, 2, 3)

spam   = 163 % First output. You told MATLAB to call it `spam`.
eggs   = 6   % Second output. You told MATLAB to call it `eggs`.
coffee = 1   % Third output. You told MATLAB to call it `coffee`.
             % Other outputs are ignored.




>> [spam, eggs, coffee, oj] = fruit(1, 2, 3)

spam   = 163     % First output. You told MATLAB to call it `spam`.
eggs   = 6       % Second output. You told MATLAB to call it `eggs`.
coffee = 1       % Third output. You told MATLAB to call it `coffee`.
oj     = 0.16667 % Fourth output. You told MATLAB to call it `oj`.
                 % There are no other outputs.




>> [spam, eggs, coffee, oj, hotsauce] = fruit(1, 2, 3) % It is an error to ask `fruit` for more than 4 outputs.

Error using fruit
Too many output arguments.




>> [~, eggs, coffee, oj] = fruit(1, 2, 3) % To explicitly ignore an output, use `~` for its name. No spam, please!

                 % First output not captured.
eggs   = 6       % Second output. You told MATLAB to call it `eggs`.
coffee = 1       % Third output. You told MATLAB to call it `coffee`.
oj     = 0.16667 % Fourth output. You told MATLAB to call it `oj`.

```

## Composing Functions with Multiple Outputs

Suppose you have two functions with the following signatures.

```matlab

function [yummy, to, my, tummy] = fruit(buh, na, nuh)

function [thing1, thing2] = seuss(x, y)

```

It might come to pass that you want to compose these functions.
Suppose the first two inputs to `fruit` should be the outputs of `seuss`.

```matlab

% Incorrect 1: You're only passing two arguments to `fruit`!
[a, b, c, d] = fruit(suess(23, 70), 2018) 



% Incorrect 2: These two lines are equivalent to "Incorrect 1".
t = suess(23, 70)             % Capture first output, ignore second output.
[a, b, c, d] = fruit(t, 2018) % You're only passing two arguments to `fruit`!



% Correct.
[green, eggs] = seuss(23, 70)
[a, b, c, d] = fruit(green, eggs, 2018)

```


