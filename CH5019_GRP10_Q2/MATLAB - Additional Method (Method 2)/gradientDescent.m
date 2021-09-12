function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters,lambda)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

temp = theta.*(1-(alpha*lambda)/m);
h = X*theta;
brack = (h-y).*X;
summation = sum(brack);
update = alpha*(1/m)*summation;
theta = temp - update';


    % Save the cost J in every iteration
    J_history(iter) = costFunction(theta, X, y,lambda);

end


