function y = indent_m_file(x)
    pex.path.is_ok_A();
    pex.is_ok_text_file_A(x);

    w = pex.path.witch_A(x);
    [~, b, e] = fileparts(w);
    assert(strcmp(e, '.m'), 'Expected file `%s` to have .m extension.', w);

    tdir = tempname();
    mkdir(tdir);
    cu = onCleanup(@() rmdir(tdir, 's'));

    tx = fullfile(tdir, [b, e]);

    copyfile(w, tx, 'f');

    h = matlab.desktop.editor.openDocument(tx);
    h.smartIndentContents;
    h.save;
    h.close;

    y = pex.trim_file(tx);
end

