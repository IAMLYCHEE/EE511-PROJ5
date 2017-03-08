function totalBreakTime = generateTotalBreakTime
%Li Yicheng 3/5
t = 0;
tServe = 0;
tJob = 0;
nJob = 0; %The number of jobs waiting to be served
totalBreakTime = 0;
stillJobs = false;
while t < 100
    if nJob == 0
        breakTime = generateBreakTime;
        tServe = tServe + breakTime;%service time after break
        tJob = tJob + nextJobComeTime2(t);%the time for the first job to come
        while tServe < tJob
            breakTime = generateBreakTime;%generate break time 
            tServe = tServe + breakTime;%next time to serve
        end
        %after this the time for serve is after the first job to be served
        totalBreakTime = totalBreakTime + tServe-t; %calculate the break time 
        t = tJob; % now set time to the first job come
        while t < tServe % calculate how many jobs come between first Job come time and serve time
            t = t + nextJobComeTime2(t); %next Job come time 
            nJob = nJob + 1; %Job amount plus one
        end
        %how many jobs waiting while the server is not coming back
        tJob = t; % now the t is the next Job come time
        t = tServe; % set time point to be the serve time start to serve
    else
        while tServe < tJob %how many jobs done before next job come
            tServe = tServe + generateExpDis(25); % time spent to next job
            nJob = nJob - 1; %job done
            if nJob == 0 % if all job finished
                stillJobs = false; %mark all job finised
                break;
            else
                stillJobs = true;
            end
        end
        if stillJobs == false % all job finish then set the current time 
            t = tServe ; 
        else % still some jobs
            t = tJob; %haven't finish when the next job come, set time to next job come
            while t < tServe %jobs come betwen this jobs come and next serve time
                t = t + nextJobComeTime2(t);
                nJob = nJob + 1;
            end
            tJob = t;
            t = tServe; %now continue to serve 
        end
    end
end
