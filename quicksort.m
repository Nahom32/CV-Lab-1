function arr = quicksort(arr)
    n = length(arr);
    if n <= 1
        return;
    end
    
    % Choose pivot (middle element)
    pivot = arr(floor(n/2));
    
    % Partition elements
    less = [];
    equal = [];
    greater = [];
    
    for i = 1:n
        if arr(i) < pivot
            less = [less, arr(i)];
        elseif arr(i) > pivot
            greater = [greater, arr(i)];
        else
            equal = [equal, arr(i)];
        end
    end
    
    % Recursively sort partitions
    arr = [quicksort(less), equal, quicksort(greater)];
end
