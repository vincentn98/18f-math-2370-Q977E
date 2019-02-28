
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'error'};
    count = {'isN'};
    explode = {'pyramidP'};
    recursive = true;
    syntax = {'+', '-1', 'if'};
    nosyntax = {'*', '.*', 'elseif', 'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

