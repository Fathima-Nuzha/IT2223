Array = [64,34,25,12,22,11,90];
n=length(Array);

tic;
for i=1:n-1
    swap=false;
    for j=1:n-i
        if Array(j) > Array (j+1)
            temp = Array(j);
            Array(j) = Array(j+1);
            Array(j+1) = temp;
            swap = true;
       end
    end

    if ~swap
        break;
    end
end
toc;
fprintf("Sorted Array:")
disp(Array);

