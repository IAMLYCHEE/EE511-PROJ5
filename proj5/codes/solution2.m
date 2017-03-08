buffer = zeros(1,100);
k = 1;
for p = 0.1 : 0.05 : 1
    for i = 1 : 100
        [nstate,efficiency_lyc, efficiency_tu] = numberInInput(p,0.75,0.25,200);
        buffer(i) = sum(nstate);
        efficiency(i) = efficiency_tu;
    end
    recordNumber(k) = mean(buffer);
    recordEfficiency(k) = mean(efficiency);
    CI = computeCI(efficiency,length(efficiency))
    k = k+1;
end
plot(0.1:0.05:1,recordNumber);
title('packets in buffer given different p(200 time slots)');
xlabel('p');
ylabel('number of packet in buffer after 200 time slots');
figure
plot(0.1:0.05:1,recordEfficiency);
title('efficiency given different p(200 time slots)');
xlabel('p');
ylabel('efficiency (\times 2 is the number of packet processed per time slot)');
