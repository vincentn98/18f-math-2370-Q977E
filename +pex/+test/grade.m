function y = grade(X)

    import matlab.unittest.TestRunner
    import matlab.unittest.TestSuite
    import matlab.unittest.plugins.TAPPlugin
    import matlab.unittest.plugins.ToFile


    here = pwd();
    cleaner = onCleanup(@() cd(here));
    X_path = pex.path.to_system_path(pex.task.(X).path);
    cd(X_path);

    suite = testsuite({['pex.task.', X, '.test'], 'pex.test.test_manifest'});
   
    % TODO
    %import matlab.unittest.selectors.HasName;
    %import matlab.unittest.constraints.EndsWithSubstring;
    %serial = suite.selectIf(HasName(EndsWithSubstring('__format')));
    %parallel = suite.selectIf(~HasName(EndsWithSubstring('__format')));

    runner = TestRunner.withTextOutput;

    if pex.is_instructor()
        b = 'silicon';
    else
        b = 'student';
    end

    txt = fullfile(['+', X], [b, '.txt']);
    plugin = TAPPlugin.producingOriginalFormat(ToFile(txt));
    runner.addPlugin(plugin);

    tic
    result = runner.run(suite);
    pex.print_warnings()
    toc

    if pex.is_instructor()
        json = fullfile(['+', X], [b, '.json']);
        pex.test.grade_to_json(json, result);
    end

    y = true;
end
