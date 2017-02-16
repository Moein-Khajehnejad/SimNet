function S = Simillarity(Alpha,P,A)
    N=length(A);
    S=inv(eye(N)-Alpha.*P);
end