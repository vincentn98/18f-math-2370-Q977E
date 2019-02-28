
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'down', 'down_R', 'error', 'make_oracle', 'make_oracle_R', 'pow_N_R', 'pow_N_R_2', 'pow_Z_R_2', 'power'};
    count = {};
    explode = {};
    recursive = {};
    syntax = {'*2 (no general *)', '- (negation)'};
    nosyntax = {'.^', '^', 'for', 'return', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

