function root = bisection_method(f, a, b, tol, max_iter)
    % Set default tolerance and maximum iterations if not provided
    if nargin < 4
        tol = 1e-6;
    end
    if nargin < 5
        max_iter = 100;
    end
    
    % Evaluate function at endpoints
    fa = f(a);
    fb = f(b);
    
    % Check if endpoints are roots
    if fa == 0
        root = a;
        return;
    end
    if fb == 0
        root = b;
        return;
    end
    
    % Verify the function has opposite signs at endpoints
    if fa * fb > 0
        error('Function must have opposite signs at endpoints a and b.');
    end
    
    % Initialize iteration counter
    iter = 0;
    
    % Main bisection loop
    while iter < max_iter
        iter = iter + 1;
        c = (a + b) / 2;
        fc = f(c);
        
        % Check if midpoint is a root
        if fc == 0
            root = c;
            return;
        end
        
        % Update the interval
        if fa * fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
        
        % Check for convergence (interval length)
        if (b - a) < tol
            root = (a + b) / 2;
            return;
        end
    end
    
    % Return best approximation after max iterations
    root = (a + b) / 2;
end
