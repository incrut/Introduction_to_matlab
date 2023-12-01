function  output  = list_multi(A, B)

len_a = numel(A);   %a new variable for length of the A matrix
len_b = numel(B);   %a new variable for length of the B matrix

new = zeros(len_a,len_b);   %a new matrix with dimensions of lengths of two inputed matrixes
for i = 1:len_a     %listing values of rows of a new matrix
    for j = 1:len_b  %listing balues of columns of a new matrix 
        new(i,j) = A(i) * B(j);     %replacing this particular element with a value of value in matrix A multiplied by a value in matrix B
    end
end
output = new;   %return a new matrix as an output
end