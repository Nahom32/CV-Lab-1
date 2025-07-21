% Test 1: Basic palindrome (odd length)
assert(is_palindrome("radar") == true, 'Test 1 Failed');

% Test 2: Basic palindrome (even length)
assert(is_palindrome("abba") == true, 'Test 2 Failed');

% Test 3: Non-palindrome
assert(is_palindrome("hello") == false, 'Test 3 Failed');

% Test 4: Palindrome with punctuation and spaces
assert(is_palindrome("A man, a plan, a canal: Panama") == true, 'Test 4 Failed');

% Test 5: Case sensitivity test
assert(is_palindrome("RaceCar") == true, 'Test 5 Failed');

% Test 6: Single character
assert(is_palindrome("a") == true, 'Test 6 Failed');

% Test 7: Empty string
assert(is_palindrome("") == true, 'Test 7 Failed');

% Test 8: Numeric palindrome
assert(is_palindrome("12321") == true, 'Test 8 Failed');

% Test 9: Mixed alphanumeric
assert(is_palindrome("ma1am") == true, 'Test 9 Failed');

% Test 10: Non-palindrome with special characters
assert(is_palindrome("not!a@palindrome") == false, 'Test 10 Failed');

disp('All tests passed!');
