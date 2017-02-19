function S = Simillarity(Alpha,A)
    N=length(A);
    S=inv(eye(N)-Alpha.*A);
    %If Alpha is not a constant matrix you can refer to our paper and simply replace the equation for 
    %similarity matrix. 
    % For a Dynamic Alpha Run the following:
    %S=eye(N)+Alpha.*A + Alpha.*Alpha.*A^2+Alpha.*Alpha.*Alpha.*A^3;
   
    %[V,D] = eig(A);
    %S=zeros(N,N);
    %for each k=1:N
    % calculate S(i,j)=S(i,j)+(V(i,k)*(V(k,j))^(-1))*(1/(1-Alpha(i,j)*D(k,k)));;
  
end
