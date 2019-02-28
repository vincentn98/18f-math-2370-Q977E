function d = levenshtein(s, t)
    assert(ischar(s), 'First argument must be a character array.');
    assert(ischar(t), 'Second argument must be a character array.');

    I = length(s) + 1;
    J = length(t) + 1;
    
    D = zeros(I, J);

    for i = 2 : I, D(i, 1) = i - 1; end
    for j = 2 : J, D(1, j) = j - 1; end

    for i = 2 : I
        for j = 2 : J
            if s(i - 1) == t(j - 1)
                c = 0;
            else
                c = 1;
            end

            delete = D(i - 1, j) + 1;
            insert = D(i, j - 1) + 1;
            substi = D(i - 1, j - 1) + c;

            D(i, j) = min([delete, insert, substi]);
        end
    end

    d = D(I, J);
end
