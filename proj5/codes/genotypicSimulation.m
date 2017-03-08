function [output,steadyState] = genotypicSimulation(N,evalBudget,input)
% output = genotypicSimulation(N,evalBudget,input)
%output is the output history of the experiment
%transition matrix 
if length(input) ~= 2 * N + 1
    disp('please input the right parameter');
end
P=zeros(2*N+1,2*N+1); 
 for i = 1:2*N+1
     for j = 1:2*N+1
         P(i,j) = nchoosek(2*N,j-1)*((i-1)/(2*N))^(j-1)*(1-(i-1)/(2*N))^(2*N-j+1);
     end 
 end
 
 output = zeros(evalBudget + 1,2 * N + 1); % record all output the first output is the input
 output(1,:) = input;
 for i = 1 : evalBudget
    output(i+1,:) = output(i,:) * P ;
    %a tolerance check to  automatically stop the simulation when the density is close to its steady-state
    LIT = ismembertol(output(i+1,:),output(i,:));
    if all(LIT == 1)  
        steadyState = output(i+1,:);
        break;
    end
end
     