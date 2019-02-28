function x = test_manifest()
    x = functiontests(localfunctions());
end

function test_recurse(t)
    if pex.is_dev()
        return
    elseif pex.is_instructor()
        M = pex.manifest_harness();
    else
        M = pex.manifest();
    end
    F = pex.path.find();
    K = F.keys();
    for i = 1 : numel(K)
        kF = K{i};
        kM = strrep(kF, '\', '/');
        if F(kF)
            xF = 'directory';
        else
            xF = 'file';
        end
        if M.isKey(kM)
            if M(kM)
                xM = 'directory';
            else
                xM = 'file';
            end
            verifyEqual(t, F(kF), M(kM), sprintf('Expected %s to be a %s, but it is a %s.', kF, xM, xF));
        else
            verifyTrue(t, M.isKey(kM), sprintf('Unknown %s %s: you need to remove/rename it.', xF, kF));
        end
    end
end

