
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'down', 'error', 'make_oracle', 'up'};
    count = {'down_R', 'up_R'};
    explode = {};
    recursive = {};
    syntax = {};
    nosyntax = {'if'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

