
startup

D = dir();

h = '##################################';

for i = 1 : numel(D)
    x = D(i);
    if numel(x.name) == 3 && x.isdir
        disp([h, ' ', x.name, ' ', h])
        cd(x.name);
        me = [];
        try
            test
        catch me
            disp(['ERROR: uncaught exception:', getReport(me)])
        end
        cd ..;
    end
end
