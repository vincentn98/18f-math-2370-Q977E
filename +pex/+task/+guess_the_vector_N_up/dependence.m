
% Automatically generated file.
function D = dependence()
    call = {'assert'};
    nocall = {'make_oracle', 'up'};
    count = {};
    explode = {};
    recursive = false;
    syntax = {'*2 (no general *)', '+1', '-1', '/2 (no general /)', 'for', 'while'};
    nosyntax = {'.^', '^', 'return'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

