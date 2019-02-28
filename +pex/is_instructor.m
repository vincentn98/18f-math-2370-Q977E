function y = is_instructor()
    pex.path.is_ok_A();
    user = char(java.lang.System.getProperty('user.name'));
    y = strcmp(user, 'bcm052000');
end
