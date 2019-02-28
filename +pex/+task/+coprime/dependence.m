
% Automatically generated file.
function D = dependence()
    call = {'gcd'};
    nocall = {'floor', 'gcd_2', 'gcd_s', 'logical', 'mod', 'rem', 'xgcd', 'xgcd_tail', 'xgcd_while'};
    count = {'isN'};
    explode = {};
    recursive = {};
    syntax = {'=='};
    nosyntax = {'*', '/', 'for', 'if', 'switch', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

