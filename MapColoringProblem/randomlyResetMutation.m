function [y]=randomlyResetMutation(x,mutationProb,m,c)
y=x;
n=length(x);
for i=1:n-1
    r=unifrnd(0,1);
    if(r<pm)
        y(i)=unidrnd(c);
    end
end
y(n)=objectiveFunction(m,n-1,y);
end
