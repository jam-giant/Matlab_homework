% Author Name: Chidera Anyanwu
% Email: Anyanw32@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Stock Market Analysis
% Date: 10/18/24

% Read_from_file
function data = read_from_file(file_name) 
% variable stating that data = the contents of whatever file the function reads
    fileID = fopen(file_name, 'r'); 
    %opens the desired file
    data = fscanf(fileID, '%f', [1 Inf])';
    % the function scans the file and puts its contents into the data variable
    fclose(fileID);
    %closes file
end

% Line_plot
function r = line_plot(data, avg_price, highest_price, lowest_price)
%functions name and its arguments
    plot(data, '-or', "LineWidth", 2)
    % plots the closing price data as a solid line circling the points. The line has a width of 2

    yline(avg_price, '--b')
    yline(highest_price, '--k')
    yline(lowest_price, '--m')
    % Creates dashed horizontal lines for each of these with their own color

    title("Closing stock prices over 30 days.")
    xlabel("Days")
    ylabel("Closing Prices")
    % The labels on the plot
    
    legend('Daily Closing Prices', 'Average Price', 'Highest Price', 'Lowest Price');
    % creates a legend for the 4 variables
    
    saveas(gcf, 'stock_analysis.png')
    % The saveas function is predefined. It is used here to make a .png of the plot.
    r = 1
end

% Save_to_file
function r = save_to_file(file_name, avg_price, highest_price, lowest_price, increase)
% This is the name of the function and its arguments
    fileID = fopen(file_name,"w"); 
    % Opens a new file with a name that is set later
        fprintf(fileID, "Average Closing Price: %.2f\n", avg_price);
        fprintf(fileID, "Highest Closing Price: %.2f\n", highest_price);
        fprintf(fileID, "Lowest Closing Price: %.2f\n", lowest_price);
        fprintf(fileID, "Number of Days the Closing Price Increased: %.2f\n", increase);
        %These print the analysis data in the new file
    fclose(fileID);
    % Closes the new file
    r = 1;
end

% Main
file_name = 'stock_data.txt';
data = read_from_file(file_name);
%Chooses the file that needs to be read and reads and store it in data

avg_price = mean(data);
% Calculates data mean
highest_price = max(data);
% Finds highest data value
lowest_price = min(data);
%finnds lowest data value
increase = sum(diff(data)>0);
% If the difference between a data point and the one coming before it is positive, then diff(data)>0 will be true. sum adds up the number true statements

fprintf("Average Closing Price: %.2f\n", avg_price)
fprintf("Highest Closing Price: %.2f\n", highest_price)
fprintf("Lowest Closing Price: %.2f\n", lowest_price)
fprintf("Number of Days the Closing Price Increased: %.2f\n", increase)
% Prints the results of the variables

line_plot(data, avg_price, highest_price, lowest_price)
% Calls for the line plot function and uses the values here to create the plot

file_name = 'stock_analysis.txt';
save_to_file(file_name, avg_price, highest_price, lowest_price, increase)
% Calls for the save to file function and gives the new file a name. The data from the analysis is then printed in the new file.
