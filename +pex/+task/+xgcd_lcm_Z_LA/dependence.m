
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'abs', 'euclid_2', 'floor', 'gcd', 'gcd_2', 'gcd_s', 'lcm', 'mod', 'rem', 'xgcd', 'xgcd_tail', 'xgcd_while'};
    count = {'euclid_Z_LA', 'isZ'};
    explode = {};
    recursive = false;
    syntax = {'while'};
    nosyntax = {'/', '^', 'for'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

