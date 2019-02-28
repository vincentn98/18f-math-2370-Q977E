
% Automatically generated file.
function D = dependence()
    call = {'isN'};
    nocall = {'floor', 'mod', 'rem'};
    count = {'isN'};
    explode = {};
    recursive = true;
    syntax = {};
    nosyntax = {'*', '.*', './', '/', 'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

