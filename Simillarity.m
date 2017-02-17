function S = Simillarity(Alpha,P,A)
    N=length(A);
    S=inv(eye(N)-Alpha.*P);
    %If Alpha is not a constant matrix you can refer to our paper and simply replace the equation for 
    %similarity matrix you can notice that the summation does not need to go on after a specific 
    %amount of steps according to the network structure
    %[V,D] = eig(P);
    %S=zeros(N,N);
    %for each k=1:N
    % calculate S(i,j)=S(i,j)+(V(i,k)*(V(k,j))^(-1))*(1/(1-Alpha(i,j)*D(k,k)));;
  
end
