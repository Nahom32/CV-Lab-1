function result = is_palindrome(str)
    % Convert to lowercase and remove non-alphanumeric characters
    cleaned_str = lower(str);
    cleaned_str = cleaned_str(isalnum(cleaned_str));
    
    % Check if cleaned string is palindrome
    n = length(cleaned_str);
    for i = 1:floor(n/2)
        if cleaned_str(i) ~= cleaned_str(n - i + 1)
            result = false;
            return;
        end
    end
    result = true;
end
