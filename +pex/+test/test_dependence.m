
function test_dependence(t)
    X = t.TestData.X;

    D = pex.task.(X).dependence();

    call = D.call;
    nocall = D.nocall;
    recursive = D.recursive;
    syntax = D.syntax;
    nosyntax = D.nosyntax;

    for i = 1 : numel(call)
        Y = call{i};
        verifyTrue(t, pex.is_called(X, Y), sprintf('Expected `%s` to call `%s`.', X, Y));
    end

    for i = 1 : numel(nocall)
        Y = nocall{i};
        verifyFalse(t, pex.is_called(X, Y), sprintf('Expected `%s` to not call `%s`.', X, Y));
    end

    for i = 1 : numel(syntax)
        Y = syntax{i};
        verifyTrue(t, pex.has_syntax(X, Y), sprintf('Expected `%s` to use syntax `%s`.', X, Y));
    end

    for i = 1 : numel(nosyntax)
        Y = nosyntax{i};
        verifyFalse(t, pex.has_syntax(X, Y), sprintf('Expected `%s` to not use syntax `%s`.', X, Y));
    end

    if ~isempty(recursive)
        if recursive
            verifyTrue(t, pex.is_recursive(X), sprintf('Expected `%s` to be recursive.', X));
        else
            verifyFalse(t, pex.is_recursive(X), sprintf('Expected `%s` to not be recursive.', X));
        end
    end
end

