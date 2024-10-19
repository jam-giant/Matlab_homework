% Author Name: Chidera Anyanwu
% Email: Anyanw32@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Visualization
% Date: 10/18/24

% Scatter Plot
function scatter_plot(x, y, sizes, colors)
% the Function's name and its arguments
    scatter(x, y, sizes, colors, 'filled');
    % Creates a scatter plot with the values x and y. This corresponds with the size and color vectors stored in main.
    title('Planet Distances vs. Planet Sizes');
    xlabel('Distance From Sun(AU)');
    ylabel('Size(Earth Relative)');
    % Sets the labels for the axes and the title of the plot
end

% Bar Chart
function bar_chart(names, x)
% Name and arguments
    figure;
    % Creates a new figure for the bar chart so it doesn't get rid of the scatter plot
    barh(x);
    %Creates a horizontal bar chart
    set(gca, "YTickLabel", names);
    % Set here functions to make it possible to label the y axis with words rather than numbers
    title("Planets' Distances from the Sun");
    xlabel("Distance from the sun");
    ylabel("Planet Names");
    % Labels the axes and sets the title
end

% Main
x = [ .39 .72 1.00 1.52 5.20 9.54 19.22 30.06];
%planet distances
y = [ .38 .95 1.00 .50 11.00 9.00 4.00 3.90];
%planet sizes relative to earth
names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};
%Names of the planets corresponding withe the x and y vectors

sizes = [ 38 95 100 50 1100 900 400 390];
%Establishes the sizes of the planets for the scatter plot
colors = [1 0 0; 0 1 0; 0 0 1; 1 1 0; 0 0 0; 0.5 0 0; 0.5 0.5 0; 0 1 1];
%Establishes the colors of the planets using rgb triplets 

scatter_plot(x, y, sizes, colors)
%Calls for the scatter plot function to be created using the values in main
bar_chart(names, x)
%calls for the bar chart function to be created using the values in main
