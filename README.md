# SimNet
This is the code which implements **SimNet**, a new method for network representation that is explained in our paper:  
>SimNet: Similarity-based Network Embeddings with Mean Commute Time.  
>Moein Khajehnejad and Lu Wei.  

The code can be applied to any arbitrary graph.  
#Code Usage
To run this source code use __Run_SimNet.m__ function. Entries to this function are the network's Adjacency Matrix and the appeald dimension for the final representation of the network. Simply add all the included functions and run the code.  
The output is a matrix representing the network.
#Note
a. L2 norm imposition not needed.  
b. SimNet can be applied to un\weighted and un\directed graphs. For a directed graph, add adjacency matrix and its transpose and use the resulted matrix as the first entry to Run_SimNet.  
c. __Matrix Alpha__ is used as a dynamic damping factor in calculating the similarity; Though if you wish to use a constant damping factor, simply replace all the elements of Matrix Alpha with the constant value.  
#Cite
In case you found this code useful in your work, please kindly cite our paper:  
SimNet: Similarity-based Network Embeddings with Mean Commute Time.  
Moein Khajehnejad and Lu Wei.
#Contact
If you have any questions regarding the code, feel free to contact me on moein.khajehnejad@gmail.com
