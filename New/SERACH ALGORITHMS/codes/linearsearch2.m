array1 = [20, 30, 40, 50, 60];
target = 60;
get = false;

tic;
for i = 1:length(array1) 
    if (array1(i) == target) 
        
        get = true;
        index=i;
        break;
    end
end

if get
    fprintf('Target %d found at index %d.\n', target, i);

else
    disp('element not found')
end

toc;
%fprintf('Elapsed time: %fseconds\n',elapsedTime);
