function y = is_nonempty_char_M(x)
    y = '';
    if ~ischar(x)
        y = sprintf('Expected `char` found `%s`.', class(x));
    elseif isempty(x)
        y = sprintf('Expected non-empty `char` found empty `char`.');
    end
end
