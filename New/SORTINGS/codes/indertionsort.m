Array = [64, 34, 25, 12, 22, 11, 90];
n = length(Array);

for i = 2:n
    key = Array(i);
    j = i - 1;
    
   
    while j >=1 && Array(j) > key
        Array(j+1) = Array(j);
        j = j - 1;
    end
    
    Array(j+1) = key;
end

fprintf("Sorted Array:\n")
disp(Array);
