% Initialize the balance
balance = 1000;

% Start an infinite loop to display the ATM menu repeatedly
while true
    % Display ATM menu options
    fprintf('\nATM Menu:\n');
    fprintf('1. Deposit\n');
    fprintf('2. Withdraw\n');
    fprintf('3. Balance Inquiry\n');
    fprintf('4. Exit\n');
    
    % Prompt user to select an option
    choice = input('Please select an option (1-4): ');
    
    % Perform actions based on user choice
    switch choice
        case 1  % Deposit case
            depositAmount = input('Enter the amount to deposit: ');
            
            if depositAmount > 0
                balance = balance + depositAmount; % Update balance
                fprintf('You have deposited $%.2f. Your new balance is $%.2f.\n', depositAmount, balance);
            else
                fprintf('Invalid amount. Please enter a positive amount for deposit.\n');
            end
            
        case 2  % Withdraw case
            withdrawAmount = input('Enter the amount to withdraw: ');
            
            if withdrawAmount > 0
                if withdrawAmount <= balance
                    balance = balance - withdrawAmount; % Update balance
                    fprintf('You have withdrawn $%.2f. Your new balance is $%.2f.\n', withdrawAmount, balance);
                else
                    fprintf('Insufficient funds. Your current balance is $%.2f.\n', balance);
                end
            else
                fprintf('Invalid amount. Please enter a positive amount for withdrawal.\n');
            end
            
        case 3  % Balance inquiry case
            fprintf('Your current balance is $%.2f.\n', balance);
            
        case 4  % Exit case
            fprintf('Thank you for using the ATM. Goodbye!\n');
            break; % Exit the loop
            
        otherwise  % Invalid input
            fprintf('Invalid selection. Please choose a number between 1 and 4.\n');
    end
end