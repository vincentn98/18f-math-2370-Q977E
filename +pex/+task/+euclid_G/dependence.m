
% Automatically generated file.
function D = dependence()
    call = {'euclid_G_hat', 'isN'};
    nocall = {'floor', 'mod', 'rem'};
    count = {'euclid_G_hat', 'isN'};
    explode = {};
    recursive = false;
    syntax = {};
    nosyntax = {'*', '.*', 'for', 'if', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

