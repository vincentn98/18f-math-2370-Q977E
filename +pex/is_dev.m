function y = is_dev()
    pex.path.is_ok_A();
    y = strcmp(pex.repo_suffix(), 'dev');
end
