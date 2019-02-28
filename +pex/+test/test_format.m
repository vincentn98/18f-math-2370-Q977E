
function test_format(t)
    X = t.TestData.X;
    X_m = [X, '.m'];
    P = pex.task.(X).path();
    PX_m = pex.path.to_system_path(fullfile(P, X_m));

    y = pex.path.exist_M(PX_m);
    verifyEmpty(t, y, y);
    if ~isempty(y), return, end

    y = pex.is_formatted_M(X);
    verifyEmpty(t, y, y);
    if ~isempty(y), return, end
end

