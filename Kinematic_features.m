function [x_vel_on,y_vel_on,time_interval_on,time_interval_off,speed,NCV_on,NCA_on,rel_NCV_on,rel_NCA_on,norm_onTime,NCP,rel_NCP,NCV_off,NCA_off,rel_NCV_off,rel_NCA_off,norm_offTime,off_onTime,arithMean,geoMean,trimMean,percentiles,moments,kurto,ranges,medians,modes,stdDevs,robustRange,interQuartiles,shannon_x,shannon_y,renyi2_x,renyi2_y,renyi3_x,renyi3_y,SNR_CE_x,SNR_CE_y,SNR_TKE1_x,SNR_TKE1_y,SNR_TKE2_x,SNR_TKE2_y,i1_shannon_x,i1_shannon_y,i1_renyi2_x,i1_renyi2_y,i1_renyi3_x,i1_renyi3_y,i2_shannon_x,i2_shannon_y,i2_renyi2_x,i2_renyi2_y,i2_renyi3_x,i2_renyi3_y,SNR_ICE_x,SNR_ICE_y,SNR_ITKE1_x,SNR_ITKE1_y,SNR_ITKE2_x,SNR_ITKE2_y]=kinematic_features(file)
 
pkg load statistics;


%disp("filename is:");
fprintf('%s \n',file);

data = importdata(file);
%reading data into matrices
len = length(data) - 1;
%Removing first row
data = data(2 :end,:);
total_time = data(len,3) - data(1,3);
%finding index of rows with button status 1 and 0
ind0 = find(data(:,4) == 0);
ind1 = find(data(:,4) == 1);
%partitioning data into on-surface and in-air
data_on = data(ind1, :);
data_off = data(ind0, :);

%-----------------------------------On - surface-----------------------------------------%
%extracting on surface data
y_coors_on = data_on(:,1);
x_coors_on = data_on(:,2);
time_on = data_on(:,3);
azimuth_on = data_on(:,5);
altitude_on = data_on(:,6);
pressure_on = data_on(:,7);
time_on = time_on - time_on(1);
time_shiftUp_on = time_on(2 : end,:);
time_shiftDown_on = time_on(1 : end - 1, :);
time_interval_on = time_shiftUp_on - time_shiftDown_on;

%Kinematic features
%shifted x_coors and y_coors and pressure features
x_shift_up_on = x_coors_on(2:end,:);
x_shift_down_on = x_coors_on(1:end - 1,:);

y_shift_up_on = y_coors_on(2:end,:);
y_shift_down_on = y_coors_on(1:end - 1,:);

pressure_on_shiftUp = pressure_on(2:end, :);
pressure_on_shiftDown = pressure_on(1 : end - 1, :);

%horizontal and vertical velocity and total velocity and pressure
x_vel_on = abs(x_shift_up_on - x_shift_down_on)/7.5;
y_vel_on = abs(y_shift_up_on - y_shift_down_on)/7.5;
vel_on = sqrt(x_vel_on.^2 + y_vel_on.^2);
pressure_rate = abs(pressure_on_shiftUp - pressure_on_shiftDown)/7.5;

ind_on = find((ind1(2:end) - ind1(1:end - 1)) > 2);
%find all indices where time interval > 10 and modify velocity and time_interval vectors accordingly
%ind_on = find(time_interval_on > 30);
x_vel_on(ind_on,:) = [];
y_vel_on(ind_on,:) = [];
vel_on(ind_on,:) = [];
%time_interval_on(ind_on,:) = [];
pressure_rate(ind_on,:) = [];

%save pressure_rate.txt pressure_rate;

%save x_vel_on.txt x_vel_on;
%save y_vel_on.txt y_vel_on;
%save time_interval_on.txt time_interval_on;
%save time_interval_off.txt time_interval_off;

%shifted x_vel and y_vel
x_vel_on_shiftUp = x_vel_on(2 : end, :);
x_vel_on_shiftDown = x_vel_on(1 : end - 1,:);

y_vel_on_shiftUp = y_vel_on(2 : end, :);
y_vel_on_shiftDown = y_vel_on(1 : end - 1,:);

%horizontal and vertical accelaration and total accelaration
x_acc_on = abs(x_vel_on_shiftUp - x_vel_on_shiftDown)/7.5;  %divide by 7.5
y_acc_on = abs(y_vel_on_shiftUp - y_vel_on_shiftDown)/7.5;  %divide by 7.5
acc_on = sqrt(x_acc_on.^2 + y_acc_on.^2);

%shifted x_acc an y_acc
x_acc_on_shiftUp = x_acc_on(2 : end, :);
x_acc_on_shiftDown = x_acc_on(1 : end - 1,:);

y_acc_on_shiftUp = y_acc_on(2 : end, :);
y_acc_on_shiftDown = y_acc_on(1 : end - 1,:);

%horizontal and vertical jerk and total jerk
x_jerk_on = abs(x_acc_on_shiftUp - x_acc_on_shiftDown)/7.5;     %divide by 7.5
y_jerk_on = abs(y_acc_on_shiftUp - y_acc_on_shiftDown)/7.5;		%divide by 7.5
jerk_on = sqrt(x_jerk_on.^2 + y_jerk_on.^2);

%total stroke length and total on-surface time and stroke speed 
displacement =  (x_shift_up_on - x_shift_down_on).^2 + (y_shift_up_on - y_shift_down_on).^2;
stroke_length = sum(displacement);
stroke_length -= sum(displacement(ind_on,:));
on_surface_time = sum(time_interval_on);
on_surface_time -= sum(time_interval_on(ind_on,:));
speed = stroke_length/on_surface_time;

