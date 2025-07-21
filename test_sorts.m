% Test arrays
test1 = [64, 34, 25, 12, 22, 11, 90];
test2 = [3, 1, 4, 1, 5, 9, 2, 6];
test3 = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
test4 = [42];
test5 = [];

% Bubble Sort tests
sorted1 = bubble_sort(test1);
assert(isequal(sorted1, sort(test1)), 'Bubble Sort Test 1 Failed');

sorted2 = bubble_sort(test2);
assert(isequal(sorted2, sort(test2)), 'Bubble Sort Test 2 Failed');

% Merge Sort tests
sorted3 = merge_sort(test3);
assert(isequal(sorted3, sort(test3)), 'Merge Sort Test 1 Failed');

sorted4 = merge_sort(test4);
assert(isequal(sorted4, test4), 'Merge Sort Test 2 Failed');

% Quicksort tests
sorted5 = quicksort(test2);
assert(isequal(sorted5, sort(test2)), 'Quicksort Test 1 Failed');

sorted6 = quicksort(test5);
assert(isequal(sorted6, test5), 'Quicksort Test 2 Failed');

disp('All tests passed!');
