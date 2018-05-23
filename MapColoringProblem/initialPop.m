function[pop]=initialPop(m,dim,t,c)

% a population of dim dimension represented by c (integer) on a,b interval
% dim = the number of choromozomes
% t is the number of genes in a chromozome (no. of columns)

pop=zeros(dim,t);
for i=1:dim
    for j=1:t
        pop(i,j)=unidrnd(c);
    end
    x=pop(i,:);
    pop(i,t+1)=objectiveFunction(m,t,x);
end
end


