function y = is_ok_text_file_M(x)
    pex.path.is_ok_A();
    pex.is_nonempty_char_A(x);

    y = '';

    fid = pex.path.fopen_A(x, 'r');
    cu = onCleanup(@() fclose(fid));

    max_line_length = 2^8;
    max_line_count = 2^8;

    %L = hex2dec('20');
    %H = hex2dec('7E');

    %LF = hex2dec('0A');
    %CR = hex2dec('0D');
    %HT = hex2dec('09');

    for i = 1 : max_line_count
        if feof(fid)
            break
        end
        s = fgets(fid);
        if ~ischar(s)
            break;
        end
        n = length(s);
        if n > max_line_length
            y = sprintf('File `%s` line `%d` length `%d` exceeds maximum `%d`.', x, i, n, max_line_length);
            return
        end
        %for j = 1 : n
        %    c = double(s(j));
        %    if c == LF || c == CR || (L <= c && c <= H)
        %        continue
        %    elseif c == HT
        %        m = 'is a tab. You must indent with spaces, not tabs.';
        %    elseif c < L
        %        m = sprintf('is non-printable ASCII code `%d`.', c);
        %    else
        %        m = sprintf('is non-ASCII character code `%d`.', c);
        %    end
        %    y = sprintf('File `%s` line `%d` column `%d` %s', x, i, j, m);
        %    return
        %end
    end

    if ~feof(fid)
        y = sprintf('File `%s` line count exceeds maximum `%d`.', x, max_line_count);
        return
    end
end

