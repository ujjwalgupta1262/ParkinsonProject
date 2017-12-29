clear; close all; clc
data = importdata('data39_2.txt');
len = data(1,1);
%Removing first row
data = data(2 : end,:);
y_coor = data(:,1);
x_coor = data(:,2);
%Shannon and Renyi entropy for x and y coordinates
[shannon_x, renyi2_x, renyi3_x] = Entropy(x_coor);
[shannon_y, renyi2_y, renyi3_y] = Entropy(y_coor);
%conventional energies of x and y coordinates
CE_x = sum(x_coor.^2);
CE_y = sum(y_coor.^2);
%Teager-Kaiser energies of x and y coordinates
TKE1_x = sum(x_coor(1:len - 1).^2 - x_coor(2:len).*[x_coor(len) ; x_coor(1 : len-2)]);
TKE1_y = sum(y_coor(1:len - 1).^2 - y_coor(2:len).*[y_coor(len) ; y_coor(1 : len-2)]);
TKE2_x = sum(x_coor(1:len - 2).^2 - x_coor(3:len).*[x_coor(len - 1) ; x_coor(len) ; x_coor(1 : len - 4)]);
TKE2_y = sum(y_coor(1:len - 2).^2 - y_coor(3:len).*[y_coor(len - 1) ; y_coor(len) ; y_coor(1 : len - 4)]);
%Noise variance
N_x = estimatenoise(x_coor);
N_y = estimatenoise(y_coor);
%SNR_CE and SNR_TKE1 and SNR_TKE2
SNR_CE_x = CE_x/(len * N_x);
SNR_CE_y = CE_y/(len * N_y);
SNR_TKE1_x = TKE1_x/(len * N_x);
SNR_TKE1_y = TKE1_y/(len * N_y);
SNR_TKE2_x = TKE2_x/(len * N_x);
SNR_TKE2_y = TKE2_y/(len * N_y);
%IMFs
IMF_x = rParabEmd__L(x_coor,40,40,1);
IMF_y = rParabEmd__L(y_coor,40,40,1);
%Intrinsic entropies of first and second IMFs
[i1_shannon_x, i1_renyi2_x, i1_renyi3_x] = Entropy(IMF_x(:,1));
[i1_shannon_y, i1_renyi2_y, i1_renyi3_y] = Entropy(IMF_y(:,1));
[i2_shannon_x, i2_renyi2_x, i2_renyi3_x] = Entropy(IMF_x(:,2));
[i2_shannon_y, i2_renyi2_y, i2_renyi3_y] = Entropy(IMF_y(:,2));
%Intrinsic Coventional Energies of first and second IMFs
i1_CE_x = sum(IMF_x(:,1).^2);
i1_CE_y = sum(IMF_y(:,1).^2);
i2_CE_x = sum(IMF_x(:,2).^2);
i2_CE_y = sum(IMF_y(:,2).^2);
%Intrinsic Teager-Kaiser energies of first and second IMFs
i1_TKE1_x = sum(IMF_x(1:len - 1,1).^2 - IMF_x(2:len,1).*[IMF_x(len,1) ; IMF_x(1 : len-2,1)]);
i1_TKE2_x = sum(IMF_x(1:len - 2,1).^2 - IMF_x(3:len,1).*[IMF_x(len - 1,1) ; IMF_x(len,1) ; IMF_x(1 : len - 4,1)]);
i1_TKE1_y = sum(IMF_y(1:len - 1,1).^2 - IMF_y(2:len,1).*[IMF_y(len,1) ; IMF_y(1 : len-2,1)]);
i1_TKE2_y = sum(IMF_y(1:len - 2,1).^2 - IMF_y(3:len,1).*[IMF_y(len - 1,1) ; IMF_y(len,1) ; IMF_y(1 : len - 4,1)]);
i2_TKE1_x = sum(IMF_x(1:len - 1,2).^2 - IMF_x(2:len,2).*[IMF_x(len,2) ; IMF_x(1 : len-2,2)]);
i2_TKE2_x = sum(IMF_x(1:len - 2,2).^2 - IMF_x(3:len,2).*[IMF_x(len - 1,2) ; IMF_x(len,2) ; IMF_x(1 : len - 4,2)]);
i2_TKE1_y = sum(IMF_y(1:len - 1,2).^2 - IMF_y(2:len,2).*[IMF_y(len,2) ; IMF_y(1 : len-2,2)]);
i2_TKE2_y = sum(IMF_y(1:len - 2,2).^2 - IMF_y(3:len,2).*[IMF_y(len - 1,2) ; IMF_y(len,2) ; IMF_y(1 : len - 4,2)]);
%SNR using conventional energies and IMFs
i_CE_x = [];
i_CE_y = [];
for i = 3:size(IMF_x,2)
	i_CE_x = [i_CE_x ; sum(IMF_x(:,i).^2)];
end;
for i = 3:size(IMF_y,2)
	i_CE_y = [i_CE_y ; sum(IMF_y(:,i).^2)];
end;
SNR_ICE_x = sum(i_CE_x)/(i1_CE_x + i2_CE_x);
SNR_ICE_y = sum(i_CE_y)/(i1_CE_y + i2_CE_y);
%SNR using Teager-Kaiser energies and IMFs
i_TKE1_x = [];
i_TKE2_x = [];
i_TKE1_y = [];
i_TKE2_y = [];
for i = 3:size(IMF_x,2)
	i_TKE1_x = [i_TKE1_x ; sum(IMF_x(1:len - 1,i).^2 - IMF_x(2:len,i).*[IMF_x(len,i) ; IMF_x(1 : len-2,i)])];
end;
for i = 3:size(IMF_x,2)
	i_TKE2_x = [i_TKE2_x ; sum(IMF_x(1:len - 2,i).^2 - IMF_x(3:len,i).*[IMF_x(len - 1,i) ; IMF_x(len,i) ; IMF_x(1 : len - 4,i)])];
end;
for i = 3:size(IMF_y,2)
	i_TKE1_y = [i_TKE1_y ; sum(IMF_y(1:len - 1,i).^2 - IMF_y(2:len,i).*[IMF_y(len,i) ; IMF_y(1 : len-2,i)])];
end;
for i = 3:size(IMF_y,2)
	i_TKE2_y = [i_TKE2_y ; sum(IMF_y(1:len - 2,i).^2 - IMF_y(3:len,i).*[IMF_y(len - 1,i) ; IMF_y(len,i) ; IMF_y(1 : len - 4,i)])];
end;
SNR_ITKE1_x = sum(i_TKE1_x)/(i1_TKE1_x + i2_TKE1_x);
SNR_ITKE2_x = sum(i_TKE2_x)/(i1_TKE2_x + i2_TKE2_x);
SNR_ITKE1_y = sum(i_TKE1_y)/(i1_TKE1_y + i2_TKE1_y);
SNR_ITKE2_y = sum(i_TKE2_y)/(i1_TKE2_y + i2_TKE2_y);












