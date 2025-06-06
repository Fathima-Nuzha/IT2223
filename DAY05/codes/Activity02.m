% Initialize a vector to store marks for 5 students
marks = zeros(1, 5);

% Initialize a cell array to store grades for 5 students
grades = cell(1, 5);

% Loop to input marks and assign grades
for i = 1:5
    % Input marks for each student
    marks(i) = input(['Enter the marks for student ' num2str(i) ' (out of 100): ']);
    
    % Assign grade based on the marks
    if marks(i) >= 90
        grades{i} = 'A';
    elseif marks(i) >= 80
        grades{i} = 'B';
    elseif marks(i) >= 70
        grades{i} = 'C';
    elseif marks(i) >= 60
        grades{i} = 'D';
    else
        grades{i} = 'F';
    end
    
    % Display the grade for each student
    fprintf('Student %d received a grade of %s.\n', i, grades{i});
end

% Start a loop for the menu
while true
    % Display menu options
    fprintf('\nMenu:\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');
    
    % Input user's menu choice
    choice = input('Please select an option (1-3): ');
    
    % Perform action based on user's choice
    switch choice
        case 1
            % Create a bar chart of the marks
            figure; 
            bar(marks);
            title('Marks of 5 Students');
            xlabel('Student Number');
            ylabel('Marks');
           % set(gca, 'XTickLabel', {'Student 1', 'Student 2', 'Student 3', 'Student 4', 'Student 5'});
            grid on; % Add a grid to the plot
            
        case 2
            % Calculate and display the average marks
            avgMarks = mean(marks);
            fprintf('The average marks of the 5 students is: %.2f\n', avgMarks);
            
        case 3
            % Exit the program
            fprintf('Thank you for using the program. Goodbye!\n');
            break;
            
        otherwise
            % Handle invalid input
            fprintf('Invalid selection. Please choose a valid option (1-3).\n');
    end
end