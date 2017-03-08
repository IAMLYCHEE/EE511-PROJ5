function sample = generateExpDis(lambda)
%generateExpDis(lambda)
%generate a sample given exponential distribution
%input parameter: lambda
%using inverse transform sampling
p = rand(1,1)- 1.00e-10;
sample = log( 1- p) / (-lambda);
