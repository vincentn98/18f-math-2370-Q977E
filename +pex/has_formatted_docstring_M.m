function y = has_formatted_docstring_M(x)
    pex.is_nonempty_char_A(x);
    pex.path.is_ok_A();
    pex.has_docstring_A(x);
    w = pex.path.witch_A(x);
    
    try
        aux(w)
        y = '';
    catch me
        y = me.message;
    end
end

function aux(x)
    [p, b, ~] = fileparts(x);

    [T, E, C] = pex.docstring_template(x);

    function die(line, msg)
        y0 = [sprintf('File `%s` line `%d`: ', x, line), msg];
        y1 = sprintf('The template docstring is (be sure to give good descriptions because they will be read):');
        y2 = strjoin(C, '\n');
        y = strjoin({y0, y1, y2}, '\n\n');
        error(y);
    end

    if isempty(p)
        p = pwd();
    end

    here = pwd();
    cd(p);
    D = help(b);
    cd(here);

    D = regexprep(D, '\r\n', '\n');
    D = regexprep(D, '\r', '');
    D = regexp(D, '\n', 'split');

    while ~isempty(D) && strcmp(D{end}, '')
        D = D(1:end-1);
    end

    if numel(T) > numel(D)
        y = sprintf('Docstring has too few lines: `%d` expected, `%d` found.', numel(T), numel(D));
        die(0, y);
    end

    for i = 1 : numel(T)
        m = regexp(D{i}, T{i}, 'match');
        assert(numel(m) < 2, 'There were %d > 1 elements in the match, which should not logically happen (a programming error).', numel(m));
        if isempty(m)
            y0 = 'The following line did not match:';
            y1 = sprintf('    Expected: "%s"', E{i});
            y2 = sprintf('    Found   : "%s"', D{i});
            y = strjoin({y0, y1, y2}, '\n\n');
            die(i, y);
        elseif ~pex.contains(T{i}, 'Signature') && pex.levenshtein(D{i}, C{i}) < 10
            y0 = 'It looks like to copy-pasted the docstring template (good), but did not edit it to correspond to your function (bad).';
            y1 = sprintf('    Found: "%s"', D{i});
            y = strjoin({y0, y1}, '\n\n');
            die(i, y);
            return
        end
    end
end
