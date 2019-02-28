
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'error', 'fibonacci'};
    count = {'isN'};
    explode = {};
    recursive = true;
    syntax = {'+', 'if'};
    nosyntax = {'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

