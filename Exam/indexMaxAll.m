function [output_matr, output_max] = indexMaxAll(inputed_matrix)

maximum = inputed_matrix(1);
for i = 1:length(inputed_matrix)

    if inputed_matrix(i) > maximum
        maximum = inputed_matrix(i);
    end

end

indices = find(inputed_matrix==maximum);

output_matr = indices;
output_max = maximum;

end