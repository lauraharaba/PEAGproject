function [newPop]=mutation(pop,m,c,mutationProb)

[dim,n]=size(pop);
for i=1:dim
    x=pop(i,:);
    disp('The mutation was applied for: ');
    disp(x);
    y=randomlyResetMutation(x,mutationProb,m,c);
    disp('The new individual: ');
    disp(y);
    newPop(i,:)=y;
end
end