%save speed.txt speed;

%NCV and NCA on surface
NCV_on = 0;
NCA_on = 0;
for i = 2 : length(vel_on) - 1
	if((vel_on(i) > vel_on(i + 1) && vel_on(i) > vel_on(i - 1)) || (vel_on(i) < vel_on(i + 1) && vel_on(i) < vel_on(i - 1)))
		NCV_on += 1;
	end;
end;

for i = 2 : length(acc_on) - 1
	if((acc_on(i) > acc_on(i + 1) && acc_on(i) > acc_on(i - 1)) || (acc_on(i) < acc_on(i + 1) && acc_on(i) < acc_on(i - 1)))
		NCA_on += 1;
	end;
end;

%save NCV_on.txt NCV_on;
%save NCA_on.txt NCA_on;

%Relative NCV and NCA on time

rel_NCV_on = NCV_on/on_surface_time;
rel_NCA_on = NCA_on/on_surface_time;

%save rel_NCV_on.txt rel_NCV_on;
%save rel_NCA_on.txt rel_NCA_on;

%normalised on surface time
norm_onTime = on_surface_time/total_time;


%stroke_speed
if(length(ind_on) == 0)
	stroke_speed = speed;
else
	%----------------------debug this-----------------------------%
	stroke_speed = [];
	ind_on = [0 ; ind_on];
	for i = 1 : length(ind_on) - 1
		stroke_len = sum(displacement(ind_on(i) + 1 : ind_on(i + 1) - 1));
		ind_on(1) = 1;
		time_interval = sum(time_interval_on(ind_on(i) : ind_on(i + 1) - 1));
		stroke_speed = [stroke_speed ; stroke_len/time_interval];
	end;
	stroke_len = sum(displacement(ind_on(length(ind_on)) + 1 : end));
	time_interval = sum(time_interval_on(ind_on(length(ind_on)) : end));
    stroke_speed = [stroke_speed ; stroke_len/time_interval];
end;
%disp(stroke_speed);

%NCP and relative NCP
%smooth_pressure = conv(pressure_on, ones(1,9)/1, 'same');
NCP = 0;
for i = 2 : length(pressure_on) - 1
	if((pressure_on(i) > pressure_on(i + 1) && pressure_on(i) > pressure_on(i - 1)) || (pressure_on(i) < pressure_on(i + 1) && pressure_on(i) < pressure_on(i - 1)))
		NCP += 1;
	end;
end;

rel_NCP = NCP/on_surface_time;


%----------------------------------------In - Air------------------------------------%


vel_off=[];
acc_off=[];
jerk_off=[];
x_vel_off=[];
x_acc_off=[];
x_jerk_off=[];
y_vel_off=[];
y_acc_off=[];
y_jerk_off=[];

if(length(ind0) > 0)

%extracting off surface data
y_coors_off = data_off(:,1);
x_coors_off = data_off(:,2);
time_off = data_off(:,3);
azimuth_off = data_off(:,5);
altitude_off = data_off(:,6);
pressure_off = data_off(:,7);
time_off = time_off - time_off(1);
time_shiftUp_off = time_off(2 : end,:);
time_shiftDown_off = time_off(1 : end - 1, :);
time_interval_off = time_shiftUp_off - time_shiftDown_off;
off_surface_time = total_time - on_surface_time;

%Kinematic features
%shifted x_coors and y_coors
x_shift_up_off = x_coors_off(2:end,:);
x_shift_down_off = x_coors_off(1:end - 1,:);

y_shift_up_off = y_coors_off(2:end,:);
y_shift_down_off = y_coors_off(1:end - 1,:);

%horizontal and vertical velocity and total velocity
x_vel_off = abs(x_shift_up_off - x_shift_down_off)/7.5;
y_vel_off = abs(y_shift_up_off - y_shift_down_off)/7.5;
vel_off = sqrt(x_vel_off.^2 + y_vel_off.^2);

ind_off = find((ind0(2:end) - ind0(1:end - 1)) > 2);
%find all indices where time interval > 10 and modify velocity and time_interval vectors accordingly
%ind_off = find(time_interval_off > 10);
x_vel_off(ind_off,:) = [];
y_vel_off(ind_off,:) = [];
vel_off(ind_off,:) = [];
time_interval_off(ind_off,:) = [];

%shifted x_vel and y_vel
x_vel_off_shiftUp = x_vel_off(2 : end, :);
x_vel_off_shiftDown = x_vel_off(1 : end - 1,:);

y_vel_off_shiftUp = y_vel_off(2 : end, :);
y_vel_off_shiftDown = y_vel_off(1 : end - 1,:);

%horizontal and vertical accelaration and total accelaration
x_acc_off = abs(x_vel_off_shiftUp - x_vel_off_shiftDown)/7.5;
y_acc_off = abs(y_vel_off_shiftUp - y_vel_off_shiftDown)/7.5;
acc_off = sqrt(x_acc_off.^2 + y_acc_off.^2);

%shifted x_acc an y_acc
x_acc_off_shiftUp = x_acc_off(2 : end, :);
x_acc_off_shiftDown = x_acc_off(1 : end - 1,:);

y_acc_off_shiftUp = y_acc_off(2 : end, :);
y_acc_off_shiftDown = y_acc_off(1 : end - 1,:);

