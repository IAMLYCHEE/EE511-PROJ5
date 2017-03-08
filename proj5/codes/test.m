t = 0;
k = 0;
while t < 100
    k = k + 1;
    trecord(k) = nextJobComeTime(t);
    t = t + trecord(k);
end
plot(trecord);
% title('time spent during fro next job to come')
%time spent between two Jobs
figure
trecord = zeros(1,length(trecord));
t = 0;
k = 0;
while t < 100
    k = k + 1;
    trecord(k) = nextJobComeTime2(t);
    t = t + trecord(k);
end
plot(trecord);