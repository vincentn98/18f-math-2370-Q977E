
# Abstract

This is a library of functions that you can use on all of your `pex`.
Some of the functions will be provided for you, and some of them you'll have to write for yourself.
Some terminology is also recorded here.

# Terminology

## Logical values: `false` and `true`

In MATLAB, the logical values in MATLAB are `false` and `true` (actually, they are `logical(0)` and `logical(1)` -- `false` and `true` are synonyms).
Here are some examples.

| MATLAB Expression | Comment |
| --- | --- |
| `false` | MATLAB's logical false value. |
| `23 > 70` | Evaluates to `false`. |

| MATLAB Expression | Comment |
| --- | --- |
| `true` | MATLAB's logical true value. |
| `23 < 70` | Evaluates to `true`. |

## Comments

Humans write and read source code files. 
Sometimes the intent of the code is not clear to a human reader and a little commentary in human language can help a lot! See below on how to write a comment.
Here is an example.

```matlab
% Comments are started with the % character.
% On a line in a .m file, any text from a % to
% the end of line is a comment, and will be 
% ignored by MATLAB.

% The strcmp function is for *string comparisons*.
% You can type help strcmp at the MATLAB prompt to 
% read more about it.
if strcmp(course_name, 'MATH 2370')
    % This is the best course!
    happy = 100;
else
    % Not quite as good as MATH 2370.
    happy = 95;
end
```

## Doctrings (Documentation Strings)

MATLAB has a function named `floor`.
One of the ways to find out what `floor` is and how it works is to type `help floor` at the command console.

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
function y = is_best_number(x)
    % is_best_number: Determines if a number is 2370.
    %     Signature: y = is_best_number(x)
    %     Input x: Any value.
    %     Output y: true when x == 2370, false otherwise.
    y = (x == 2370);
end
```

And now at the command console, we can get `is_best_number`'s docstring.

```
>> help is_best_number
  is_best_number: Determines if a number is 2370.
      Signature: y = is_best_number(x)
      Input x: Any value.
      Output y: true when x == 2370, false otherwise.
```


# Task

Descriptions of the individual tasks are in the directories with the `+` prefix.
For example, if you need to make a function named `foo` then:

1. You will need to make a file named `foo.m` which will be in **this directory** (not `+foo`).
1. Detailed instructions about that function will be in the directory `+foo`.

Here are links to the tasks.

1. [isN](+isN)
1. [isR](+isR)
1. [isZ](+isZ)
1. [iseven](+iseven)
1. [isodd](+isodd)

