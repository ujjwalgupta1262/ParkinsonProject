function [shannon_entropy, renyi_entropy2, renyi_entropy3] = Entropy(X)
%X is a column vector
[m n] = size(X);
%mean and standard deviation
mu = mean(X);
sigma = std(X);
%probability density function vector
p = normpdf(X, mu, sigma);
%shannon entropy
shannon_entropy = -sum(p.*log(p));
%renyi entropy
renyi_entropy2 = -log(sum(p.^2));
renyi_entropy3 = -log(sum(p.^3)/2);

