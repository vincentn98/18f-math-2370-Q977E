
% Automatically generated file.
function D = dependence()
    call = {'assert', 'floor'};
    nocall = {'error', 'make_oracle', 'up'};
    count = {};
    explode = {};
    recursive = true;
    syntax = {'/2 (no general /)'};
    nosyntax = {'*', 'for', 'return', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

