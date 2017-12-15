N = 1000;
X = 2*rand(N,2) - 1;
X = [ones(N,1) X X(:,1).*X(:,2) X(:,1).^2 X(:,2).^2];
x_coor = X(:,2);
y_coor = X(:,3);
y = sign(y_coor.^2 + x_coor.^2 - 0.6);
w = inv(X'*X)*X'*y;
err_in = sum(sign(X*w) == -y)/N;
test_set = 2*rand(1000,2) - 1;
x_out = test_set(:,1);
y_out = test_set(:,2);
test_set = [ones(1000,1) test_set test_set(:,1).*test_set(:,2) test_set(:,1).^2 test_set(:,2).^2]; 
output = sign(y_out.^2 + x_out.^2 - 0.6);
err_out = sum(sign(test_set*w) == -output)/1000;
disp(err_out);
disp(w);