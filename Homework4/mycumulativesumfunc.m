function  output  = mycumulativesumfunc(input)

sum = int16(0);     %creating a sum variable

for i = 1:length(input)     %listing values from 1 to len of matrix
    sum = sum + input(i);   %adding a value of original matrix in i to the total sum
    input(i) = sum;     %replacing value of original matrix in i with a value of total sum
end
output = input;     %return a new matrix as an output

end