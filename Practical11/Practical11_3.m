%part 3

x = [];

while true
    if height(x) >= 5
        break
    end
    temp = input("this ", 's');
    temp = strrep(temp, ',', ' ');
    temp = sscanf(temp, '%f');
    temp = temp.';
    try
        x = [x; temp];
    catch
        disp("The vector's length cannot be different from your other vectors' lengths")
    end
end