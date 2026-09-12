function [ mutatedChild ] = mutation( child )
randIndex = 1+2*rand();
randNum= rand()*10;
    if randIndex == 1
        mutatedChild = [randNum,child(1,2),child(1,3)];
    elseif randIndex == 2
        mutatedChild = [child(1,1),randNum,child(1,3)];
    else
        mutatedChild = [child(1,1),child(1,2),randNum];
    end
end