%horizontal and vertical jerk and total jerk
x_jerk_off = abs(x_acc_off_shiftUp - x_acc_off_shiftDown)/7.5;
y_jerk_off = abs(y_acc_off_shiftUp - y_acc_off_shiftDown)/7.5;
jerk_off = sqrt(x_jerk_off.^2 + y_jerk_off.^2);

%total stroke length and total off-surface time and stroke speed 
displacement_off =  (x_shift_up_off - x_shift_down_off).^2 + (y_shift_up_off - y_shift_down_off).^2;
stroke_length_off = sum(displacement_off);
stroke_length_off -= sum(displacement_off(ind_off,:));
%off_surface_time = sum(time_interval_off);
speed_off = stroke_length/off_surface_time;

%NCV and NCA in air
NCV_off = 0;
NCA_off = 0;
for i = 2 : length(vel_off) - 1
	if((vel_off(i) > vel_off(i + 1) && vel_off(i) > vel_off(i - 1)) || (vel_off(i) < vel_off(i + 1) && vel_off(i) < vel_off(i - 1)))
		NCV_off += 1;
	end;
end;

for i = 2 : length(acc_off) - 1
	if((acc_off(i) > acc_off(i + 1) && acc_off(i) > acc_off(i - 1)) || (acc_off(i) < acc_off(i + 1) && acc_off(i) < acc_off(i - 1)))
		NCA_off += 1;
	end;
end;


%Relative NCV and NCA in air
rel_NCV_off = NCV_off/off_surface_time;
rel_NCA_off = NCA_off/off_surface_time;


%normalised off surface time
norm_offTime = off_surface_time/total_time;
off_onTime = off_surface_time/on_surface_time;


end;


%disp();

%---------------------------Finding the statistical functionals------------------------------%
arithMean = [];
geoMean = [];
trimMean = [];
percentiles = [];
moments = [];
kurto = [];
ranges = [];
medians = [];
modes = [];
stdDevs = [];
robustRange = [];
interQuartiles = [];

%--------stroke_speed---------------%
arithMean = [arithMean ; mean(stroke_speed)];

if(length(stroke_speed) > 1)
geoMean = [geoMean ; geomean(stroke_speed)];

trimMean = [trimMean ; [trimmean(stroke_speed, 5), trimmean(stroke_speed, 10), trimmean(stroke_speed, 20), trimmean(stroke_speed, 30), trimmean(stroke_speed, 40)]];

percentiles = [percentiles ; [prctile(stroke_speed, 1), prctile(stroke_speed, 5), prctile(stroke_speed, 10), prctile(stroke_speed, 20), prctile(stroke_speed, 25), prctile(stroke_speed, 30),prctile(stroke_speed, 90), prctile(stroke_speed, 95), prctile(stroke_speed, 99)]];

moments = [moments ; [moment(stroke_speed, 3), moment(stroke_speed, 4), moment(stroke_speed, 5), moment(stroke_speed, 6)]];

kurto = [kurto; kurtosis(stroke_speed)];

ranges = [ranges ; range(stroke_speed)];

medians = [medians ; median(stroke_speed)];

modes = [modes ; mode(stroke_speed)];

stdDevs = [stdDevs ; std(stroke_speed)];

robustRange = [robustRange ; prctile(stroke_speed,99) - prctile(stroke_speed,1)];


interQuartiles = [interQuartiles ; iqr(stroke_speed)];

else
geoMean = [geoMean ; [-100]];     % garbage value= -100 being inserted at the end
trimMean = [trimMean ; [-100 -100 -100 -100 -100]];
percentiles = [percentiles ; [-100 -100 -100 -100 -100 -100 -100 -100 -100]];
moments = [moments ; [-100 -100 -100 -100]];
kurto = [kurto ; [-100]];
ranges = [ranges ; [-100]];
medians = [medians ; [-100]];
modes = [modes ; [-100]];
stdDevs = [stdDevs ; [-100]];
robustRange = [robustRange ; [-100]];
interQuartiles = [interQuartiles ; [-100]];

end;

disp("stkspeed done");
%-------------Velocity on Surface----------------%
arithMean = [arithMean ; mean(vel_on)];

geoMean = [geoMean ; geomean(vel_on(find(vel_on ~= 0)))];

trimMean = [trimMean ; [trimmean(vel_on, 5), trimmean(vel_on, 10), trimmean(vel_on, 20),trimmean(vel_on, 30), trimmean(vel_on, 40)]];

percentiles = [percentiles ; [prctile(vel_on, 1), prctile(vel_on, 5), prctile(vel_on, 10),prctile(vel_on, 20), prctile(vel_on, 25), prctile(vel_on, 30),prctile(vel_on, 90), prctile(vel_on, 95), prctile(vel_on, 99)]];

moments = [moments ; [moment(vel_on, 3), moment(vel_on, 4), moment(vel_on, 5), moment(vel_on, 6)]];

kurto = [kurto; kurtosis(vel_on)];

ranges = [ranges ; range(vel_on)];

medians = [medians ; median(vel_on)];

modes = [modes ; mode(vel_on(find(vel_on ~= 0)))];

stdDevs = [stdDevs ; std(vel_on)];

robustRange = [robustRange ; prctile(vel_on,99) - prctile(vel_on,1)];

interQuartiles = [interQuartiles ; iqr(vel_on)];


%-----------------Accelaration On Surface---------------%
arithMean = [arithMean ; mean(acc_on)];

