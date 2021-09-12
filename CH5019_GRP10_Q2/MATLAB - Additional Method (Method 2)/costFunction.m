function J = costFunction(theta, X, y,lambda)

m = length(y); % number of training examples

h = sigmoid(X*theta);
J = ((-1/m)*((y'*log(h))+((1-y)'*log(1-h)))) + ((lambda/(2*m))*((theta(2:end))' * theta(2:end)));
