function y = starts_with(a, b)
    assert(ischar(a) && isrow(a), 'Expected input `a` to be char row vector.');
    assert(ischar(b) && isrow(b), 'Expected input `b` to be char row vector.');
    na = numel(a);
    nb = numel(b);
    y = (na >= nb) && strcmp(a(1:nb), b);
end

