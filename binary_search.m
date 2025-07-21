function index = binary_search(arr, target)
    % Perform binary search on a sorted array
    % Returns index of target if found, -1 otherwise
    
    low = 1;
    high = length(arr);
    
    while low <= high
        mid = floor((low + high) / 2);
        
        if arr(mid) == target
            index = mid;
            return;
        elseif arr(mid) < target
            low = mid + 1;
        else
            high = mid - 1;
        end
    end
    
    index = -1;  % Target not found
end