geoMean = [geoMean ; geomean(acc_on(find(acc_on ~= 0)))];

trimMean = [trimMean ; [trimmean(acc_on, 5), trimmean(acc_on, 10), trimmean(acc_on, 20),trimmean(acc_on, 30), trimmean(acc_on, 40)]];

percentiles = [percentiles ; [prctile(acc_on, 1), prctile(acc_on, 5), prctile(acc_on, 10),prctile(acc_on, 20), prctile(acc_on, 25), prctile(acc_on, 30),prctile(acc_on, 90), prctile(acc_on, 95), prctile(acc_on, 99)]];

moments = [moments ; [moment(acc_on, 3), moment(acc_on, 4), moment(acc_on, 5), moment(acc_on, 6)]];

kurto = [kurto; kurtosis(acc_on)];

ranges = [ranges ; range(acc_on)];

medians = [medians ; median(acc_on)];

modes = [modes ; mode(acc_on(find(acc_on ~= 0)))];

stdDevs = [stdDevs ; std(acc_on)];

robustRange = [robustRange ; prctile(acc_on,99) - prctile(acc_on,1)];

interQuartiles = [interQuartiles ; iqr(acc_on)];
%--------------------Jerk on Surface------------------------%
arithMean = [arithMean ; mean(jerk_on)];

geoMean = [geoMean ; geomean(jerk_on(find(jerk_on ~= 0)))];

trimMean = [trimMean ; [trimmean(jerk_on, 5), trimmean(jerk_on, 10), trimmean(jerk_on, 20),trimmean(jerk_on, 30), trimmean(jerk_on, 40)]];

percentiles = [percentiles ; [prctile(jerk_on, 1), prctile(jerk_on, 5), prctile(jerk_on, 10),prctile(jerk_on, 20), prctile(jerk_on, 25), prctile(jerk_on, 30),prctile(jerk_on, 90), prctile(jerk_on, 95), prctile(jerk_on, 99)]];

moments = [moments ; [moment(jerk_on, 3), moment(jerk_on, 4), moment(jerk_on, 5), moment(jerk_on, 6)]];

kurto = [kurto; kurtosis(jerk_on)];

ranges = [ranges ; range(jerk_on)];

medians = [medians ; median(jerk_on)];

modes = [modes ; mode(jerk_on(find(jerk_on ~= 0)))];

stdDevs = [stdDevs ; std(jerk_on)];

robustRange = [robustRange ; prctile(jerk_on,99) - prctile(jerk_on,1)];

interQuartiles = [interQuartiles ; iqr(jerk_on)];

%---------------Horizontal Velocity on Surface---------------------%
arithMean = [arithMean ; mean(x_vel_on)];

geoMean = [geoMean ; geomean(x_vel_on(find(x_vel_on ~= 0)))];

trimMean = [trimMean ; [trimmean(x_vel_on, 5), trimmean(x_vel_on, 10), trimmean(x_vel_on, 20),trimmean(x_vel_on, 30), trimmean(x_vel_on, 40)]];

percentiles = [percentiles ; [prctile(x_vel_on, 1), prctile(x_vel_on, 5), prctile(x_vel_on, 10),prctile(x_vel_on, 20), prctile(x_vel_on, 25), prctile(x_vel_on, 30),prctile(x_vel_on, 90), prctile(x_vel_on, 95), prctile(x_vel_on, 99)]];

moments = [moments ; [moment(x_vel_on, 3), moment(x_vel_on, 4), moment(x_vel_on, 5), moment(x_vel_on, 6)]];

kurto = [kurto; kurtosis(x_vel_on)];

ranges = [ranges ; range(x_vel_on)];

medians = [medians ; median(x_vel_on)];

modes = [modes ; mode(x_vel_on(find(x_vel_on ~= 0)))];

stdDevs = [stdDevs ; std(x_vel_on)];

robustRange = [robustRange ; prctile(x_vel_on,99) - prctile(x_vel_on,1)];

interQuartiles = [interQuartiles ; iqr(x_vel_on)];

%--------------Horizontal Accelaration on Surface-----------------%
arithMean = [arithMean ; mean(x_acc_on)];

geoMean = [geoMean ; geomean(x_acc_on(find(x_acc_on ~= 0)))];

trimMean = [trimMean ; [trimmean(x_acc_on, 5), trimmean(x_acc_on, 10), trimmean(x_acc_on, 20),trimmean(x_acc_on, 30), trimmean(x_acc_on, 40)]];

percentiles = [percentiles ; [prctile(x_acc_on, 1), prctile(x_acc_on, 5), prctile(x_acc_on, 10),prctile(x_acc_on, 20), prctile(x_acc_on, 25), prctile(x_acc_on, 30),prctile(x_acc_on, 90), prctile(x_acc_on, 95), prctile(x_acc_on, 99)]];

moments = [moments ; [moment(x_acc_on, 3), moment(x_acc_on, 4), moment(x_acc_on, 5), moment(x_acc_on, 6)]];

kurto = [kurto; kurtosis(x_acc_on)];

ranges = [ranges ; range(x_acc_on)];

medians = [medians ; median(x_acc_on)];

modes = [modes ; mode(x_acc_on(find(x_acc_on~= 0)))];

stdDevs = [stdDevs ; std(x_acc_on)];

robustRange = [robustRange ; prctile(x_acc_on,99) - prctile(x_acc_on,1)];

