
% Automatically generated file.
function D = dependence()
    call = {};
    nocall = {'floor', 'gcd', 'gcd_2', 'gcd_s', 'mod', 'rem'};
    count = {'euclid_2', 'isN'};
    explode = {};
    recursive = true;
    syntax = {};
    nosyntax = {'/', 'elseif'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

