function [mean_val, median_val, mode_vals] = compute_stats(data)
    % Check for empty input
    if isempty(data)
        mean_val = NaN;
        median_val = NaN;
        mode_vals = [];
        return;
    end
    
    % Calculate mean
    n = length(data);
    mean_val = sum(data) / n;
    
    % Calculate median
    sorted_data = sort(data);
    if mod(n, 2) == 1  % Odd number of elements
        median_val = sorted_data((n + 1) / 2);
    else  % Even number of elements
        median_val = (sorted_data(n / 2) + sorted_data(n / 2 + 1)) / 2;
    end
    
    % Calculate mode
    % Count frequency of each unique value
    sorted_data = sort(data);
    unique_vals = sorted_data([true, diff(sorted_data) ~= 0]);
    counts = zeros(size(unique_vals));
    
    % Count occurrences
    idx = 1;
    for i = 1:length(unique_vals)
        count = 0;
        while idx <= n && sorted_data(idx) == unique_vals(i)
            count = count + 1;
            idx = idx + 1;
        end
        counts(i) = count;
    end
    
    % Find values with maximum frequency
    max_count = max(counts);
    mode_vals = unique_vals(counts == max_count);
end
