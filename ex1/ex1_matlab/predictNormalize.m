function [predict_norm] = predictNormalize(X, mu, sigma)
%predictNormalize Normalizes the features in X 
%   FEATURENORMALIZE(X, mu, sigma) returns a normalized version of X 
%   given a mean value and the standard deviation that was previously
%   calculated for a training set.

m = size(X,1);
X_norm = X;

for i = 1:size(X,2)
    X_norm(:,i) = (X(:,i)-mu(i))/sigma(i);
end

predict_norm = [ones(m, 1) X_norm];
% ============================================================

end