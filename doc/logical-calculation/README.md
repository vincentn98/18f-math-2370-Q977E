
# Logical Calculations

When performing a logical calculation which can be expressed with `&&` (and), `||` (or), and `~` (not),
this logical expression should be the right-hand-side of an assignment.

```matlab

% ------------------------ NO ------------------------

x = 'potato';
y = 'dignity';

if isnumeric(x) && ~isnumeric(y)
    z = true;
else
    z = false;
end





% ------------------------ YES -----------------------

x = 'potato';
y = 'dignity';

z = isnumeric(x) && ~isnumeric(y);

```


