function result = recursive_factorial(n)
    % Compute factorial of n using recursion
    % n must be a non-negative integer
    
    if n < 0
        error('Factorial is not defined for negative numbers');
    elseif n == 0 || n == 1
        result = 1;
    else
        result = n * recursive_factorial(n - 1);
    end
end
