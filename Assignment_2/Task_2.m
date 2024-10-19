% Author Name: Chidera Anyanwu
% Email: Anyanw32@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple Encryption Function
% Date: 10/18/24

% encrpytion function
function caesar_cipher(message, shift) %name of the function and its arguments
a_m = double(message);
a_m = a_m + shift;
% the messages' letters are changed to their ascii values and added to the shift
for i = 1:length(a_m)
    if a_m(i) > 122
       a_m(i) = a_m - 26; 
    end
    if a_m(i) < 97
        a_m(i) = a_m + 26;
    end
    % if a_m is greater than 122 or less than 97, 26 will be subtracted or added from the value so that the calculated asci
    % value is still a letter
    fprintf("Your encrypted message is: %s",a_m)
    % Prints message
end

% main
message = input("What message would you like to encrypt?",'s');
shift = input("What would you liek your shift value to be?",'s')
caesar_cipher(message,shift)
% prompts user input their message and shift value and recall the function
