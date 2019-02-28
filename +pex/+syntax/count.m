function y = count(X, syntax)
    W = pex.path.witch_A(X);

    if iskeyword(syntax)
        syntax = upper(syntax);
    else
        switch syntax
            case '~'
                syntax = 'NOT';
            case '&'
                syntax = 'AND';
            case '&&'
                syntax = 'ANDAND';
            case '|'
                syntax = 'OR';
            case '||'
                syntax = 'OROR';
            case '+'
                syntax = 'PLUS';
            case '-'
                syntax = 'MINUS';
            case '- (negation)'
                syntax = 'UMINUS';

            case '*'
                syntax = 'MUL';
            case '.*'
                syntax = 'DOTMUL';

            case '^'
                syntax = 'EXP';
            case '.^'
                syntax = 'DOTEXP';

            case '/'
                syntax = 'DIV';
            case './'
                syntax = 'DOTDIV';

            case '>'
                syntax = 'GT';
            case '>='
                syntax = 'GE';
            case '<'
                syntax = 'LT';
            case '<='
                syntax = 'LE';
            case '=='
                syntax = 'EQ';
            case '~='
                syntax = 'NE';

            case {'*2', '/2', '+1', '-1', '1/'}
                % Nothing to translate.

            otherwise
                error('Unexpected `syntax`: `%s`', syntax);
        end
    end

    switch syntax
        case '*2'
            y = pex.syntax.count_mult_by_2(X);
        case '/2'
            y = pex.syntax.count_div_by_2(X);
        case '+1'
            y = pex.syntax.count_add_1(X);
        case '-1'
            y = pex.syntax.count_subtract_1(X);
        case '1/'
            y = pex.syntax.count_reciprocal(X);
        otherwise
            t = mtree(W, '-file');
            n = t.mtfind('Kind', syntax);
            y = length(n.indices);
    end
end

