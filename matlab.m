clc;
clear;
tinicial = 0;
tfinal = 10;
paso = .0001;
duracion = (tinicial:paso:tfinal);
inicial = [pi/9,0];
[t,x] = ode45(@odefun,duracion, inicial);
figure(1)
plot(t,x(:,1));
hold on
plot(t,x(:,2));
hold off
grid on
title("Posición")
xlabel("Tiempo")
ylabel("Metros")
legend('X1','X2')



function dx= odefun(t,x)
m = 10;
r = .05;
k = 100;
dx = zeros(2,1);
dx(1) = x(2);
dx(2) = (-2*k*r*x(1))/(3*m*r*r);
end