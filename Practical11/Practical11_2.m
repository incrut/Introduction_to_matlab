%part 2

table1 = [1 48 -8 -10 15;
          32 23 16 0 -4;
          -32 55 -12 8 6;
          40 2 -10 2 1];

table2 = zeros(4,3);

for i = 1:height(table1)
    smaller = table1(i,1);
    bigger = table1(i,1);
    mean_before = 0;
    for j = 1:length(table1)
        mean_before = mean_before + table1(i,j);
        if table1(i,j) < smaller
            smaller = table1(i,j);
        end
        if table1(i,j) > bigger
            bigger = table1(i,j);
        end
    end
    mean_after = mean_before/length(table1);
    table2(i,1) = smaller;
    table2(i,2) = mean_after;
    table2(i,3) = bigger;
end

window = int8(3);
new_matrix = 