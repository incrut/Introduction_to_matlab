arr = zeros(20);

for i = 1:2:length(arr)
    for j = 1:width(arr)
        arr(i,j) = 1;
    end
end

imshow(arr)