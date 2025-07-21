function arr = bubble_sort(arr)
    n = length(arr);
    for i = 1:n-1
        swapped = false;
        for j = 1:n-i
            if arr(j) > arr(j+1)
                % Swap elements
                temp = arr(j);
                arr(j) = arr(j+1);
                arr(j+1) = temp;
                swapped = true;
            end
        end
        % Exit early if no swaps occurred
        if ~swapped
            break;
        end
    end
end
