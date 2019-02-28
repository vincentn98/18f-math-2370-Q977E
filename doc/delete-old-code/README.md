
# Delete Old Code

Sometimes when you're figuring out how to write a program, you try different things. 
And while you're trying different things, you might comment-out a bunch of code. 
That's fine, but when you submit code you need to remove such blocks. 
If you want to remember old code then look it up in the repository history for that file.
That's part of what the repo is for!

Example:

```matlab

% ------------------------ NO ------------------------

x = 23;

% This was the old version of the code.
%if x == 23 
%    y = 'seventy';
%else
%    y = 'twenty-three';
%end

if x == 23 
    y = 'twenty-three';
else
    y = 'seventy';
end






% ------------------------ YES -----------------------

x = 23;

if x == 23 
    y = 'twenty-three';
else
    y = 'seventy';
end

```

