% Test 1: Square matrices
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];
expected = A * B;
result = matrix_multiply(A, B);
assert(isequal(result, expected), 'Test 1 Failed');
disp('Test 1 Passed');

% Test 2: Rectangular matrices
A = [1, 2, 3; 4, 5, 6];
B = [1, 2, 3, 4; 5, 6, 7, 8; 9, 10, 11, 12];
expected = A * B;
result = matrix_multiply(A, B);
assert(isequal(result, expected), 'Test 2 Failed');
disp('Test 2 Passed');

% Test 3: Identity matrix
A = eye(3);
B = [1, 2, 3; 4, 5, 6; 7, 8, 9];
result = matrix_multiply(A, B);
assert(isequal(result, B), 'Test 3 Failed');
disp('Test 3 Passed');

% Test 4: Zero matrix
A = zeros(2, 2);
B = [1, 2; 3, 4];
result = matrix_multiply(A, B);
assert(isequal(result, zeros(2, 2)), 'Test 4 Failed');
disp('Test 4 Passed');

% Test 5: Row vector * column vector
row = [1, 2, 3];
col = [4; 5; 6];
expected = row * col;
result = matrix_multiply(row, col);
assert(isequal(result, expected), 'Test 5 Failed');
disp('Test 5 Passed');

% Test 6: Column vector * row vector
col = [1; 2; 3];
row = [4, 5, 6];
expected = col * row;
result = matrix_multiply(col, row);
assert(isequal(result, expected), 'Test 6 Failed');
disp('Test 6 Passed');

% Test 7: Scalars
A = [5];
B = [7];
result = matrix_multiply(A, B);
assert(result == 35, 'Test 7 Failed');
disp('Test 7 Passed');

% Test 8: Incompatible dimensions
A = [1, 2, 3; 4, 5, 6];
B = [1, 2; 3, 4];
try
    matrix_multiply(A, B);
    error('Test 8 Failed: No error thrown');
catch
    disp('Test 8 Passed: Error thrown as expected');
end
