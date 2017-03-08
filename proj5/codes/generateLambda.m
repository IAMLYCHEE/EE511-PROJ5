function lambda = generateLambda(t)
intT = floor(t);
period = mod(intT,10);
if period <= 5
    lambda = 4 + period * 3;
else
    lambda = 19 - (period-5)*3;
end


