
# Errors Early

When it is necessary to detect error conditions, you need to detect them as early as possible.

Example:

```matlab

% ------------------------ NO ------------------------
% This is not good b/c you're adding to x before checking if x is a number.

function y = add_a_good_number(x)
    y = x + 2370;
    assert(isR(x), 'add_a_good_number:real', 'Input must be real.');
end





% ------------------------ YES -----------------------

function y = add_a_good_number(x)
    assert(isR(x), 'add_a_good_number:real', 'Input must be real.');
    y = x + 2370;
end

```

