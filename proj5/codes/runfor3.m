%result for 3
N = 100;
input = [zeros(1,N-49),1,zeros(1,N+49)];
 output = zeros(10000 + 1,2 * N + 1); % record all output the first output is the input
 output(1,:) = input;
 for i = 1 : 10000
    output(i+1,:) = output(i,:) * P ;
    %a tolerance check to  automatically stop the simulation when the density is close to its steady-state
    LIT = ismembertol(output(i+1,:),output(i,:));
    if all(LIT == 1)  
        steadyState = output(i+1,:);
        break;
    end
 end
stem(0:2*N,steadyState)
xlabel('j')
ylabel('probability')
title('steady state')