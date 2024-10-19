% Author Name: Chidera Anyanwu
% Email: Anyanw32@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Weather Data Analysis
% Date: 10/18/24

% Save_to_file function
function r = save_to_file(file_name, avg_temperature, avg_humidity, avg_precipitation)
    fileID = fopen(file_name, 'w');
    fprintf(fileID, 'Average Temperature: %.2f\n', avg_temperature);
    fprintf(fileID, 'Average Humididty: %.2f\n', avg_humidity);
    fprintf(fileID, 'Average Precipitation: %.2f\n', avg_precipitation);
    fclose(fileID);
    r = 1;
end

% main
data = readcell("weather_data.txt", "Delimiter",",") %readcell() is also a predefined function in matlab

temperature = cell2mat(data(2:end, 2))
humidity = cell2mat(data(2:end, 3))
precipitation = cell2mat(data(2:end, 4))

avg_temperature = mean(temperature) %mean() is a predefined function in matlab
avg_humidity = mean(humidity)
avg_precipitation = mean(precipitation)
file_name = 'Weather_data.txt'

save_to_file(file_name, avg_temperature, avg_humidity, avg_precipitation)

