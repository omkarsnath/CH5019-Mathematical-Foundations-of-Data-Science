function g = sigmoid(z)
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
den = 1 + exp(-z);
g = 1./den;
