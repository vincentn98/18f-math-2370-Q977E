
# Don't forget `elseif`

The `if` conditional can use `elseif`s to help keep nesting of `if`s reasonable.

```matlab

% ------------------------ NO ------------------------

x = 10;
if x == 0
    y = 'zero';
else
    if x == 1
        y = 'one';
    else
        if x == 2
            y = 'two';
        else
            if x == 3
                y = 'three';
            else
                if x == 4
                    y = 'four';
                else
                    y = 'Who knows?';
                end
            end
        end
    end
end







% ------------------------ NO ------------------------

x == 10;
if x == 0
    y = 'zero';
end
if x == 1
    y = 'one';
end
if x == 2
    y = 'two';
end
if x == 3
    y = 'three';
end
if x == 4
    y = 'four';
else
    y = 'Who knows?';
end







% ------------------------ YES -----------------------

x == 10;
if x == 0
    y = 'zero';
elseif x == 1
    y = 'one';
elseif x == 2
    y = 'two';
elseif x == 3
    y = 'three';
elseif x == 4
    y = 'four';
else
    y = 'Who knows?';
end

```

