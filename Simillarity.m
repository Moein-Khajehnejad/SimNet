function S = Simillarity(Alpha,A,c)
    N=length(A);
    if(c==1) %for a constant Alpha
        S=inv(eye(N)-Alpha.*A);
   
    else     % For a Dynamic Alpha 
        S=eye(N);
        for i=1:20     %Experiments show that after 20 steps the calculated similarity matrix does not show a noticable diference. 
        %You can set this number mannualy
            Alpha_mult = dotMult(Alpha,i);
            S= S+ Alpha_mult.* A^(i);
        end
    
    end
   
end
