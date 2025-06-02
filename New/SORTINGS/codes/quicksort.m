function sortedArray = quickSort(arr)
    % Base Case: If array has 1 or fewer elements, it's already sorted
    if length(arr) <= 1
        sortedArray = arr;
        return;
    end
    
    % Choosing the pivot (first element)
    pivot = arr(1);
    leftHalf = arr(arr < pivot);
    rightHalf = arr(arr > pivot);
    middle = arr(arr == pivot);
    
    % Recursively sorting and merging
    sortedArray = [quickSort(leftHalf), middle, quickSort(rightHalf)];
end

% Initialize the array and call the sorting function
arr = [38, 27, 43, 3, 9, 82, 10]

sortedArr = quickSort(arr);

% Display the sorted array
disp('Sorted Array:');
disp(sortedArr);
