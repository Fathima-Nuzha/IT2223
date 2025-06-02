Array = 1:1000;
target = 786
%linear search
tic; 
found_linear = false;
for i = 1:length(Array)
    if Array(i) == target
        found_linear = true;
        fprintf('Linear Search: Element Found at index %d\n', i);
        break;
    end
end
time_linear = toc;



%binary search
tic; 
low = 1;
high = length(Array);
found_binary = false;

while (low <= high)
    mid = floor((low + high) / 2);
    if (Array(mid) == target)
        found_binary = true;
        fprintf('Binary Search: Element Found at index %d\n', mid);
        break;
    elseif (target < Array(mid))
        high = mid - 1;
    else
        low = mid + 1;
    end
end
time_binary = toc;



fprintf('Linear Search Time: %f seconds\n', time_linear);
fprintf('Binary Search Time: %f seconds\n', time_binary);
