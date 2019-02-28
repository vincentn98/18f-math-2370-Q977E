
function y = has_warnings_M(X)
    pex.path.is_ok_A();
    y = '';
    c = checkcode(X, '-id', '-notok', '-struct');
    if ~isempty(c)
        y = sprintf('File `%s` generates warnings.', X);
        return
    end
end

