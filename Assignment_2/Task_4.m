% Author Name: Chidera Anyanwu
% Email: Anyanw32@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Visualization
% Date: 10/18/24

% Scatter Plot
function scatter_plot(x, y, sizes, colors)
    scatter(x, y, sizes, colors, 'filled');
    title('Planet Distances vs. Planet Sizes');
    xlabel('Distance From Sun(AU)');
    ylabel('Size(Earth Relative)');
end

% Bar Chart
function bar_chart(names, x)
    figure;
    barh(x);
    set(gca, "YTickLabel", names);
    title("Planets' Distances from the Sun");
    xlabel("Distance from the sun");
    ylabel("Planet Names");
end

% Main
x = [ .39 .72 1.00 1.52 5.20 9.54 19.22 30.06];%planet distances
y = [ .38 .95 1.00 .50 11.00 9.00 4.00 3.90];%planet sizes
names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};

sizes = [ 38 95 100 50 1100 900 400 390];
colors = [1 0 0; 0 1 0; 0 0 1; 1 1 0; 0 0 0; 0.5 0 0; 0.5 0.5 0; 0 1 1];

scatter_plot(x, y, sizes, colors)
bar_chart(names, x)
