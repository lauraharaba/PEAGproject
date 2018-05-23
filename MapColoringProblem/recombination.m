function [newPop] = recombination(pop,m,recombinationProb)

%recombinationProb is the probability of recombination 
%newPop represents the new generation of the population (the multiset of descendants)

newPop=pop;
[dim,~]=size(pop);

%all pairs of parents are randomly generated

list=[-1 -1];
for i=1:dim/2
    poz=unidrnd(dim, [1 2]);
    i=min(poz);
    j=max(poz);
    if((i<j) && ~ismember([i j],list,'rows'))
        list=[list;[i j]];
        disp('parents:');
        disp(pop(i,:));
        disp(pop(j,:));
        [c1,c2]=uniformRecomb(pop(i,:),pop(j,:),m,recombinationProb);
        
        disp('Descendants: ');
        disp(c1);
        disp(c2);
        newPop(2*1-1,:)=c1;
        newPop(2*1,:)=c2;
    end
end
end

        