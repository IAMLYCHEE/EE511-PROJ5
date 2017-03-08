function i = generateaPoisSam(lambda)
%generate one poisson distribution
u = rand(1);
i = 0;
p = exp(-lambda);
F = p;
while u > F
    p = lambda * p / (i+1);
    F = F + p; %accumulate
    i = i+1;
end