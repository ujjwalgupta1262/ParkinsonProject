clear; close all; clc
data = importdata('data39_2.txt');
len = data(1,1);
%Removing first row
data = data(2 : end,:);
imfs = rParabEmd__L(data(:,1),40,40,1);
disp(imfs);