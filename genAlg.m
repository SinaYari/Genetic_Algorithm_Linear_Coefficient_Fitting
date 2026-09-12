MAX = 10;
population_size = 1000;
ran = 2*rand();
fileID = fopen('input.txt', 'r');
file = fscanf(fileID, '%d');
fileSize = size(file, 1);
file = file(2:fileSize);
data = zeros((fileSize-1) / 4, 4);
for k = 1 : 4 : fileSize-1
    data(int8(k/4) + 1,:) = file(k : k+3);
end
fclose(fileID);  
%%% we have data
population = rand(population_size, 3) * MAX;
% we have population
minX = 1000;
minY = 1000;
minZ = 1000;
minValue = 10000;
for itr = 1 : population_size
    fitness = zeros(population_size, 1);
    newPopulation = zeros(population_size, 3);
    for k = 1 : population_size
        fitness(k,:) = fitnessFunction(population(k, :), data);
    end
    for j = 1 : population_size/2
    x = selector(population,fitness);
    y = selector(population,fitness);
    [child1,child2] = crossover(x,y);
    newPopulation(2*j-1,:) = child1;
    newPopulation(2*j,:) = child2;
    end
   for l = 1 : size(fitness, 1)
        if fitness(l,1) <= minValue
            minValue = fitness(l);
            minIndex = l;
        end
    end
    minX = population(minIndex,1);
    minY = population(minIndex,2);
    minZ = population(minIndex,3);
    population = newPopulation;
end
 fprintf('X = %f \nY = %f \nZ = %f \n',minX,minY,minZ);
