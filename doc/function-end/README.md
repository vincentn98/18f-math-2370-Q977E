
# Function End

`function` bodies must be terminated by an `end`. 
This is not necessary for MATLAB (in that MATLAB does not generate a syntax error if you leave off the `end`).
However, it is mandatory in our class.

Example:

```matlab

% ------------------------ NO ------------------------

% The contents of file f.m
function y = f(x)
    if y == 5
        x = 6 + 8;
    end
% The end of file f.m





% ------------------------ NO ------------------------

% The contents of file f.m
function y = f(x)
    if y == 5
        x = 6 + 8;
end % <-- this is the end of *if*, even though
    % it looks like it is the end of *function*.
% The end of file f.m






% ------------------------ YES -----------------------

% The contents of file f.m
function y = f(x)
    if y == 5
        x = 6 + 8;
    end
end
% The end of file f.m

```

