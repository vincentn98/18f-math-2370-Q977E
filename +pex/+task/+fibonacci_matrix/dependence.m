
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'error', 'fibonacci'};
    count = {'isN'};
    explode = {};
    recursive = false;
    syntax = {'*', '^'};
    nosyntax = {'for', 'if', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

