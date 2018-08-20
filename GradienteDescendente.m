function theta = GradienteDescendente(X, y, thetaI, alpha, iter)
  theta = thetaI;
  m = length(y);
  
  for a = 1 : iter
    theta_aux1 = theta(1) - (alpha ./ m) .* sum(X * theta - y);
    theta_aux2 = theta(2) - (alpha ./ m) .* sum((X * theta - y) .* X(:,2));
    
    theta(1) = theta_aux1;
    theta(2) = theta_aux2;
  end
end