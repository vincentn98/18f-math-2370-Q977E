
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'abs', 'floor', 'mod', 'rem'};
    count = {'euclid_2', 'isZ'};
    explode = {};
    recursive = true;
    syntax = {};
    nosyntax = {'*', '/', '^', 'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

