
# Nothing after `else`

There must be a newline immediately after the `else` keyword.

Example:

```matlab

% ------------------------ NO ------------------------

if y == 5
    x = 6 + 8;
else z = 4; % there should be nothing on a line after an else keyword
end





% ------------------------ YES -----------------------

if y == 5
    x = 6 + 8;
else 
    z = 4;
end

```