interQuartiles = [interQuartiles ; iqr(x_acc_on)];

%------------------Horizontal Jerk on Surface------------------%
arithMean = [arithMean ; mean(x_jerk_on)];

geoMean = [geoMean ; geomean(x_jerk_on(find(x_jerk_on ~= 0)))];

trimMean = [trimMean ; [trimmean(x_jerk_on, 5), trimmean(x_jerk_on, 10), trimmean(x_jerk_on, 20),trimmean(x_jerk_on, 30), trimmean(x_jerk_on, 40)]];

percentiles = [percentiles ; [prctile(x_jerk_on, 1), prctile(x_jerk_on, 5), prctile(x_jerk_on, 10),prctile(x_jerk_on, 20), prctile(x_jerk_on, 25), prctile(x_jerk_on, 30),prctile(x_jerk_on, 90), prctile(x_jerk_on, 95), prctile(x_jerk_on, 99)]];

moments = [moments ; [moment(x_jerk_on, 3), moment(x_jerk_on, 4), moment(x_jerk_on, 5), moment(x_jerk_on, 6)]];

kurto = [kurto; kurtosis(x_jerk_on)];

ranges = [ranges ; range(x_jerk_on)];

medians = [medians ; median(x_jerk_on)];

modes = [modes ; mode(x_jerk_on(find(x_jerk_on~= 0)))];

stdDevs = [stdDevs ; std(x_jerk_on)];

robustRange = [robustRange ; prctile(x_jerk_on,99) - prctile(x_jerk_on,1)];

interQuartiles = [interQuartiles ; iqr(x_jerk_on)];

%-----------------------Vertical Velocity on Surface-----------------%
arithMean = [arithMean ; mean(y_vel_on)];

geoMean = [geoMean ; geomean(y_vel_on(find(y_vel_on ~= 0)))];

trimMean = [trimMean ; [trimmean(y_vel_on, 5), trimmean(y_vel_on, 10), trimmean(y_vel_on, 20),trimmean(y_vel_on, 30), trimmean(y_vel_on, 40)]];

percentiles = [percentiles ; [prctile(y_vel_on, 1), prctile(y_vel_on, 5), prctile(y_vel_on, 10),prctile(y_vel_on, 20), prctile(y_vel_on, 25), prctile(y_vel_on, 30),prctile(y_vel_on, 90), prctile(y_vel_on, 95), prctile(y_vel_on, 99)]];

moments = [moments ; [moment(y_vel_on, 3), moment(y_vel_on, 4), moment(y_vel_on, 5), moment(y_vel_on, 6)]];

kurto = [kurto; kurtosis(y_vel_on)];

ranges = [ranges ; range(y_vel_on)];

medians = [medians ; median(y_vel_on)];

modes = [modes ; mode(y_vel_on(find(y_vel_on ~= 0)))];

stdDevs = [stdDevs ; std(y_vel_on)];

robustRange = [robustRange ; prctile(y_vel_on,99) - prctile(y_vel_on,1)];

interQuartiles = [interQuartiles ; iqr(y_vel_on)];

%--------------------Vertical Accelaration on Surface----------------%
arithMean = [arithMean ; mean(y_acc_on)];

geoMean = [geoMean ; geomean(y_acc_on(find(y_acc_on ~= 0)))];

trimMean = [trimMean ; [trimmean(y_acc_on, 5), trimmean(y_acc_on, 10), trimmean(y_acc_on, 20),trimmean(y_acc_on, 30), trimmean(y_acc_on, 40)]];

percentiles = [percentiles ; [prctile(y_acc_on, 1), prctile(y_acc_on, 5), prctile(y_acc_on, 10),prctile(y_acc_on, 20), prctile(y_acc_on, 25), prctile(y_acc_on, 30),prctile(y_acc_on, 90), prctile(y_acc_on, 95), prctile(y_acc_on, 99)]];

moments = [moments ; [moment(y_acc_on, 3), moment(y_acc_on, 4), moment(y_acc_on, 5), moment(y_acc_on, 6)]];

kurto = [kurto; kurtosis(y_acc_on)];

ranges = [ranges ; range(y_acc_on)];

medians = [medians ; median(y_acc_on)];

modes = [modes ; mode(y_acc_on(find(y_acc_on ~= 0)))];

stdDevs = [stdDevs ; std(y_acc_on)];

robustRange = [robustRange ; prctile(y_acc_on,99) - prctile(y_acc_on,1)];

interQuartiles = [interQuartiles ; iqr(y_acc_on)];

%-------------------------Vertical Jerk on Surface----------------------%

arithMean = [arithMean ; mean(y_jerk_on)];

geoMean = [geoMean ; geomean(y_jerk_on(find(y_jerk_on ~= 0)))];

trimMean = [trimMean ; [trimmean(y_jerk_on, 5), trimmean(y_jerk_on, 10), trimmean(y_jerk_on, 20),trimmean(y_jerk_on, 30), trimmean(y_jerk_on, 40)]];

percentiles = [percentiles ; [prctile(y_jerk_on, 1), prctile(y_jerk_on, 5), prctile(y_jerk_on, 10),prctile(y_jerk_on, 20), prctile(y_jerk_on, 25), prctile(y_jerk_on, 30),prctile(y_jerk_on, 90), prctile(y_jerk_on, 95), prctile(y_jerk_on, 99)]];

moments = [moments ; [moment(y_jerk_on, 3), moment(y_jerk_on, 4), moment(y_jerk_on, 5), moment(y_jerk_on, 6)]];

