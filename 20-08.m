t = 0:0.1:10;
t = t';
y = sin(t);
plot(t,y, 'rx');

#####

A = magic(3);
B = inv(A);
C = pinv(A);

## isso tem q dar a identidade
A * B

#mutiplicacao escalar
2 .* B
A .* B

## size -> matriz podendo ter seus indices
## length -> para o tamnahdo do vetor
