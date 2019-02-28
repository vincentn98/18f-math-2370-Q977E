
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'error'};
    count = {'iseven'};
    explode = {'mult_N_R'};
    recursive = true;
    syntax = {'*2 (no general *)', '/2 (no general /)'};
    nosyntax = {'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

