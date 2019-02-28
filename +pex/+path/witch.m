function y = witch(x)
    pex.is_nonempty_char_A(x);
    pex.path.is_ok_A();
    y = which(x);
    if ~isempty(y)
        d0 = pex.path.system_root();
        d1 = pex.path.search_upward_for_git(y);
        assert(isempty(d1) || strcmp(d0, d1), 'Expected an external file outside of a git repo, or a file in the same git directory.');
    end
end
