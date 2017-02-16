function NetRep= Run_SimNet(Adjacency,dimension)

%Adjacency Matrix Is Loaded
P=ScaleMat(Adjacency); %matrix is scaled
N=length(Adjacency); 

W = Adjacency - diag(diag(Adjacency));  %diagonal elements must be 0
D = diag(sum(W), 0); %degree matrix
L_plus=pinv(D-Adjacency); %Moore-Penrose pseudoinverse

%Calculating Matrix Alpha
Alpha=zeros(N,N);
for i=1:N
    for j=1:N
        Alpha(i,j)=(atan(L_plus(i,j))+pi/2)/pi;
    end
end

%Similarity Matrix Using Dynamic Damping Factors
%This Similarity can also be calculated using a constant matrix Alpha;
%Please refer to our paper for more information.
S  = Simillarity(Alpha,P,Adjacency);
S=(S+S')/2;% making symmetric matrix

k=1; %constant,no need to use higher steps
CoMat= CoOccMat(S, length(S), k); % co-occurrence matrix from graph
NetRep=SimNet(CoMat,k,dimension,CoMat);

end