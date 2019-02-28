
# Human Grammar

When you're typing messages that are meant to be read by
a human you need to use proper spelling, grammar, et cetera.
E.g., docstrings and the human-readable part of error messages.

Example:

```matlab

% ------------------------ NO ------------------------

function y = foo(x)
    assert(isnumeric(x), 'foo:numeric', 'U must gimme numeric stuffs!');
    y = 3*x;
end






% ------------------------ YES -----------------------

function y = foo(x)
    assert(isnumeric(x), 'foo:numeric', 'Input must be numeric.');
    y = 3*x;
end

```

