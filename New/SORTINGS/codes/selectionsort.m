Array = [64,25,12,22,11];

n = length(Array);

for i = 1:n-1
    Index = i;
    
    for j = i+1:n
        if Array(j) < Array(Index)
            Index = j;
        end
    end

    if Index ~= i
        temp = Array(i);
        Array(i) = Array(Index);
        Array(Index) = temp;
    end
end

fprintf('Sorted Array: ');
disp(Array);
