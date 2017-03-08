function t = nextJobComeTime(t)
%generate the time it takes for the next job to come tp be served
%input parameter time
lambda = generateLambda(t);
poissonSample = generateaPoisSam(lambda);
% poissonSample
if poissonSample > 0
    t = 1/poissonSample;
else
    t = nextJobComeTime(t+1)+1;
end