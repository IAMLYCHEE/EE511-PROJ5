function duration = nextJobComeTime2(t_now)
%generate the time it takes for the next job to come tp be served
%input parameter time

lambda_constant = 20;
t = t_now - 1/lambda_constant*log(rand(1));
while rand(1) >=  generateLambda2(t)/lambda_constant
    t = t_now - 1/lambda_constant*log(rand(1));
end
duration = t - t_now;
    
