
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'abs', 'error', 'make_oracle', 'make_oracle_R', 'sqrt', 'up', 'up_R'};
    count = {};
    explode = {};
    recursive = true;
    syntax = {'/2 (no general /)'};
    nosyntax = {'*', '.*', '.^', '^', 'for', 'return', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

