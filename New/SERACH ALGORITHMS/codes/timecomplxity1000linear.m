array1 = 1:1000;
target = 786;
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
