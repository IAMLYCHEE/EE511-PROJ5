N = 100;
P=zeros(2*N+1,2*N+1); 
 for i = 1:2*N+1
     for j = 1:2*N+1
         P(i,j) = nchoosek(2*N,j-1)*((i-1)/(2*N))^(j-1)*(1-(i-1)/(2*N))^(2*N-j+1);
     end 
 end