array1 = [20, 30, 40, 50, 60];
target = 50;

for i = 1:length(array1) 
    if (array1(i) == target) 
        fprintf('Target %d found at index %d.\n', target, i);
 break;
        
    end
end

%add a meg that shows if the element is not available in else statement