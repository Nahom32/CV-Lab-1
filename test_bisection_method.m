% Test 1: Square root of 4 (f(x) = x^2 - 4)
f = @(x) x^2 - 4;
[root, ~] = bisection_method(f, 0, 5);
assert(abs(root - 2) < 1e-6, 'Test 1 Failed');

% Test 2: Cosine function (root at π/2 ≈ 1.5708)
f = @(x) cos(x);
[root, ~] = bisection_method(f, 1, 2);
assert(abs(root - pi/2) < 1e-6, 'Test 2 Failed');

% Test 3: Linear function (f(x) = 2x - 4)
f = @(x) 2*x - 4;
[root, ~] = bisection_method(f, 0, 5);
assert(abs(root - 2) < 1e-6, 'Test 3 Failed');

% Test 4: Endpoint is root (f(x) = x^3 - 8)
f = @(x) x^3 - 8;
[root, ~] = bisection_method(f, 2, 4); % Root at x=2
assert(abs(root - 2) < 1e-6, 'Test 4 Failed');

% Test 5: Tolerance not met within max iterations
f = @(x) exp(x) - 10;
[root, converged] = bisection_method(f, 0, 5, 1e-10, 5);
assert(~converged, 'Test 5 Failed');

% Test 6: Error for same sign endpoints
f = @(x) x^2 + 1;
try
    bisection_method(f, 0, 5);
    error('Test 6 Failed: No error thrown');
catch
    disp('Test 6 Passed: Error thrown as expected');
end
