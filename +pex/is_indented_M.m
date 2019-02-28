function y = is_indented_M(x)
    pex.path.is_ok_A();
    pex.is_nonempty_char_A(x);
    pex.is_ok_text_file_A(x);

    y = '';

    t0 = pex.trim_file(x);
    t1 = pex.indent_m_file(x);

    s0 = strsplit(t0, '\n');
    s1 = strsplit(t1, '\n');

    n0 = length(s0);
    n1 = length(s1);

    assert(n0 == n1, 'File `%s`: the trimmed and indented versions do not have the same number of lines.', x);

    n = n0;

    HT = hex2dec('09');
    SP = hex2dec('20');

    for i = 1 : n
        for c = s0{i}
            d = double(c);
            if d == SP
                continue
            elseif d == HT
                y = sprintf('File `%s` line `%d` is indented with tabs, but you must use spaces. In the editor, type ctrl+a then ctrl+i to indent.', x, i);
                return
            else
                break
            end
        end
        if ~strcmp(s0{i}, s1{i})
            y = sprintf('File `%s` line `%d` is not indented. In the editor, type ctrl+a then ctrl+i to indent.', x, i);
            return
        end
    end
end

