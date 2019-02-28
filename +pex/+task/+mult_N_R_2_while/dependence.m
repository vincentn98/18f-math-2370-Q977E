
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'error', 'mult_N_R', 'mult_N_R_2', 'mult_N_R_2_tail'};
    count = {'iseven'};
    explode = {};
    recursive = false;
    syntax = {'*2 (no general *)', '/2 (no general /)', 'while'};
    nosyntax = {'for'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

