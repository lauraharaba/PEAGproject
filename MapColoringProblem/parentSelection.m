function[parents]=parentSelection(pop)

#the tournament selection will be applied

[dim,n]=size(pop);
parents=zeros(2,n);
for i=1:dim
    p1=unidrnd(dim);
    p2=unidrnd(dim);
    while(p1==p2)
        p2=unidrnd(dim);
    end
    if(pop(p1,n) <= pop(p2,n))
        parents(i,:)=pop(p1,:);
    else
        parent(i,:)=pop(p2,:);
    end
end
end
