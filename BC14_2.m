%Derivative of a funciton
% Set up an x array fromn 0 to 10 with an incrament 
x = 0:0.01:10;
y = 5*x.^2.*exp(-0.2*x).*sin(x);
%Find the central difference estimate
n = length(x);
der = (y(3:n)-y(1:n-2))./(x(3:n)-x(1:n-2));
% Plot the original function
subplot(2,1,1)
plot(x,y)
grid on
title('Original Function')
subplot(2,1,2)
plot(x(2:n-1),der, Color = 'r')
grid on
title('Derivative Function')
xlabel("x")
ylabel("y")

