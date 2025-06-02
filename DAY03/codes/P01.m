%string concatination
str1 = 'Apple';
str2 = 'Banana';
result1 = strcat(str1,str2); %this will not display (AppleBanana)
disp(result1)
result2 = strcat(str2, str1); %this will not display (BananaApple)
disp(result2) %this will display (BananaApple)