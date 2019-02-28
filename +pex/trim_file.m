function y = trim_file(x)
    % trim_file: A whitespace-trimmed version of a file as a string.
    %     Signature: y = trim_file(x)
    %     Input x: A path to a file.
    %     Output y: A character string which contains a whitespace-trimmed version of x.
    pex.path.is_ok_A();
    pex.is_nonempty_char_A(x);
    pex.is_ok_text_file_A(x);

    fid = pex.path.fopen_A(x, 'r');
    cu = onCleanup(@() fclose(fid));
    c = {};

    % Read lines in to cell array c.
    % Removing trailing whitespace and all carriage returns.
    while ~feof(fid)
        s = fgets(fid);
        if ischar(s)
            s = deblank(s);
            s = regexprep(s, '\r', '');
            c{end+1} = s; %#ok
        end
    end

    % Remove all trailing blank lines.
    while ~isempty(c) && strcmp(c{end}, '')
        c = c(1:end-1);
    end

    % eol/noeol
    c{end+1} = '';

    y = strjoin(c, '\n');
end