kurto = [kurto; kurtosis(y_jerk_on)];

ranges = [ranges ; range(y_jerk_on)];

medians = [medians ; median(y_jerk_on)];

modes = [modes ; mode(y_jerk_on(find(y_jerk_on ~= 0)))];

stdDevs = [stdDevs ; std(y_jerk_on)];

robustRange = [robustRange ; prctile(y_jerk_on,99) - prctile(y_jerk_on,1)];

interQuartiles = [interQuartiles ; iqr(y_jerk_on)];

disp("in air");
%----------------Velocity In Air-------------------%

if(length(vel_off)!=0)

arithMean = [arithMean ; mean(vel_off)];

geoMean = [geoMean ; geomean(vel_off(find(vel_off ~= 0)))];

trimMean = [trimMean ; [trimmean(vel_off, 5), trimmean(vel_off, 10), trimmean(vel_off, 20),trimmean(vel_off, 30), trimmean(vel_off, 40)]];

percentiles = [percentiles ; [prctile(vel_off, 1), prctile(vel_off, 5), prctile(vel_off, 10),prctile(vel_off, 20), prctile(vel_off, 25), prctile(vel_off, 30),...
			   prctile(vel_off, 90), prctile(vel_off, 95), prctile(vel_off, 99)]];

moments = [moments ; [moment(vel_off, 3), moment(vel_off, 4), moment(vel_off, 5), moment(vel_off, 6)]];

kurto = [kurto; kurtosis(vel_off)];

ranges = [ranges ; range(vel_off)];

medians = [medians ; median(vel_off)];

modes = [modes ; mode(vel_off(find(vel_off ~= 0)))];

stdDevs = [stdDevs ; std(vel_off)];

robustRange = [robustRange ; prctile(vel_off,99) - prctile(vel_off,1)];

interQuartiles = [interQuartiles ; iqr(vel_off)];
end;


%----------------Accelaration In Air--------------------%

if(length(acc_off)!=0)

arithMean = [arithMean ; mean(acc_off)];

geoMean = [geoMean ; geomean(acc_off(find(acc_off ~= 0)))];

trimMean = [trimMean ; [trimmean(acc_off, 5), trimmean(acc_off, 10), trimmean(acc_off, 20),trimmean(acc_off, 30), trimmean(acc_off, 40)]];

percentiles = [percentiles ; [prctile(acc_off, 1), prctile(acc_off, 5), prctile(acc_off, 10),prctile(acc_off, 20), prctile(acc_off, 25), prctile(acc_off, 30),prctile(acc_off, 90), prctile(acc_off, 95), prctile(acc_off, 99)]];

moments = [moments ; [moment(acc_off, 3), moment(acc_off, 4), moment(acc_off, 5), moment(acc_off, 6)]];

kurto = [kurto; kurtosis(acc_off)];

ranges = [ranges ; range(acc_off)];

medians = [medians ; median(acc_off)];

modes = [modes ; mode(acc_off(find(acc_off ~= 0)))];

stdDevs = [stdDevs ; std(acc_off)];

robustRange = [robustRange ; prctile(acc_off,99) - prctile(acc_off,1)];

interQuartiles = [interQuartiles ; iqr(acc_off)];

end;

%-------------------Jerk In Air-------------------------%

if(length(jerk_off)!=0)

arithMean = [arithMean ; mean(jerk_off)];

geoMean = [geoMean ; geomean(jerk_off(find(jerk_off ~= 0)))];

trimMean = [trimMean ; [trimmean(jerk_off, 5), trimmean(jerk_off, 10), trimmean(jerk_off, 20),trimmean(jerk_off, 30), trimmean(jerk_off, 40)]];

percentiles = [percentiles ; [prctile(jerk_off, 1), prctile(jerk_off, 5), prctile(jerk_off, 10),prctile(jerk_off, 20), prctile(jerk_off, 25), prctile(jerk_off, 30),prctile(jerk_off, 90), prctile(jerk_off, 95), prctile(jerk_off, 99)]];

moments = [moments ; [moment(jerk_off, 3), moment(jerk_off, 4), moment(jerk_off, 5), moment(jerk_off, 6)]];

kurto = [kurto; kurtosis(jerk_off)];

ranges = [ranges ; range(jerk_off)];

medians = [medians ; median(jerk_off)];

modes = [modes ; mode(jerk_off(find(jerk_off ~= 0)))];

stdDevs = [stdDevs ; std(jerk_off)];

robustRange = [robustRange ; prctile(jerk_off,99) - prctile(jerk_off,1)];

interQuartiles = [interQuartiles ; iqr(jerk_off)];

end;

%------------------------------Horizontal Velocity in Air-------------%
if(length(x_vel_off)!=0)

arithMean = [arithMean ; mean(x_vel_off)];

geoMean = [geoMean ; geomean(x_vel_off(find(x_vel_off ~= 0)))];

trimMean = [trimMean ; [trimmean(x_vel_off, 5), trimmean(x_vel_off, 10), trimmean(x_vel_off, 20),trimmean(x_vel_off, 30), trimmean(x_vel_off, 40)]];

percentiles = [percentiles ; [prctile(x_vel_off, 1), prctile(x_vel_off, 5), prctile(x_vel_off, 10),prctile(x_vel_off, 20), prctile(x_vel_off, 25), prctile(x_vel_off, 30),prctile(x_vel_off, 90), prctile(x_vel_off, 95), prctile(x_vel_off, 99)]];

