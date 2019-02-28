
% Automatically generated file.
function D = dependence()
    call = {'assert', 'floor'};
    nocall = {'down', 'error', 'guess_the_vector_N_up', 'make_oracle'};
    count = {};
    explode = {};
    recursive = false;
    syntax = {'/2 (no general /)', 'for', 'while'};
    nosyntax = {'*', 'return'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

