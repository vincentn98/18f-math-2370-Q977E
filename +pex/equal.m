function [b, reason] = equal(x, y, value_depth, shape_depth, class_depth)
    if nargin < 3, value_depth = inf; end
    if nargin < 4, shape_depth = inf; end
    if nargin < 5, class_depth = inf; end
    assert(value_depth <= shape_depth && shape_depth <= class_depth, 'Expected: value_depth <= shape_depth <= class_depth');
    [b, reason] = start(x, y, value_depth, shape_depth, class_depth, 0, 'X');
end

function [b, reason] = start(x, y, value_depth, shape_depth, class_depth, depth, location)
    [b, reason] = equal_class(x, y, value_depth, shape_depth, class_depth, depth, location);
end

function [b, reason] = equal_class(x, y, value_depth, shape_depth, class_depth, depth, location)
    if depth >= class_depth
        b = true;
        reason = [];
    else
        cx = class(x);
        cy = class(y);
        if ~strcmp(cx, cy)
            b = false;
            reason = sprintf('%s: classes differ: %s vs %s', location, cx, cy);
        else
            [b, reason] = equal_shape(x, y, value_depth, shape_depth, class_depth, depth, location);
        end
    end
end

function y = size2str(x)
    y = num2cell(x);
    for i = 1 : numel(y)
        y{i} = num2str(y{i});
    end
    if numel(y) == 1
        y = strjoin(y, ', ');
    else
        y = sprintf('[%s]', strjoin(y, ', '));
    end
end

function [b, reason] = equal_shape(x, y, value_depth, shape_depth, class_depth, depth, location)
    if depth >= shape_depth
        b = true;
        reason = [];
    else
        sx = size(x);
        sy = size(y);
        gx = numel(sx);
        gy = numel(sy);
        if ~(gx == gy) && all(sx == sy)
            b = false;
            reason = sprintf('%s: sizes differ: %s vs %s', location, size2str(sx), size2str(sy));
        else
            [b, reason] = equal_value(x, y, value_depth, shape_depth, class_depth, depth, location);
        end
    end
end

function [b, reason] = equal_string(x, y, location)
    if ~strcmp(x, y)
        b = false;
        reason = sprintf('%s: strings differ: %s vs %s.', location, x, y);
    else
        b = true;
        reason = [];
    end
end

function [b, reason] = equal_array(x, y, location)
    if ~all(x == y)
        b = false;
        reason = sprintf('%s: arrays differ.', location);
    else
        b = true;
        reason = [];
    end
end

function [b, reason] = equal_function_handle(x, y, location)
    kx = func2str(x);
    ky = func2str(y);
    if ~strcmp(kx, ky)
        b = false;
        reason = sprintf('%s: function handles differ: %s vs %s.', location, kx, ky);
    else
        b = true;
        reason = [];
    end
end

function [b, reason] = equal_cell(x, y, value_depth, shape_depth, class_depth, depth, location)
    N = numel(x);
    for i = 1 : N
        xi = x{i};
        yi = y{i};
        locationi = sprintf('%s{%d}', location, i);
        [b, reason] = start(xi, yi, value_depth, shape_depth, class_depth, depth + 1, locationi);
        if ~b, return, end
    end
end

function [b, reason] = equal_struct(x, y, value_depth, shape_depth, class_depth, depth, location)
    Fx = fieldnames(x);
    Fy = fieldnames(y);
    Nx = numel(Fx);
    Ny = numel(Fy);
    if ~(Nx == Ny)
        b = false;
        reason = sprintf('%s: number of fieldnames differs: %s vs %s.', location, Nx, Ny);
    elseif ~strcmp(Fx, Fy)
        b = false;
        reason = sprintf('%s: fieldnames differ.', location);
    else
        for i = 1 : Nx
            xi = x.(Fx{i});
            yi = y.(Fx{i});
            locationi = sprintf('%s.%s', location, Fx{i});
            [b, reason] = start(xi, yi, value_depth, shape_depth, class_depth, depth + 1, locationi);
            if ~b, return, end
        end
        % The above loop might be empty.
        b = true;
        reason = [];
    end
end

function [b, reason] = equal_value(x, y, value_depth, shape_depth, class_depth, depth, location)
    if depth >= value_depth
        b = true;
        reason = [];
    else
        switch class(x)
            case 'char'
                [b, reason] = equal_string(x, y, location);
            case {'double', 'logical'}
                [b, reason] = equal_array(x, y, location);
            case 'function_handle'
                [b, reason] = equal_function_handle(x, y, location);
            case 'cell'
                [b, reason] = equal_cell(x, y, value_depth, shape_depth, class_depth, depth, location);
            case 'struct'
                [b, reason] = equal_struct(x, y, value_depth, shape_depth, class_depth, depth, location);
            otherwise
                error('Don''t know what to do with %s.', class(x));
        end
    end
end
    
