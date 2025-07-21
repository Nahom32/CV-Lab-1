% Test 1: Factorial of 0
assert(recursive_factorial(0) == 1, 'Test 1 Failed: 0! should be 1');

% Test 2: Factorial of 1
assert(recursive_factorial(1) == 1, 'Test 2 Failed: 1! should be 1');

% Test 3: Factorial of 5
assert(recursive_factorial(5) == 120, 'Test 3 Failed: 5! should be 120');

% Test 4: Factorial of 10
assert(recursive_factorial(10) == 3628800, 'Test 4 Failed: 10! should be 3,628,800');

% Test 5: Error for negative input
try
    recursive_factorial(-5);
    error('Test 5 Failed: No error thrown for negative input');
catch
    % Test passes if error is thrown
    disp('Test 5 Passed: Error thrown for negative input');
end

% Test 6: Floating-point input (should error)
try
    recursive_factorial(5.5);
    error('Test 6 Failed: No error thrown for floating-point input');
catch
    disp('Test 6 Passed: Error thrown for floating-point input');
end

disp('All tests passed!');
