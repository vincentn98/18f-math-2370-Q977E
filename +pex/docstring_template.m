function [re, eng, com] = docstring_template(x)
    % docstring_template: Computes the docstring template for MATLAB function named x.
    %     Signature: [re, eng, com] = docstring_template(x)
    %     Input x: A character string which names a MATLAB function.
    %     Output re: A cell array of strings, each of which is a regular expression.
    %     Output eng: A cell array of strings, each of which is in plain English.
    %     Output com: A cell array of strings, each of which is in plain English and starts with a % character.
    w = pex.path.witch_A(x);
    pex.is_ok_text_file_A(w);
    [p, xname, e] = fileparts(w);
    assert(strcmp(e, '.m'), 'Input must be a .m file.');

    if isempty(p)
        p = pwd();
    end

    here = pwd();
    cd(p);
    xfunc = str2func(xname);
    cd(here);

    fname = strsplit(mfilename, '.');
    fname = fname{1};

    lineno = 1;

    function die(suf, msg)
        error([fname, ':', suf], 'Line number %d: %s', lineno, msg);
    end

    function line = eofdie(fid, suf, msg)
        line = fgets(fid);
        if (isscalar(line) && line == -1) || feof(fid), die(suf, msg), end
        if length(line) >= 256, die(suf, 'Lines must have less than 256 characters.'), end
        line = deblank(line);
        lineno = lineno + 1;
    end

    fid = fopen(x);

    line = eofdie(fid, 'end_of_file', 'Unexpected end-of-file.');
    if isempty(line)
        line = eofdie(fid, 'end_of_file', 'Unexpected end-of-file.');
    end

    if isempty(line)
        die('preamble', sprintf('The preamble to file "%s" may have at most one blank line.', x));
    end

    pat = '^function\s+(?<rest>.*)';
    T = regexp(line, pat, 'names');
    %line, pat, T

    if isempty(T)
        die('parse_function', 'Function line must begin with "function" following by some whitespace.');
    end

    line = T.rest;

    pat_name = '[A-Za-z][A-Za-z_0-9]*';

    arity1 = nargout(xfunc);
    if arity1 == 0
        die('unimplemented', sprintf('The case of arity1 = %d is not implemented!', arity1));
    end

    [arg1{1:arity1}] = deal('');

    for i = 1 : arity1
        arg1{i} = [sprintf('(?<arg1%d>', i), pat_name, ')\s*'];
    end

    arg1s = strjoin(arg1, ',\\s*');

    pat1 = arg1s;
    patN = ['\[\s*', arg1s, '\]\s*'];

    pat1 = ['^', pat1, '(?<rest>.*)'];
    patN = ['^', patN, '(?<rest>.*)'];

    T = regexp(line, patN, 'names');
    %line, patN, T

    if isempty(T) && (arity1 == 1)
        T = regexp(line, pat1, 'names');
        %line, pat1, T
    end

    if isempty(T)
        die('parse_output_args', 'Died parsing output args.');
    end

    for i = 1 : arity1
        arg1{i} = T.(sprintf('arg1%d', i));
    end

    line = T.rest;

    pat = '^=\s*(?<rest>.*)';
    T = regexp(line, pat, 'names');
    %line, pat, T

    if isempty(T)
        die('parse_equal', 'Died parsing equal.');
    end

    line = T.rest;

    pat = ['^(?<name>', pat_name, ')\s*(?<rest>.*)'];
    T = regexp(line, pat, 'names');
    %line, pat, T

    if isempty(T)
        die('parse_function_name', 'Died parsing function name.');
    end

    if ~strcmp(T.name, xname)
        die('parse_function_name', sprintf('Function name "%s" does not agree with file name "%s".', T.name, xname));
    end

    line = T.rest;

    arity0 = nargin(xfunc);
    if arity1 == 0
        die('unimplemented', sprintf('The case of arity0 = %d is not implemented!', arity0));
    end

    [arg0{1:arity0}] = deal('');

    for i = 1 : arity0
        arg0{i} = [sprintf('(?<arg0%d>', i), pat_name, ')\s*'];
    end

    arg0s = strjoin(arg0, ',\\s*');

    pat = ['^\(\s*', arg0s, '\)\s*(?<rest>.*)'];
    T = regexp(line, pat, 'names');
    %line, pat, T

    for i = 1 : arity0
        arg0{i} = T.(sprintf('arg0%d', i));
    end

    %arg1, x, arg0

    fclose(fid);

    anything_re = '.+';
    anything_eng = '*A brief, one-line description in English.*';
    anything_eng_arg = '*A brief, one-line description in English, including the argument type.*';
    tab = '    ';

    if arity1 == 1
        lhs_re = arg1{1};
        lhs_eng = arg1{1};
    else
        lhs_re = ['\[', strjoin(arg1, ', '), '\]'];
        lhs_eng = ['[', strjoin(arg1, ', '), ']'];
    end

    rhs_re = [xname, '\(', strjoin(arg0, ', '), '\)'];
    rhs_eng = [xname, '(', strjoin(arg0, ', '), ')'];

    re = { ...
            ['^', '  ', xname, ': ', anything_re, '$'], ...
            ['^', '  ', tab, 'Signature: ', lhs_re, ' = ', rhs_re, '$'] ...
        };

    eng = { ...
            ['  ', xname, ': ', anything_eng], ...
            ['  ', tab, 'Signature: ', lhs_eng, ' = ', rhs_eng] ...
        };

    com = { ...
            ['% ', xname, ': ', anything_eng], ...
            ['% ', tab, 'Signature: ', lhs_eng, ' = ', rhs_eng] ...
        };

    for i = 1 : numel(arg0)
        re{end+1} = ['^', '  ', tab, 'Input ', arg0{i}, ': ', anything_re, '$']; %#ok
        eng{end+1} = ['  ', tab, 'Input ', arg0{i}, ': ', anything_eng_arg]; %#ok
        com{end+1} = ['% ', tab, 'Input ', arg0{i}, ': ', anything_eng_arg]; %#ok
    end
            
    for i = 1 : numel(arg1)
        re{end+1} = ['^', '  ', tab, 'Output ', arg1{i}, ': ', anything_re, '$']; %#ok
        eng{end+1} = ['  ', tab, 'Output ', arg1{i}, ': ', anything_eng_arg]; %#ok
        com{end+1} = ['% ', tab, 'Output ', arg1{i}, ': ', anything_eng_arg]; %#ok
    end

    com{end+1} = '%';
    com{end+1} = '% *Any number of lines you need (including none) as an outlet for your*';
    com{end+1} = '% *artistic style. May be concerning this function or any other topic.*';
    com{end+1} = '% *Note: the instructor will probably read it, so don''t tempt fate*';
    com{end+1} = '% *by putting something here which will get you a referral to the dean*';
    com{end+1} = '% *(or the police).*';
end

