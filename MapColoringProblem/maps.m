function[]=maps(dim,countriesNo,coloursNo,k,recombProbability,mutationProb)

m=load('matrix.txt');
disp('The adiacent matrix of the map is:');
disp(m);
pop=initialPop(m,dim,countriesNo,coloursNo);
disp('The initial population for map coloring is: ');
disp(pop);

n=countriesNo+1;
generations=zeros(dim,n);
objective=zeros(1,k);
for i=1:k
    [newPop]=recombination(pop,m,recombProbability);
    objective(i)=min(pop(:,n));
    generations=[generations;pop(:,1:n)];
end
generations=[generations(dim+1:dim*k,1:n)];
disp('Generations: ');
disp(generations);
disp(' ');
disp('Fitness function: ');
disp(objective);
[g,~]=size(generations);
minimum=min(generations(:,n));
disp('The individuals with the best value of the fitness function: ');
for i=1:g
    if generations(i,n)==minimum
        disp(['From generation: ' num2str(round(i/dim))]);
        disp(generations(i,1:n));
    end;
end
ax=1:k;
plot(ax,objective, '*-*');
%hold on;
%plot(ax,objective);
%stairs(ax,objective);
%plot(ax,objective, '--');
hold on;
end;