moments = [moments ; [moment(x_vel_off, 3), moment(x_vel_off, 4), moment(x_vel_off, 5), moment(x_vel_off, 6)]];

kurto = [kurto; kurtosis(x_vel_off)];

ranges = [ranges ; range(x_vel_off)];

medians = [medians ; median(x_vel_off)];
modes = [modes ; mode(x_vel_off(find(x_vel_off ~= 0)))];

stdDevs = [stdDevs ; std(x_vel_off)];

robustRange = [robustRange ; prctile(x_vel_off,99) - prctile(x_vel_off,1)];

interQuartiles = [interQuartiles ; iqr(x_vel_off)];

end;
%-------------------------Horizontal Accelaration in Air-------------%

if(length(x_acc_off)!=0)

arithMean = [arithMean ; mean(x_acc_off)];

geoMean = [geoMean ; geomean(x_acc_off(find(x_acc_off ~= 0)))];

trimMean = [trimMean ; [trimmean(x_acc_off, 5), trimmean(x_acc_off, 10), trimmean(x_acc_off, 20),trimmean(x_acc_off, 30), trimmean(x_acc_off, 40)]];

percentiles = [percentiles ; [prctile(x_acc_off, 1), prctile(x_acc_off, 5), prctile(x_acc_off, 10),prctile(x_acc_off, 20), prctile(x_acc_off, 25), prctile(x_acc_off, 30),prctile(x_acc_off, 90), prctile(x_acc_off, 95), prctile(x_acc_off, 99)]];

moments = [moments ; [moment(x_acc_off, 3), moment(x_acc_off, 4), moment(x_acc_off, 5), moment(x_acc_off, 6)]];

kurto = [kurto; kurtosis(x_acc_off)];

ranges = [ranges ; range(x_acc_off)];

medians = [medians ; median(x_acc_off)];
modes = [modes ; mode(x_acc_off(find(x_acc_off ~= 0)))];

stdDevs = [stdDevs ; std(x_acc_off)];

robustRange = [robustRange ; prctile(x_acc_off,99) - prctile(x_acc_off,1)];

interQuartiles = [interQuartiles ; iqr(x_acc_off)];

end;
%----------------------------Horizontal Jerk in Air-------------------%

if(length(x_jerk_off)!=0)

arithMean = [arithMean ; mean(x_jerk_off)];

geoMean = [geoMean ; geomean(x_jerk_off(find(x_jerk_off ~= 0)))];

trimMean = [trimMean ; [trimmean(x_jerk_off, 5), trimmean(x_jerk_off, 10), trimmean(x_jerk_off, 20),trimmean(x_jerk_off, 30), trimmean(x_jerk_off, 40)]];

percentiles = [percentiles ; [prctile(x_jerk_off, 1), prctile(x_jerk_off, 5), prctile(x_jerk_off, 10),prctile(x_jerk_off, 20), prctile(x_jerk_off, 25), prctile(x_jerk_off, 30),prctile(x_jerk_off, 90), prctile(x_jerk_off, 95), prctile(x_jerk_off, 99)]];

moments = [moments ; [moment(x_jerk_off, 3), moment(x_jerk_off, 4), moment(x_jerk_off, 5), moment(x_jerk_off, 6)]];

kurto = [kurto; kurtosis(x_jerk_off)];

ranges = [ranges ; range(x_jerk_off)];

medians = [medians ; median(x_jerk_off)];
modes = [modes ; mode(x_jerk_off(find(x_jerk_off ~= 0)))];

stdDevs = [stdDevs ; std(x_jerk_off)];

robustRange = [robustRange ; prctile(x_jerk_off,99) - prctile(x_jerk_off,1)];

interQuartiles = [interQuartiles ; iqr(x_jerk_off)];

end;
%-------------------------Vertical Velocity in Air-----------------------%

if(length(y_vel_off)!=0)

arithMean = [arithMean ; mean(y_vel_off)];

geoMean = [geoMean ; geomean(y_vel_off(find(y_vel_off ~= 0)))];

trimMean = [trimMean ; [trimmean(y_vel_off, 5), trimmean(y_vel_off, 10), trimmean(y_vel_off, 20),trimmean(y_vel_off, 30), trimmean(y_vel_off, 40)]];

percentiles = [percentiles ; [prctile(y_vel_off, 1), prctile(y_vel_off, 5), prctile(y_vel_off, 10),prctile(y_vel_off, 20), prctile(y_vel_off, 25), prctile(y_vel_off, 30),prctile(y_vel_off, 90), prctile(y_vel_off, 95), prctile(y_vel_off, 99)]];

moments = [moments ; [moment(y_vel_off, 3), moment(y_vel_off, 4), moment(y_vel_off, 5), moment(y_vel_off, 6)]];

kurto = [kurto; kurtosis(y_vel_off)];

ranges = [ranges ; range(y_vel_off)];

medians = [medians ; median(y_vel_off)];
modes = [modes ; mode(y_vel_off(find(y_vel_off ~= 0)))];

stdDevs = [stdDevs ; std(y_vel_off)];

robustRange = [robustRange ; prctile(y_vel_off,99) - prctile(y_vel_off,1)];

interQuartiles = [interQuartiles ; iqr(y_vel_off)];

end;

%---------------------------Vertical Accelaration in Air-------------------%

if(length(y_acc_off)!=0)

