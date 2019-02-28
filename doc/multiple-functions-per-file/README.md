
# Multiple Functions per File

Multiple functions can appear per file. 
Remember that the only function visible from MATLAB will be the function which has the same name as the file, which needs to be at the TOP of the file.

Example:

```matlab

% ------------------------ NO ------------------------

% The contents of file f.m
function y = f(x)
    if x == 5
        y = g(x) + 6;
    else
        y = (g(x))^2;
    end
end

    % This should be indented at the same level as the
    % function immediately before it.
    function y = g(x)
        y = 3*x + 7;
    end
% The end of file f.m






% ------------------------ YES -----------------------

% The contents of file f.m
function y = f(x)
    if x == 5
        y = g(x) + 6;
    else
        y = (g(x))^2;
    end
end

function y = g(x)
    y = 3*x + 7;
end
% The end of file f.m






% ------------------------ YES -----------------------

% The contents of file f.m
function y = f(x)

    % This function g is only visible/accessible from
    % within the function f.
    function y = g(x)
        y = 3*x + 7;
    end

    if x == 5
        y = g(x) + 6;
    else
        y = (g(x))^2;
    end
end
% The end of file f.m

```


