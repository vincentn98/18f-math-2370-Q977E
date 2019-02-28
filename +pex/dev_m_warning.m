
function n = dev_m_warning(X)
    pex.path.exist_A(X);
    y = checkcode(X, '-id', '-struct'); 
    n = numel(y);
    if n > 0
        disp([newline, X]);
        for j = 1 : n
            disp(y(j));
        end
    end
end
        
