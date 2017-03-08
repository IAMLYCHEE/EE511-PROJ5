function lambda = generateLambda2(t)
to = t - floor(t/10) *10;
if to <= 5 
    lambda = 4 + 3 * to;
else
    lambda = -3 * to + 34;
end
