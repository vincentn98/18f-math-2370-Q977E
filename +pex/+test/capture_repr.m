
function [repr0, repr1] = capture_repr(args0, args1, exception)

    N = numel(args0);

    repr0 = cell(1, N);
    repr1 = cell(1, N);

    for i = 1 : N
        repr0{i} = ['(', pex.join_args(args0{i}), ')']; 
        if ~isempty(exception{i}), continue; end
        switch numel(args1{i})
            case 0
                repr1{i} = '';
            case 1
                repr1{i} = pex.join_args(args1{i}); 
            otherwise
                repr1{i} = ['[', pex.join_args(args1{i}), ']']; 
        end
    end
end

