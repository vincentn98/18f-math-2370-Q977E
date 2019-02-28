
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'error', 'power'};
    count = {'isN', 'isR'};
    explode = {};
    recursive = true;
    syntax = {'*', '-1', 'else', 'if'};
    nosyntax = {'.^', '^', 'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

