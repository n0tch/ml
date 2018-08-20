function J = FuncaoCusto(X, y, theta)
  J = 0;
  ## calculo da hipotese para todos os pontos de X
  m = length(y);
  h = X * theta;
  J = sum((h-y).^2)./(2*m);
end