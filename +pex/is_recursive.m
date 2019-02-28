function y = is_recursive(file)
    pex.path.is_ok_A();
    pex.is_nonempty_char(file);
    [~, B, ~] = fileparts(file);
    y = pex.is_called(file, B);
end

