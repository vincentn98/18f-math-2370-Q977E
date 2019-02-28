
% Automatically generated file.
function D = dependence()
    call = {'up0'};
    nocall = {'down', 'error', 'make_oracle', 'pow_N_R', 'pow_N_R_2', 'pow_Z_R_2', 'power'};
    count = {};
    explode = {};
    recursive = {};
    syntax = {'*2 (no general *)', '+1', '-1', '/2 (no general /)'};
    nosyntax = {'.^', '^', 'for', 'return', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

