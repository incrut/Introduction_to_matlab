%1st task

t = linspace(-10,10);   %creating a range of 100 values between -10 and 10
w = 2.^log (abs(cos(t * 0.5 + 1))) + 3 * cos(t * 0.1);  %w is a mathematical function dependent on t value
plot (t,w,'b', 'LineWidth', 2);     %showing a plot with these two values (w,t), it has blue colour and its width is 1
axis([-10, 10, 0, 5]);  %show graph in this range of axes
grid    %show grid

%2nd task

n = linspace (-5, 1, 31);   %creating a range of 31 values between -5 and 1
z = 5*exp(-n).*sin(n);      %z is a mathematical function dependent on n value
stem(n, z, 'b', 'LineWidth', 1.5);   %create a graph with these two values (n,z), it has blue colour and its width is 1.5

%3rd task
input = 1:5;
disp(mycumulativesumfunc(input));
