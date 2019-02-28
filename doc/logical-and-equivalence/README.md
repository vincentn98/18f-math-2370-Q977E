
# Logicals and Equivalence

All MATLAB variables have a **type**.
The function `class` can be used to show you the type.
By default, the numbers you type in m-files and at the console are `double`.

```matlab
>> class(2370)  % What kind of thing is the number `2370`?
                %
ans = 'double'  % A strange name from a quirk of history.
                %
                % Computers don't use real numbers in sense used in a math class.
                % Rather, computers use something called an IEEE 754 floating point number, or just `float` 
                % for short. You can think of a `float` as something like a real number that does rounding 
                % after % every operation (+, -, *, /, etc.). This rounding is chosen to be predictiable.
                %
                % Some problems require more accuracy than others. In such cases the computer has the
                % the ability to use a float with twice as many bits. Such a float is called a `double`.
                % By default, all numbers in MATLAB are `double`.
                %
>> class(false) % What kind of thing is `false`?
                %
ans = 'logical' % A `logical`.
                %
```

The type of false/true values is called `logical`.

```matlab
>> false         % `false` is a synonym for `logical(0)`.
                 % 
ans = logical(0) %
                 % 
>> true          % `true` is a synonym for `logical(1)`.
                 % 
ans = logical(1) %
                 % 
```

## Logicals should not be used with `==`

```matlab

% ------------------------ NO ------------------------

x = 'potato';
if isnumeric(x) == true
    y = 8;
else
    y = 5;
end






% ------------------------ NO ------------------------

x = 'potato';
if isnumeric(x) == 1
    y = 8;
else
    y = 5;
end





% ------------------------ YES -----------------------

x = 'potato';
if isnumeric(x)
    y = 8;
else
    y = 5;
end

```

## Logical Negation: `~`

Sometimes new programmers use equivalence to `false` when they want to say *is not*.
Here is an example of the correct idiom:

```matlab

% ------------------------ NO ------------------------

x = 'potato';

if isnumeric(x) == false
    y = 8;
else
    y = 5;
end





% ------------------------ YES -----------------------
%
% Tilde is logical negation: ~
% That reads as if not is numeric x.

x = 'potato';

if ~isnumeric(x)
    y = 8;
else
    y = 5;
end

```


## Implicit Type Conversions

There is a historically imporant/influential programming languaged called C.
The C programming language does not have a separate type for logical values.
Rather, the C convention is that `0` is interpreted as `false` and anything non-zero is interpreted as `true`.
MATLAB has inherited this convention.

```matlab
>> logical(23)       % Because `23` is non-zero, it's logical value is `true`.
                     %
ans = logical(1)     %
                     %
>> logical(70)       % Because `70` is non-zero, it's logical value is `true`.
                     %
ans = logical(1)     %
                     %
>> isa(1, 'logical') % Is `1` a logical value?
                     %
ans = logical(0)     % No, it's a `double`.
                     %
```

The problem with the C convention is that the mapping is not injective (invertible).

```matlab
>> logical(23) == logical(70) % Both map to `true`, and `true == true` evaluates to `true`.
                              %
ans = logical(1)              %
                              %
>> 23 == 70                   % Yet `23` and `70` are not the same.
                              %
ans = logical(0)              %
                              %
```

The non-injectivity causes surprises.
 
```matlab
>> ~false        % The logical negation of `false` is ...
                 % 
ans = logical(1) % `true`
                 %
>> ~(~false)     % The logical negation of the logical negation of `false` is ...
                 % 
ans = logical(0) % `false`
                 %
>> 23 == 70      % These are not equivalent.
                 % 
ans = logical(0) %
                 %
>> ~23 == ~70    % But these are!
                 % 
ans = logical(1) %
                 %
>> true == 23    % These are not equivalent.
                 % 
ans = logical(0) %
                 %
>> ~true == ~23  % But these are!
                 % 
ans = logical(1) %
                 %
>> true == 1     % These are equivalent even though they're not even the same kind of thing!
                 % 
ans = logical(1) %
                 %
```

As a result, the C convention is not allowed in MATH 2370.

