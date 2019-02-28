
% Automatically generated file.
function D = dependence()
    call = {'aux', 'floor'};
    nocall = {};
    count = {'isN'};
    explode = {};
    recursive = false;
    syntax = {'/2 (no general /)'};
    nosyntax = {'*', '.*', './', 'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

