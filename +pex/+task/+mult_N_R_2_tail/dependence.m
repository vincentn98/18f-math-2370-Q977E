
% Automatically generated file.
function D = dependence()
    call = {'assert', 'aux'};
    nocall = {'error', 'mult_N_R', 'mult_N_R_2', 'mult_N_R_2_while'};
    count = {'iseven'};
    explode = {};
    recursive = {};
    syntax = {'*2 (no general *)', '/2 (no general /)'};
    nosyntax = {'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

