n=1000;
tic;
for i = 1:n
    disp(i)
end

elapsedTime=toc;
fprintf('Elapsed time: %fseconds\n',elapsedTime);
