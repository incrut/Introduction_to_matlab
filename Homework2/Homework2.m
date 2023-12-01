x = (-2*pi: 0.1: 2*pi);
y = sin(x);     %sin of x values

rng default     %generation of random number generator

y1 = sin(x) + 0.25*rand(size(x));   %nosier sin version

windowScreenSize = 5;
b = (1/windowScreenSize) * ones (1, windowScreenSize);  %numer coef
a = 1;  %denom coef
new_y1 = filter(b, a, y1);  %filtering y1

plot(x,y, 'g', x,y1, 'b', x,new_y1, 'r');    %displaying all the graphs
xlabel("x values")
ylabel("sin-dist-filtered correspondance")
legend("Sin Graph", "Nosier Sin Graph", "The Filtered Sin") %legend names for graphs


x = (-2*pi:0.15:2*pi);
y1 = sin(x);
y2 = cos(x);
y3 = tan(x);

subplot(2,2,1)
plot(x,y1, '-p', "MarkerIndices", 1:4:length(y1))
title('sin(x)')

subplot(2,2,3)
plot(x,y2, '-gs', "MarkerIndices", 1:3:length(y2))
title('cos(x)')

subplot(1,2,2)
plot(x,y3, '-o', "MarkerIndices", 1:3:length(y3))
title('tan(x)')