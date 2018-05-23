function [c1,c2]=uniformRecomb(x,y,m,recombProb)

c1=x;
c2=y;
[~,n]=size(x);
for i=1:n-1
    r=unifrnd(0,1);
    if r<recombProb
        c1(i)=y(i);
        c2(i)=x(i);
    end
end
c1(n)=objectiveFunction(m,n-1,c1);
c2(n)=objectiveFunction(m,n-1,c2);
end