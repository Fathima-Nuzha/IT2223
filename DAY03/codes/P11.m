
% Get charcater from user and find the it constant or vowel 

ch = input('Enter a character: ', 's');
if (ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')
    if ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' || ...
       ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U'
        fprintf('The character "%s" is a vowel.\n', ch);
    else
        fprintf('The character "%s" is a consonant.\n', ch);
    end
else
    fprintf('The character "%s" is not an alphabet letter.\n', ch);
end
