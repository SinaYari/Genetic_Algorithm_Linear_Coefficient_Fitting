function [fitness] = fitnessFunction(prob, data)
    dataSize = size(data, 1);
    value = 0;
    for i = 1 : dataSize
        a = prob(1, 1) * data(i, 1);
        b = prob(1, 2) * data(i, 2);
        c = prob(1, 3) * data(i, 3);
        result = a + b + c;
        value = value + abs(result - data(i, 4));
    end
    fitness = 1/ value;
end