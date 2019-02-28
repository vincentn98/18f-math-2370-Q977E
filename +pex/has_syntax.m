function y = has_syntax(X, syntax)
    pex.path.is_ok_A();
    pex.is_nonempty_char_A(X);
    switch syntax
        case '*2 (no general *)'
            y = there_is_s1_and_all_s0_are_s1(X, '*', '*2');
        case '/2 (no general /)'
            y = there_is_s1_and_all_s0_are_s1(X, '/', '/2');
        case '+1 (no general +)'
            y = there_is_s1_and_all_s0_are_s1(X, '+', '+1');
        case '-1 (no general -)'
            y = there_is_s1_and_all_s0_are_s1(X, '-', '-1');
        case '1/ (no general /)'
            y = there_is_s1_and_all_s0_are_s1(X, '/', '1/');
        otherwise
            n = pex.syntax.count(X, syntax);
            y = (n > 0);
    end
end

function y = there_is_s1_and_all_s0_are_s1(X, s0, s1)
    n0 = pex.syntax.count(X, s0);
    n1 = pex.syntax.count(X, s1);
    y = (n1 > 0) && (n0 == n1);
end
