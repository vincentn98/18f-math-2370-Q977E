
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'abs', 'error', 'iseven', 'power'};
    count = {'pow_N_R_2'};
    explode = {};
    recursive = false;
    syntax = {'- (negation)', '1/ (no general /)', 'if'};
    nosyntax = {'*', '+', '-', '.*', './', '.^', '^', 'elseif', 'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

