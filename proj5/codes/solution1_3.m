%test 200 times 
breaktime = zeros(200,1);
for i = 1 : 200 
    breaktime(i) = generateTotalBreakTime;
end
histogram(breaktime,100);
title('breaktime distribution')
xlabel('total breaktime')
ylabel('appear times')
expectation = mean(breaktime);