array2=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
target=4;

low=array2(1);
high=length(array2);

while low<=high
    mid=(low+high)/2;

    if mid == target
          fprintf('Target %d found at index %d.\n', target, mid);
          break;
    else if target<mid
            high=mid-1;
    else
        low=mid+1;
    end
    end
   
end