function [J_hist, W] = GradientDescent(X, W, alpha, iterations, Y)

N = size(X, 1);
J_hist =  zeros(N,1);

for i = 1 : iterations
    
    %Compute Hypothesis
    hypothesis = X * W;
    
    %Compute Error
    J_hist(i, 1) = sum((hypothesis - Y) .^ 2) * (1/(2*N));
    
    %Compute Gradient
    gradients = (X' * (hypothesis - Y)) / N;
    
    %Update Parameters
    W = W - alpha * gradients;
    
end
