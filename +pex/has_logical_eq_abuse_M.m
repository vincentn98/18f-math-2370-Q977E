function b = has_logical_eq_abuse_M(X)
    pex.path.is_ok_A();
    pex.is_nonempty_char_A(X);
    w = pex.path.witch_A(X);
    T = mtree(w, '-file');
    L = {'coprime', 'isnumeric', 'isscalar', 'isN', 'isR', 'isZ', 'iseven', 'isodd', 'true', 'false', 'all', 'any'};
    for i = 1 : length(L)
        Y = L{i};
        n = T.mtfind('Fun', Y);
        for j = n.indices
            for opi = {'GT', 'GE', 'LT', 'LE', 'EQ', 'NE'}
                m = n.select(j);
                op = opi{1};
                while true
                    m = m.Parent;
                    if m.isempty
                        break
                    elseif strcmp(m.kind, op)
                        b = sprintf('In function `%s`, the function `%s` should not be used with `%s`: the output of `%s` is a logical value!', X, Y, translate(op), Y);
                        return
                    end
                end
            end
        end
    end
    b = '';
end

function y = translate(x)
    switch x
        case 'GT'
            y = '>';
        case 'GE'
            y = '>=';
        case 'LT'
            y = '<';
        case 'LE'
            y = '<=';
        case 'EQ'
            y = '==';
        case 'NE'
            y = '~=';
        otherwise
            error(['Unexpected: ', x]);
    end
end

