
function test_warning(t)
    X = t.TestData.X;

    X_m = [X, '.m'];
    PX = pex.path.to_system_path(fullfile(pex.task.(X).path(), X_m));
    y = checkcode(PX, '-id', '-notok', '-struct');
    verifyTrue(t, isempty(y), sprintf('File %s generates warnings.', X_m));
end

