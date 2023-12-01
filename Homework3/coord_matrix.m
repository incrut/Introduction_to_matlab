function  output  = coord_matrix(input)

index_counter = int16(1);   %counter for indexes

arr_size = size (input);    %size of the matrix

for i = 1:arr_size(1)   %listing rows one after each other 
    for j = 1:arr_size(2)   %listing columns one after each other

        input (i, j) = index_counter;   %value of this certain value is now equals to the number of its index
        
        index_counter = index_counter + 1;  % counter for indexes + 1 (next index)
       
    end
end
output = input; % return a new array as an output
end