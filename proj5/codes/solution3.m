clear
N = 20;
input = [zeros(1,N),1,zeros(1,N)];
[output,steadyState] = genotypicSimulation(N,5000,input);