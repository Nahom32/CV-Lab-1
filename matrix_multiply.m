function C = matrix_multiply(A, B)
    % Get dimensions
    [m, n] = size(A);
    [n2, p] = size(B);
    
    % Check compatibility
    if n ~= n2
        error('Matrix dimensions are incompatible for multiplication.');
    end
    
    % Initialize result matrix with zeros
    C = zeros(m, p);
    
    % Perform multiplication
    for i = 1:m
        for j = 1:p
            sum_val = 0;
            for k = 1:n
                sum_val += A(i, k) * B(k, j);
            end
            C(i, j) = sum_val;
        end
    end
end



