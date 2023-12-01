%I have actually two solutions for this problem

g = zeros(101, 101);
m = zeros(101, 101);

for i = (2:2:(101*101))
    g(i) = 1;
end

for i = (1:length(m))
    for j = ((rem(i,2) + 1):2:width(m))
        m(i,j) = 1;
    end

end

imshow(g)