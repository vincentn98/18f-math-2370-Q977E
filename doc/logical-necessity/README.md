
# Logical Necessity

In an `if` statement, you should not check for a logical condition 
and for its negation because if the statement is `true` then its negation is
`false` (and v.v.). Rather, you should just use `else`.

An example:

```matlab

% ------------------------ NO ------------------------

x = 'potato';
if isnumeric(x)
    y = 8;
elseif ~isnumeric(x)
    % If you get here then x is not numeric.
    y = 5;
end





% ------------------------ YES -----------------------

x = 'potato';
if isnumeric(x)
    y = 8;
else
    % If you get here then x is not numeric.
    y = 5;
end

```

