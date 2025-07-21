function arr = merge_sort(arr)
    n = length(arr);
    if n <= 1
        return;
    end
    
    % Split array into two halves
    mid = floor(n/2);
    left = merge_sort(arr(1:mid));
    right = merge_sort(arr(mid+1:end));
    
    % Merge sorted halves
    arr = merge(left, right);
end

function merged = merge(left, right)
    merged = [];
    i = 1; j = 1;
    left_len = length(left);
    right_len = length(right);
    
    while i <= left_len && j <= right_len
        if left(i) <= right(j)
            merged = [merged, left(i)];
            i = i + 1;
        else
            merged = [merged, right(j)];
            j = j + 1;
        end
    end
    
    % Append remaining elements
    if i <= left_len
        merged = [merged, left(i:end)];
    end
    if j <= right_len
        merged = [merged, right(j:end)];
    end
end
