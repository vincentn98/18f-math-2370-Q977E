
% Automatically generated file.
function D = dependence()
    call = {'aux'};
    nocall = {'floor', 'gcd', 'gcd_2', 'gcd_s', 'mod', 'rem', 'xgcd', 'xgcd_while'};
    count = {'euclid_2', 'isN'};
    explode = {};
    recursive = {};
    syntax = {};
    nosyntax = {'/', 'elseif', 'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

