
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'floor', 'gcd', 'gcd_2', 'gcd_s', 'mod', 'rem', 'xgcd', 'xgcd_tail'};
    count = {'euclid_2', 'isN'};
    explode = {};
    recursive = false;
    syntax = {'while'};
    nosyntax = {'/', 'for', 'if'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

