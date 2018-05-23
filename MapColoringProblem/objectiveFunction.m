function[sum]=objectiveFunction(m,n,x)
sum=0;
for i=1:n
    for j=i+1:n
        if m(i,j)==1 && x(i)==x(j)
            sum=sum+1;
        end
    end
end
end


