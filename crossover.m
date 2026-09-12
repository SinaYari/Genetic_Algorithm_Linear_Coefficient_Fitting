function [ child1,child2 ] = crossover( x,y )
child1=[x(1,1),y(1,2),y(1,3)];
child2 = [y(1,1),x(1,2),x(1,3)];
end

