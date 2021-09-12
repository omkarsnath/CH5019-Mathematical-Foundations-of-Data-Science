data = readtable('Dataset_Question2.xlsx');
X = data(:, 1:5);
X = table2array(X);
y2 = table2array(data(:,6));
y1 = char(y2);
y = zeros(size(data,1),1);
ctr = 0;
for i = 1:size(y1,1)
    if strcmp(y1(i),'P') == 1
        y(i) = 1;
    end
    if strcmp(y1(i),'F') == 1
        y(i) = 0;
    end
end

X = [X X.^2 X.^3 X.^4]
mu = mean(X);
sigma = std(X);
X_norm = (X - mu)./sigma;
X = X_norm;

X = [ones(size(X,1),1) X];

XTrain = X(1:700,:);
yTrain = y(1:700,:);

XTesting = X(701:end,:);
yTesting = y(701:end,:);

[m,n] = size(XTrain);

theta = zeros(n,1)
alpha = 0.03;
num_iters = 50;

lambda = 20000;

[theta, J_history] = gradientDescent(XTrain, yTrain, theta, alpha, num_iters,lambda);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');


p = predict(theta, XTesting);
fprintf('Test Accuracy: %f\n', mean(double(p == yTesting)) * 100);

p = predict(theta, XTrain);
fprintf('Train Accuracy: %f\n', mean(double(p == yTrain)) * 100);
