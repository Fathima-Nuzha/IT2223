

array2 = 1:1000;
target = 786; 

low = 1;
high = length(array2);


tic;

while low <= high
    mid = floor((low + high) / 2);

    if array2(mid) == target
        fprintf('Target %d found at index %d.\n', target, mid);
        break;
    elseif target < array2(mid)
        high = mid - 1;
    else
        low = mid + 1;
    end
end



elapsed_time = toc;
fprintf('Time taken for binary search: %.6f seconds.\n', elapsed_time);
