function [ child ] = selector( pop,fit )
Sum = sum(fit);
r = Sum *rand();
loopSum = 0;
select = 0;
for i = 1 : size(pop,1)
    loopSum = loopSum + fit(i);
    if loopSum >r
        select = i;
        break;
    end;       
end
child = pop(select,:);
end

