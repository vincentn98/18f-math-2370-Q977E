
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'error', 'power'};
    count = {'isN'};
    explode = {'pyramidR'};
    recursive = false;
    syntax = {'*', '+1', '/2'};
    nosyntax = {'.^', '^', 'for', 'if', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

