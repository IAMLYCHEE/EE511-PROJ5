% k = 1;
% for p = 0.1: 0.03 : 1
% %     k = 1;
%     for i = 1: 50
%         [nstate,efficiency] = numberInInput(p,0.5,0.5);
%         input1(i) = nstate(1);
%         input2(i) = nstate(2);
%         efficiencyRec(i) = efficiency;
%     end
% result1(k) = mean(input1);
% result2(k) = mean(input2);
% effi(k) = mean(efficiencyRec);
% k = k+1;
% end
% xaxis = 0.1 : 0.03 : 1;
% plot(xaxis,result1);
% hold on
% plot(xaxis,result2);
% figure 
% plot(xaxis,effi);
% title('efficiency and p')
% xlabel('p')
% ylabel('efficiency')
k = 1;
for t = 0 : 0.1 :  100
    lambdaDis(k) = generateLambda(t);
    lambdaCon(k) = generateLambda2(t);
    k = k + 1;
end
t = 0 : 0.1 : 100;
plot(t,lambdaDis);
title('discrete')
figure
plot(t,lambdaCon);
title('continuous')