arithMean = [arithMean ; mean(y_acc_off)];

geoMean = [geoMean ; geomean(y_acc_off(find(y_acc_off ~= 0)))];

trimMean = [trimMean ; [trimmean(y_acc_off, 5), trimmean(y_acc_off, 10), trimmean(y_acc_off, 20),trimmean(y_acc_off, 30), trimmean(y_acc_off, 40)]];

percentiles = [percentiles ; [prctile(y_acc_off, 1), prctile(y_acc_off, 5), prctile(y_acc_off, 10),prctile(y_acc_off, 20), prctile(y_acc_off, 25), prctile(y_acc_off, 30),prctile(y_acc_off, 90), prctile(y_acc_off, 95), prctile(y_acc_off, 99)]];

moments = [moments ; [moment(y_acc_off, 3), moment(y_acc_off, 4), moment(y_acc_off, 5), moment(y_acc_off, 6)]];

kurto = [kurto; kurtosis(y_acc_off)];

ranges = [ranges ; range(y_acc_off)];

medians = [medians ; median(y_acc_off)];

modes = [modes ; mode(y_acc_off(find(y_acc_off ~= 0)))];

stdDevs = [stdDevs ; std(y_acc_off)];

robustRange = [robustRange ; prctile(y_acc_off,99) - prctile(y_acc_off,1)];

interQuartiles = [interQuartiles ; iqr(y_acc_off)];

end;
%--------------------------Vertical Jerk in Air------------------------%
if(length(y_jerk_off)!=0)

arithMean = [arithMean ; mean(y_jerk_off)];

geoMean = [geoMean ; geomean(y_jerk_off(find(y_jerk_off ~= 0)))];

trimMean = [trimMean ; [trimmean(y_jerk_off, 5), trimmean(y_jerk_off, 10), trimmean(y_jerk_off, 20),trimmean(y_jerk_off, 30), trimmean(y_jerk_off, 40)]];

percentiles = [percentiles ; [prctile(y_jerk_off, 1), prctile(y_jerk_off, 5), prctile(y_jerk_off, 10),prctile(y_jerk_off, 20), prctile(y_jerk_off, 25), prctile(y_jerk_off, 30),prctile(y_jerk_off, 90), prctile(y_jerk_off, 95), prctile(y_jerk_off, 99)]];

moments = [moments ; [moment(y_jerk_off, 3), moment(y_jerk_off, 4), moment(y_jerk_off, 5), moment(y_jerk_off, 6)]];

kurto = [kurto; kurtosis(y_jerk_off)];

ranges = [ranges ; range(y_jerk_off)];

medians = [medians ; median(y_jerk_off)];
modes = [modes ; mode(y_jerk_off(find(y_jerk_off ~= 0)))];

stdDevs = [stdDevs ; std(y_jerk_off)];

robustRange = [robustRange ; prctile(y_jerk_off,99) - prctile(y_jerk_off,1)];

interQuartiles = [interQuartiles ; iqr(y_jerk_off)];

end;

%--------------------------Pressure Rate------------------------%

arithMean = [arithMean ; mean(pressure_rate)];

geoMean = [geoMean ; geomean(pressure_rate(find(pressure_rate ~= 0)))];

trimMean = [trimMean ; [trimmean(pressure_rate, 5), trimmean(pressure_rate, 10), trimmean(pressure_rate, 20),trimmean(pressure_rate, 30), trimmean(pressure_rate, 40)]];

percentiles = [percentiles ; [prctile(pressure_rate, 1), prctile(pressure_rate, 5), prctile(pressure_rate, 10),prctile(pressure_rate, 20), prctile(pressure_rate, 25), prctile(pressure_rate, 30),prctile(pressure_rate, 90), prctile(pressure_rate, 95), prctile(pressure_rate, 99)]];

moments = [moments ; [moment(pressure_rate, 3), moment(pressure_rate, 4), moment(pressure_rate, 5), moment(pressure_rate, 6)]];

kurto = [kurto; kurtosis(pressure_rate)];

ranges = [ranges ; range(pressure_rate)];

medians = [medians ; median(pressure_rate)];

modes = [modes ; mode(pressure_rate(find(pressure_rate ~= 0)))];

stdDevs = [stdDevs ; std(pressure_rate)];

robustRange = [robustRange ; prctile(pressure_rate,99) - prctile(pressure_rate,1)];

interQuartiles = [interQuartiles ; iqr(pressure_rate)];


%------------------------------Entropy_SNR-----------------------%

y_coor = data(:,1);
x_coor = data(:,2);
%Shannon and Renyi entropy for x and y coordinates
[shannon_x, renyi2_x, renyi3_x] = entropy(x_coor);
[shannon_y, renyi2_y, renyi3_y] = entropy(y_coor);


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
[i1_shannon_x, i1_renyi2_x, i1_renyi3_x] = entropy(IMF_x(:,1));
[i1_shannon_y, i1_renyi2_y, i1_renyi3_y] = entropy(IMF_y(:,1));
[i2_shannon_x, i2_renyi2_x, i2_renyi3_x] = entropy(IMF_x(:,2));
[i2_shannon_y, i2_renyi2_y, i2_renyi3_y] = entropy(IMF_y(:,2));


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
%Intrinsic SNR using conventional energies and later IMFs
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


%Intrinsic SNR using Teager-Kaiser energies and later IMFs
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


disp("return");

end;
%-----------------------------------------------------------------%


%------------------------------------------------------%
