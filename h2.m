nu1_vec = [];
nuRand_vec = [];
nuMin_vec = [];
for i = 1 : 100000
A = sum(round(rand(1000,10)),2);
nu1 = A(1)/10;
nu1_vec = [nu1_vec ; nu1];
ran = mod(round(1000*rand),1000) + 1;
nuRand = A(ran)/10;
nuRand_vec = [nuRand_vec ; nuRand];
minIndex = find(A == min(A));
nuMin = A(minIndex(1))/10;
nuMin_vec = [nuMin_vec ; nuMin];
end;
%disp(mean(nuMin_vec));
mu = mean(nuRand_vec);
variance = var(nuRand_vec);
epsilon = [0.00000001,0.00001,0.00003,0.0001, 0.0003, 0.001, 0.003, 0.01, 0.03, 0.1, 0.3];
nu1_ineq = 0;
nuRand_ineq = 0;
nuMin_ineq = 0;

for i = 1:11
	epsi = epsilon(i);
	low = 0.5 + epsi;
	high = 0.5 - epsi;
	nu1_prob = (sum(nu1_vec > low) + sum(nu1_vec < high))/100000;
	nuRand_prob = (sum(nuRand_vec > low) + sum(nuRand_vec < high))/100000;
	nuMin_prob = (sum(nuMin_vec > low) + sum(nuMin_vec < high))/100000;
	nu1_ineq += (nu1_prob < 2*exp(-20*epsi*epsi));
	nuRand_ineq += (nuRand_prob < 2*exp(-20*epsi*epsi));
	nuMin_ineq += (nuMin_prob < 2*exp(-20*epsi*epsi));
end;

disp(nu1_ineq);
disp(nuRand_ineq);
disp(nuMin_ineq);
