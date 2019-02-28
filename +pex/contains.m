function y = contains(text, pattern)
    y = ~isempty(strfind(text, pattern)); %#ok<STREMP>
end
