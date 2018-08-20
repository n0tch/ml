clear;

x = [6 7 6.5 8 6.6 8.1 6.8 6.9 7.3 6.9 8.2 7.2 7.3 6.9 8.6 7.4 7.6 6.8 8 7.4 6.5]';
y = [53 60 56 79 58 85 70 56 69 76 79 68 74 72 84 78 76 65 92 80 65]';

theta = [0; 10];
X = [ones(length(x), 1) x];

J = FuncaoCusto(X, y, theta);

t = 0:0.1:10;
#h = theta(1) + theta(2).*t;
#hold on;

#plot(x,y,'ro')
#plot(t,h, 'b-')

#hold off;

theta_calculado = GradienteDescendente(X,y,theta,0,50)

h = theta_calculado(1) + theta_calculado(2) .* t;

hold on;

plot(x,y,'ro')
plot(t,h, 'b-')

hold off;