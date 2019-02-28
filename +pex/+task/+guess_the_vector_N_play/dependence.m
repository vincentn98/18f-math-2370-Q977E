
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'down', 'error', 'make_oracle', 'up'};
    count = {'guess_the_vector_N_down', 'guess_the_vector_N_up'};
    explode = {};
    recursive = {};
    syntax = {};
    nosyntax = {'if'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

