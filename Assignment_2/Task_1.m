population = [5000 5200 5350 5600 5800];%population over the course of 5 years

growth_rate = (population(2:end) - population(1:end-1)) ./(population(1:end-1)); %growth rate calculation

pop_data = [population; [0 growth_rate]]; %this is the table esssentially

for i=1:length(population)
    fprintf("for year %d we have a population of %d and a growth rate of %f\n", i, pop_data(1, i), pop_data(2, i))
    %pop_data(1,i) gets the first row of the pop_data matrix that corresponds with i. pop_data(2,i) gets the second row value that corresponds with i
end
