%part 1

a = int8(241);  
b = int8(46);
c = int8(92);   %defining 3 integers

vector_abc = [a b c];   %defining a vector of these three ints

for i = 1:length(vector_abc)
    if vector_abc(i) > 125
        disp("Larger")
    elseif vector_abc(i) == 125
        disp("Equal")
    else
        disp("Smaller")
    end
end

sorted_vector_abc = sort(vector_abc);   %sorting automatically

for i = 1:length(vector_abc)    %my own sorting script
    for j = 1:length(vector_abc)
        if vector_abc(j) > vector_abc(i)
            temp = vector_abc(i);
            vector_abc(i) = vector_abc(j);
            vector_abc(j) = temp;
        end
    end
end

