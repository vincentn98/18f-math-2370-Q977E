
# Block Indentation

Block-bodies (`if`, `for`, `function`, `while`, etc.) must be indented
exactly 1 intendation (which is 4 spaces), and `else`/`end`/etc must
be vertically aligned.

The test scripts automatically put MATLAB into this mode which makes this easy to accomplish, so you can just run a test script.
If you want to put MATLAB in this mode yourself then:
```
  1. Change your MATLAB preferences to the proper
     indentation settings.
          
          Home Tab 
              -> Preferences 
              -> Editor/Debugger
                  -> Tab
                      -> Tab Size = 4 
                      -> Indent Size = 4 
                      -> Tab Key Inserts Spaces = True
                  -> Language
                      -> MATLAB
                          -> Function Indenting Format
                              -> Indent All Functions

  2. Open the file in question in MATLAB.
  3. Make sure the cursor is in the editor pane (not the command console).
```

Once you've done the above, **press ctrl+a then ctrl-i, which selects all then indents the selection**.

Example:

```matlab

% ------------------------ NO ------------------------

function y = f(x)
while z < 8
if y == 5
x = 6 + 8;
end
end
end





% ------------------------ NO ------------------------

function y = f(x)
    while z < 8 % good
        if y == 5 % good
                x = 6 + 8; % why did you indent this twice?
        end
    end
end





% ------------------------ NO ------------------------

function y = f(x)
    while z < 8
        if y == 5
            x = 6 + 8;
        end
        end % this ends the *while*, should be aligned with *while*
end






% ------------------------ NO ------------------------

function y = f(x)
    while z < 8
        if y == 5
            x = 6 + 8; % good
        else
                y = 6 - 4; % bad (indented too far)
        end
    end 
end





% ------------------------ YES -----------------------

function y = f(x)
    while z < 8
        if y == 5
            x = 6 + 8;
        end
    end
end

```

