function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
n = size(X,2);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

for i=1:m
    J = J+1/(2*m)*(X(i,:)*theta-y(i))*(X(i,:)*theta-y(i));
end
for i=2:n
    J = J+lambda/(2*m)*theta(i)*theta(i);
end

for j=1:n
    for i=1:m
        grad(j) = grad(j)+1/m*(X(i,:)*theta-y(i))*X(i,j);
    end
end
for j=2:n
    grad(j) = grad(j)+lambda/m*theta(j);
end








% =========================================================================

grad = grad(:);

end
