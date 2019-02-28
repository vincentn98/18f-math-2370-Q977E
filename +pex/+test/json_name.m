
function y = json_name(X)
    [P, B, ~] = fileparts(pex.test.mat_name(X));
    y = fullfile(P, [B, '.json']);
end

