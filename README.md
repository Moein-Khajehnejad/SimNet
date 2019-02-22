# SimNet
This is the code which implements **SimNet**, a new method for network representation that is explained in our paper:  
>SimNet: Similarity-based Network Embeddings with Mean Commute Time.  
>Moein Khajehnejad.  

The code can be applied to any arbitrary graph.  
# Code Usage
To run this source code use _Run_SimNet.m_ function. Entries to this function are the network's _Adjacency Matrix_ and the appeald _dimension_ for the final representation of the network. Also set _c_ to 1 if you wish to use a constant damping factor and set _c_ to zero if a dynamic damping factor is desired. You can refer to our paper for more information on this matter.  
Simply add all the included functions and run the code.  
The output is a matrix representing the network.
# Note
a. In case the adjacency matrix representing the network has eigenvalues larger than one, we simply divide all elements by     
`[size of matrix]×[maximum element]`. It will guarantee sum of each row is lower than one, hence there will be no eigenvalue larger than one. Therefore the condition _alpha<1_ will be sufficient  for the similarity limit to converge.  
b. L2 norm imposition not needed.  
c. SimNet can be applied to un\weighted and undirected graphs. For a directed graph, add adjacency matrix and its transpose and use the resulted matrix as the first entry to Run_SimNet.   
# Cite
In case you found this code useful in your work, please kindly cite our paper:  
SimNet: Similarity-based Network Embeddings with Mean Commute Time.  
Moein Khajehnejad.
# Contact
If you have any questions regarding the code, feel free to contact me on moein.khajehnejad@gmail.com
