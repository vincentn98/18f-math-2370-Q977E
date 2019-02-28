
% Automatically generated file.
function D = dependence()
    call = {'isnumeric', 'isscalar'};
    nocall = {};
    count = {};
    explode = {};
    recursive = {};
    syntax = {'&&'};
    nosyntax = {'if'};
    D = struct('call', {call}, 'nocall', {nocall}, 'count', {count}, 'explode', {explode}, 'recursive', {recursive}, 'syntax', {syntax}, 'nosyntax', {nosyntax});
end

