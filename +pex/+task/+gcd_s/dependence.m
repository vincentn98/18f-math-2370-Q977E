
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'euclid_2', 'floor', 'gcd', 'gcd_2', 'mod', 'rem'};
    count = {'isN'};
    explode = {};
    recursive = true;
    syntax = {'-'};
    nosyntax = {'*', '/'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

