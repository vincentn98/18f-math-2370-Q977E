
# No Busy Work

There should be no *busy work* in your functions.

## Work that does not affect the computation

Example:

```matlab

% ------------------------ NO ------------------------

x = 'potato';
if isnumeric(x)
    y = 8;
else
    y = 5;
    23 + 70; % Great numbers, but why are you doing this?
end





% ------------------------ YES -----------------------

x = 'potato';
if isnumeric(x)
    y = 8;
else
    y = 5;
end

```

## Work that only needs to be performed once

Another definition of `busy work` is work that would easy to perform just once, but you're doing it over and over again. 
This almost always because of either:

1. A bunch of copy/paste.
1. Not understanding you can save something as a variable.

Example:

```matlab

% ------------------------ NO ------------------------

x = 'potato';
y0 = 23 + function_that_takes_a_long_time(x);
y1 = 70 + function_that_takes_a_long_time(x);
y2 = 20 + function_that_takes_a_long_time(x);
y3 = 18 + function_that_takes_a_long_time(x);





% ------------------------ YES -----------------------

x = 'potato';
w = function_that_takes_a_long_time(x);
y0 = 23 + w;
y1 = 70 + w;
y2 = 20 + w;
y3 = 18 + w;

```

