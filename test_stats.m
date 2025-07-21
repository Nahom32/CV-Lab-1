% Test 1: Basic test
data1 = [1, 2, 3, 4, 5];
[mean1, median1, mode1] = compute_stats(data1);
assert(mean1 == 3, 'Test 1: Mean failed');
assert(median1 == 3, 'Test 1: Median failed');
assert(isequal(mode1, [1,2,3,4,5]), 'Test 1: Mode failed');

% Test 2: Odd number of elements
data2 = [10, 20, 30, 40, 50, 60, 70];
[mean2, median2, mode2] = compute_stats(data2);
assert(mean2 == 40, 'Test 2: Mean failed');
assert(median2 == 40, 'Test 2: Median failed');
assert(isequal(mode2, [10,20,30,40,50,60,70]), 'Test 2: Mode failed');

% Test 3: Even number of elements
data3 = [1, 2, 3, 4, 5, 6];
[mean3, median3, mode3] = compute_stats(data3);
assert(mean3 == 3.5, 'Test 3: Mean failed');
assert(median3 == 3.5, 'Test 3: Median failed');
assert(isequal(mode3, [1,2,3,4,5,6]), 'Test 3: Mode failed');

% Test 4: Single mode
data4 = [5, 2, 8, 2, 5, 2, 9];
[mean4, median4, mode4] = compute_stats(data4);
assert(abs(mean4 - 4.714) < 0.001, 'Test 4: Mean failed');
assert(median4 == 5, 'Test 4: Median failed');
assert(isequal(mode4, 2), 'Test 4: Mode failed');

% Test 5: Multiple modes
data5 = [1, 3, 3, 3, 5, 5, 5, 7];
[mean5, median5, mode5] = compute_stats(data5);
assert(mean5 == 4, 'Test 5: Mean failed');
assert(median5 == 4, 'Test 5: Median failed');
assert(isequal(mode5, [3,5]), 'Test 5: Mode failed');

% Test 6: Negative numbers
data6 = [-5, -3, -1, 1, 3, 5];
[mean6, median6, mode6] = compute_stats(data6);
assert(mean6 == 0, 'Test 6: Mean failed');
assert(median6 == 0, 'Test 6: Median failed');
assert(isequal(mode6, [-5,-3,-1,1,3,5]), 'Test 6: Mode failed');

% Test 7: Floating-point numbers
data7 = [1.5, 2.5, 3.5, 4.5, 5.5];
[mean7, median7, mode7] = compute_stats(data7);
assert(mean7 == 3.5, 'Test 7: Mean failed');
assert(median7 == 3.5, 'Test 7: Median failed');
assert(isequal(mode7, [1.5,2.5,3.5,4.5,5.5]), 'Test 7: Mode failed');

% Test 8: Single element
data8 = [42];
[mean8, median8, mode8] = compute_stats(data8);
assert(mean8 == 42, 'Test 8: Mean failed');
assert(median8 == 42, 'Test 8: Median failed');
assert(isequal(mode8, 42), 'Test 8: Mode failed');

% Test 9: Empty input
data9 = [];
[mean9, median9, mode9] = compute_stats(data9);
assert(isnan(mean9), 'Test 9: Mean failed');
assert(isnan(median9), 'Test 9: Median failed');
assert(isempty(mode9), 'Test 9: Mode failed');

% Test 10: Duplicate values
data10 = [8, 8, 8, 8, 8];
[mean10, median10, mode10] = compute_stats(data10);
assert(mean10 == 8, 'Test 10: Mean failed');
assert(median10 == 8, 'Test 10: Median failed');
assert(isequal(mode10, 8), 'Test 10: Mode failed');

disp('All tests passed!');
