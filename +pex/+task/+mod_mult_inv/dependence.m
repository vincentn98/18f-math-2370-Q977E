
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'floor', 'gcd', 'gcd_2', 'gcd_s', 'logical', 'mod', 'rem', 'xgcd', 'xgcd_tail'};
    count = {'coprime', 'isN', 'xgcd_while'};
    explode = {};
    recursive = {};
    syntax = {};
    nosyntax = {'*', '/', 'for', 'while'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

