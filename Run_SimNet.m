function NetRep= Run_SimNet(Adjacency,dimension)

%Adjacency Matrix Is Loaded
P=ScaleMat(Adjacency); %matrix is scaled
N=length(Adjacency);
Adjacency=Adjacency/(N*max(max(Adjacency)));

W = Adjacency - diag(diag(Adjacency));  %diagonal elements must be 0
D = diag(sum(W), 0); %degree matrix
L_plus=pinv(D-Adjacency); %Moore-Penrose pseudoinverse

%This section is used if you wish to use dynamic damping factors.Please refer to our paper for more information.
%Calculating Matrix Alpha
Alpha=zeros(N,N);
%for i=1:N
    %for j=1:N
        %Alpha(i,j)=(atan(L_plus(i,j))+pi/2)/pi;
    %end
%end
%As a more simple case a constant matrix can be used as Alpha
Alpha = 0.5;
S  = Simillarity(Alpha,P,Adjacency);

k=1; %constant,no need to use higher steps
CoMat= CoOccMat(S, length(S), k); % co-occurrence matrix from graph
NetRep=SimNet(CoMat,k,dimension,CoMat);

end
