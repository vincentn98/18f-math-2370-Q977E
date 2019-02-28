
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'error', 'make_oracle'};
    count = {'down', 'up'};
    explode = {};
    recursive = {};
    syntax = {};
    nosyntax = {'if'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

