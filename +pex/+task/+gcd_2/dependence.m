
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'euclid_2', 'floor', 'gcd', 'gcd_s', 'isodd', 'mod', 'rem'};
    count = {'isN', 'iseven'};
    explode = {};
    recursive = true;
    syntax = {'*2 (no general *)', '-', '/2 (no general /)'};
    nosyntax = {'return'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

