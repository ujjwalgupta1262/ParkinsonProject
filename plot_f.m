clear; close all; clc
data = importdata('data_1_2.txt');
%reading data into matrices
len = data(1,1);
%Removing first row
data = data(2 : end,:);
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
x_vel_on = abs(x_shift_up_on - x_shift_down_on)./time_interval_on;
y_vel_on = abs(y_shift_up_on - y_shift_down_on)./time_interval_on;
vel_on = sqrt(x_vel_on.^2 + y_vel_on.^2);
pressure_rate = abs(pressure_on_shiftUp - pressure_on_shiftDown)./time_interval_on;


%find all indices where time interval > 10 and modify velocity and time_interval vectors accordingly
ind_on = find(time_interval_on > 10);
x_vel_on(ind_on,:) = [];
y_vel_on(ind_on,:) = [];
vel_on(ind_on,:) = [];
time_interval_on(ind_on,:) = [];
pressure_rate(ind_on,:) = [];

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
speed = stroke_length/on_surface_time;

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

%Relative NCV and NCA on time
rel_NCV_on = NCV_on/on_surface_time;
rel_NCA_on = NCA_on/on_surface_time;

%normalised on surface time
norm_onTime = on_surface_time/total_time;

%stroke_speed
if(length(ind_on) == 0)
	stroke_speed = speed;
else
	stroke_speed = [];
	ind_on = [0 ; ind_on];
	for i = 1 : length(ind_on) - 2
		stroke_len = sum(displacement(ind_on(i) + 1 : ind_on(i + 1) - 1));
		ind_on(1) = 1;
		time_interval = sum(time_interval_on(ind_on(i) : ind_on(i + 1) - 1));
		stroke_speed = [stroke_speed ; stroke_len/time_interval];
	end;
	stroke_len = sum(displacement(ind_on(length(ind_on)) + 1 : end));
	time_interval = sum(time_interval_on(ind_on(i) : ind_on(i + 1) - 1));
    stroke_speed = [stroke_speed ; stroke_len/time_interval];
end;

%NCP and relative NCP
%smooth_pressure = conv(pressure_on, ones(1,9)/1, 'same');
NCP = 0;
for i = 2 : length(pressure_on) - 1
	if((pressure_on(i) > pressure_on(i + 1) && pressure_on(i) > pressure_on(i - 1)) || (pressure_on(i) < pressure_on(i + 1) && pressure_on(i) < pressure_on(i - 1)))
		NCP += 1;
	end;
end;

rel_NCP = NCP/on_surface_time;

if(length(ind0) > 0)
%----------------------------------------In - Air------------------------------------%
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
x_vel_off = abs(x_shift_up_off - x_shift_down_off)./time_interval_off;
y_vel_off = abs(y_shift_up_off - y_shift_down_off)./time_interval_off;
vel_off = sqrt(x_vel_off.^2 + y_vel_off.^2);


%find all indices where time interval > 10 and modify velocity and time_interval vectors accordingly
ind_off = find(time_interval_off > 10);
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
stroke_length_off = sum(displacement);
stroke_length_off -= sum(displacement(ind_off,:));
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

disp();

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

geoMean = [geoMean ; geomean(stroke_speed)];

trimMean = [trimMean ; [trimmean(stroke_speed, 5), trimmean(stroke_speed, 10), trimmean(stroke_speed, 20),...
		   ...... trimmean(stroke_speed, 30), trimmean(stroke_speed, 40), trimmean(stroke_speed, 50)]];

percentiles = [percentiles ; [prctile(stroke_speed, 1), prctile(stroke_speed, 5), prctile(stroke_speed, 10),...
			   ...... prctile(stroke_speed, 20), prctile(stroke_speed, 25), prctile(stroke_speed, 30),...
			   ...... prctile(stroke_speed, 90), prctile(stroke_speed, 95), prctile(stroke_speed, 99)]];

moments = [moments ; [moment(stroke_speed, 3), moment(stroke_speed, 4), moment(stroke_speed, 5), moment(stroke_speed, 6)]];

kurto = [kurto; kurtosis(stroke_speed)];

ranges = [ranges ; range(stroke_speed)];

medians = [medians ; median(stroke_speed)];

modes = [modes ; mode(stroke_speed)];

stdDevs = [stdDevs ; std(stroke_speed)];

robustRange = [robustRange stroke_speed(find(stroke_speed > prctile(stroke_speed, 1) && stroke_speed < prctile(stroke_speed,99)))];

interQuartiles = [interQuartiles ; iqr(stroke_speed)];

%-------------Velocity on Surface----------------%
arithMean = [arithMean ; mean(vel_on)];

geoMean = [geoMean ; geomean(vel_on)];

trimMean = [trimMean ; [trimmean(vel_on, 5), trimmean(vel_on, 10), trimmean(vel_on, 20),...
		   ...... trimmean(vel_on, 30), trimmean(vel_on, 40), trimmean(vel_on, 50)]];

percentiles = [percentiles ; [prctile(vel_on, 1), prctile(vel_on, 5), prctile(vel_on, 10),...
			   ...... prctile(vel_on, 20), prctile(vel_on, 25), prctile(vel_on, 30),...
			   ...... prctile(vel_on, 90), prctile(vel_on, 95), prctile(vel_on, 99)]];

moments = [moments ; [moment(vel_on, 3), moment(vel_on, 4), moment(vel_on, 5), moment(vel_on, 6)]];

kurto = [kurto; kurtosis(vel_on)];

ranges = [ranges ; range(vel_on)];

medians = [medians ; median(vel_on)];

modes = [modes ; mode(vel_on)];

stdDevs = [stdDevs ; std(vel_on)];

robustRange = [robustRange vel_on(find(vel_on > prctile(vel_on, 1) && vel_on < prctile(vel_on,99)))];

interQuartiles = [interQuartiles ; iqr(vel_on)];

%----------------Velocity In Air-------------------%
arithMean = [arithMean ; mean(vel_off)];

geoMean = [geoMean ; geomean(vel_off)];

trimMean = [trimMean ; [trimmean(vel_off, 5), trimmean(vel_off, 10), trimmean(vel_off, 20),...
		   ...... trimmean(vel_off, 30), trimmean(vel_off, 40), trimmean(vel_off, 50)]];

percentiles = [percentiles ; [prctile(vel_off, 1), prctile(vel_off, 5), prctile(vel_off, 10),...
			   ...... prctile(vel_off, 20), prctile(vel_off, 25), prctile(vel_off, 30),...
			   ...... prctile(vel_off, 90), prctile(vel_off, 95), prctile(vel_off, 99)]];

moments = [moments ; [moment(vel_off, 3), moment(vel_off, 4), moment(vel_off, 5), moment(vel_off, 6)]];

kurto = [kurto; kurtosis(vel_off)];

ranges = [ranges ; range(vel_off)];

medians = [medians ; median(vel_off)];

modes = [modes ; mode(vel_off)];

stdDevs = [stdDevs ; std(vel_off)];

robustRange = [robustRange vel_off(find(vel_off > prctile(vel_off, 1) && vel_off < prctile(vel_off,99)))];

interQuartiles = [interQuartiles ; iqr(vel_off)];

%-----------------Accelaration On Surface---------------%
arithMean = [arithMean ; mean(acc_on)];

geoMean = [geoMean ; geomean(acc_on)];

trimMean = [trimMean ; [trimmean(acc_on, 5), trimmean(acc_on, 10), trimmean(acc_on, 20),...
		   ...... trimmean(acc_on, 30), trimmean(acc_on, 40), trimmean(acc_on, 50)]];

percentiles = [percentiles ; [prctile(acc_on, 1), prctile(acc_on, 5), prctile(acc_on, 10),...
			   ...... prctile(acc_on, 20), prctile(acc_on, 25), prctile(acc_on, 30),...
			   ...... prctile(acc_on, 90), prctile(acc_on, 95), prctile(acc_on, 99)]];

moments = [moments ; [moment(acc_on, 3), moment(acc_on, 4), moment(acc_on, 5), moment(acc_on, 6)]];

kurto = [kurto; kurtosis(acc_on)];

ranges = [ranges ; range(acc_on)];

medians = [medians ; median(acc_on)];

modes = [modes ; mode(acc_on)];

stdDevs = [stdDevs ; std(acc_on)];

robustRange = [robustRange acc_on(find(acc_on > prctile(acc_on, 1) && acc_on < prctile(acc_on,99)))];

interQuartiles = [interQuartiles ; iqr(acc_on)];

%----------------Accelaration In Air--------------------%
arithMean = [arithMean ; mean(acc_off)];

geoMean = [geoMean ; geomean(acc_off)];

trimMean = [trimMean ; [trimmean(acc_off, 5), trimmean(acc_off, 10), trimmean(acc_off, 20),...
		   ...... trimmean(acc_off, 30), trimmean(acc_off, 40), trimmean(acc_off, 50)]];

percentiles = [percentiles ; [prctile(acc_off, 1), prctile(acc_off, 5), prctile(acc_off, 10),...
			   ...... prctile(acc_off, 20), prctile(acc_off, 25), prctile(acc_off, 30),...
			   ...... prctile(acc_off, 90), prctile(acc_off, 95), prctile(acc_off, 99)]];

moments = [moments ; [moment(acc_off, 3), moment(acc_off, 4), moment(acc_off, 5), moment(acc_off, 6)]];

kurto = [kurto; kurtosis(acc_off)];

ranges = [ranges ; range(acc_off)];

medians = [medians ; median(acc_off)];

modes = [modes ; mode(acc_off)];

stdDevs = [stdDevs ; std(acc_off)];

robustRange = [robustRange acc_off(find(acc_off > prctile(acc_off, 1) && acc_off < prctile(acc_off,99)))];

interQuartiles = [interQuartiles ; iqr(acc_off)];

%--------------------Jerk on Surface------------------------%
arithMean = [arithMean ; mean(jerk_on)];

geoMean = [geoMean ; geomean(jerk_on)];

trimMean = [trimMean ; [trimmean(jerk_on, 5), trimmean(jerk_on, 10), trimmean(jerk_on, 20),...
		   ...... trimmean(jerk_on, 30), trimmean(jerk_on, 40), trimmean(jerk_on, 50)]];

percentiles = [percentiles ; [prctile(jerk_on, 1), prctile(jerk_on, 5), prctile(jerk_on, 10),...
			   ...... prctile(jerk_on, 20), prctile(jerk_on, 25), prctile(jerk_on, 30),...
			   ...... prctile(jerk_on, 90), prctile(jerk_on, 95), prctile(jerk_on, 99)]];

moments = [moments ; [moment(jerk_on, 3), moment(jerk_on, 4), moment(jerk_on, 5), moment(jerk_on, 6)]];

kurto = [kurto; kurtosis(jerk_on)];

ranges = [ranges ; range(jerk_on)];

medians = [medians ; median(jerk_on)];

modes = [modes ; mode(jerk_on)];

stdDevs = [stdDevs ; std(jerk_on)];

robustRange = [robustRange jerk_on(find(jerk_on > prctile(jerk_on, 1) && jerk_on < prctile(jerk_on,99)))];

interQuartiles = [interQuartiles ; iqr(jerk_on)];

%------------Jerk In Air----------------------------%
arithMean = [arithMean ; mean(jerk_off)];

geoMean = [geoMean ; geomean(jerk_off)];

trimMean = [trimMean ; [trimmean(jerk_off, 5), trimmean(jerk_off, 10), trimmean(jerk_off, 20),...
		   ...... trimmean(jerk_off, 30), trimmean(jerk_off, 40), trimmean(jerk_off, 50)]];

percentiles = [percentiles ; [prctile(jerk_off, 1), prctile(jerk_off, 5), prctile(jerk_off, 10),...
			   ...... prctile(jerk_off, 20), prctile(jerk_off, 25), prctile(jerk_off, 30),...
			   ...... prctile(jerk_off, 90), prctile(jerk_off, 95), prctile(jerk_off, 99)]];

moments = [moments ; [moment(jerk_off, 3), moment(jerk_off, 4), moment(jerk_off, 5), moment(jerk_off, 6)]];

kurto = [kurto; kurtosis(jerk_off)];

ranges = [ranges ; range(jerk_off)];

medians = [medians ; median(jerk_off)];

modes = [modes ; mode(jerk_off)];

stdDevs = [stdDevs ; std(jerk_off)];

robustRange = [robustRange jerk_off(find(jerk_off > prctile(jerk_off, 1) && jerk_off < prctile(jerk_off,99)))];

interQuartiles = [interQuartiles ; iqr(jerk_off)];

%---------------Horizontal Velocity on Surface---------------------%
arithMean = [arithMean ; mean(x_vel_on)];

geoMean = [geoMean ; geomean(x_vel_on)];

trimMean = [trimMean ; [trimmean(x_vel_on, 5), trimmean(x_vel_on, 10), trimmean(x_vel_on, 20),...
		   ...... trimmean(x_vel_on, 30), trimmean(x_vel_on, 40), trimmean(x_vel_on, 50)]];

percentiles = [percentiles ; [prctile(x_vel_on, 1), prctile(x_vel_on, 5), prctile(x_vel_on, 10),...
			   ...... prctile(x_vel_on, 20), prctile(x_vel_on, 25), prctile(x_vel_on, 30),...
			   ...... prctile(x_vel_on, 90), prctile(x_vel_on, 95), prctile(x_vel_on, 99)]];

moments = [moments ; [moment(x_vel_on, 3), moment(x_vel_on, 4), moment(x_vel_on, 5), moment(x_vel_on, 6)]];

kurto = [kurto; kurtosis(x_vel_on)];

ranges = [ranges ; range(x_vel_on)];

medians = [medians ; median(x_vel_on)];

modes = [modes ; mode(x_vel_on)];

stdDevs = [stdDevs ; std(x_vel_on)];

robustRange = [robustRange x_vel_on(find(x_vel_on > prctile(x_vel_on, 1) && x_vel_on < prctile(x_vel_on,99)))];

interQuartiles = [interQuartiles ; iqr(x_vel_on)];

%--------------Horizontal Accelaration on Surface-----------------%
arithMean = [arithMean ; mean(x_acc_on)];

geoMean = [geoMean ; geomean(x_acc_on)];

trimMean = [trimMean ; [trimmean(x_acc_on, 5), trimmean(x_acc_on, 10), trimmean(x_acc_on, 20),...
		   ...... trimmean(x_acc_on, 30), trimmean(x_acc_on, 40), trimmean(x_acc_on, 50)]];

percentiles = [percentiles ; [prctile(x_acc_on, 1), prctile(x_acc_on, 5), prctile(x_acc_on, 10),...
			   ...... prctile(x_acc_on, 20), prctile(x_acc_on, 25), prctile(x_acc_on, 30),...
			   ...... prctile(x_acc_on, 90), prctile(x_acc_on, 95), prctile(x_acc_on, 99)]];

moments = [moments ; [moment(x_acc_on, 3), moment(x_acc_on, 4), moment(x_acc_on, 5), moment(x_acc_on, 6)]];

kurto = [kurto; kurtosis(x_acc_on)];

ranges = [ranges ; range(x_acc_on)];

medians = [medians ; median(x_acc_on)];

modes = [modes ; mode(x_acc_on)];

stdDevs = [stdDevs ; std(x_acc_on)];

robustRange = [robustRange x_acc_on(find(x_acc_on > prctile(x_acc_on, 1) && x_acc_on < prctile(x_acc_on,99)))];

interQuartiles = [interQuartiles ; iqr(x_acc_on)];

%------------------Horizontal Jerk on Surface------------------%
arithMean = [arithMean ; mean(x_jerk_on)];

geoMean = [geoMean ; geomean(x_jerk_on)];

trimMean = [trimMean ; [trimmean(x_jerk_on, 5), trimmean(x_jerk_on, 10), trimmean(x_jerk_on, 20),...
		   ...... trimmean(x_jerk_on, 30), trimmean(x_jerk_on, 40), trimmean(x_jerk_on, 50)]];

percentiles = [percentiles ; [prctile(x_jerk_on, 1), prctile(x_jerk_on, 5), prctile(x_jerk_on, 10),...
			   ...... prctile(x_jerk_on, 20), prctile(x_jerk_on, 25), prctile(x_jerk_on, 30),...
			   ...... prctile(x_jerk_on, 90), prctile(x_jerk_on, 95), prctile(x_jerk_on, 99)]];

moments = [moments ; [moment(x_jerk_on, 3), moment(x_jerk_on, 4), moment(x_jerk_on, 5), moment(x_jerk_on, 6)]];

kurto = [kurto; kurtosis(x_jerk_on)];

ranges = [ranges ; range(x_jerk_on)];

medians = [medians ; median(x_jerk_on)];

modes = [modes ; mode(x_jerk_on)];

stdDevs = [stdDevs ; std(x_jerk_on)];

robustRange = [robustRange x_jerk_on(find(x_jerk_on > prctile(x_jerk_on, 1) && x_jerk_on < prctile(x_jerk_on,99)))];

interQuartiles = [interQuartiles ; iqr(x_jerk_on)];

%-----------------------Vertical Velocity on Surface-----------------%
arithMean = [arithMean ; mean(y_vel_on)];

geoMean = [geoMean ; geomean(y_vel_on)];

trimMean = [trimMean ; [trimmean(y_vel_on, 5), trimmean(y_vel_on, 10), trimmean(y_vel_on, 20),...
		   ...... trimmean(y_vel_on, 30), trimmean(y_vel_on, 40), trimmean(y_vel_on, 50)]];

percentiles = [percentiles ; [prctile(y_vel_on, 1), prctile(y_vel_on, 5), prctile(y_vel_on, 10),...
			   ...... prctile(y_vel_on, 20), prctile(y_vel_on, 25), prctile(y_vel_on, 30),...
			   ...... prctile(y_vel_on, 90), prctile(y_vel_on, 95), prctile(y_vel_on, 99)]];

moments = [moments ; [moment(y_vel_on, 3), moment(y_vel_on, 4), moment(y_vel_on, 5), moment(y_vel_on, 6)]];

kurto = [kurto; kurtosis(y_vel_on)];

ranges = [ranges ; range(y_vel_on)];

medians = [medians ; median(y_vel_on)];

modes = [modes ; mode(y_vel_on)];

stdDevs = [stdDevs ; std(y_vel_on)];

robustRange = [robustRange y_vel_on(find(y_vel_on > prctile(y_vel_on, 1) && y_vel_on < prctile(y_vel_on,99)))];

interQuartiles = [interQuartiles ; iqr(y_vel_on)];

%--------------------Vertical Accelaration on Surface----------------%
arithMean = [arithMean ; mean(y_acc_on)];

geoMean = [geoMean ; geomean(y_acc_on)];

trimMean = [trimMean ; [trimmean(y_acc_on, 5), trimmean(y_acc_on, 10), trimmean(y_acc_on, 20),...
		   ...... trimmean(y_acc_on, 30), trimmean(y_acc_on, 40), trimmean(y_acc_on, 50)]];

percentiles = [percentiles ; [prctile(y_acc_on, 1), prctile(y_acc_on, 5), prctile(y_acc_on, 10),...
			   ...... prctile(y_acc_on, 20), prctile(y_acc_on, 25), prctile(y_acc_on, 30),...
			   ...... prctile(y_acc_on, 90), prctile(y_acc_on, 95), prctile(y_acc_on, 99)]];

moments = [moments ; [moment(y_acc_on, 3), moment(y_acc_on, 4), moment(y_acc_on, 5), moment(y_acc_on, 6)]];

kurto = [kurto; kurtosis(y_acc_on)];

ranges = [ranges ; range(y_acc_on)];

medians = [medians ; median(y_acc_on)];

modes = [modes ; mode(y_acc_on)];

stdDevs = [stdDevs ; std(y_acc_on)];

robustRange = [robustRange y_acc_on(find(y_acc_on > prctile(y_acc_on, 1) && y_acc_on < prctile(y_acc_on,99)))];

interQuartiles = [interQuartiles ; iqr(y_acc_on)];

%-------------------------Vertical Jerk on Surface----------------------%
arithMean = [arithMean ; mean(y_jerk_on)];

geoMean = [geoMean ; geomean(y_jerk_on)];

trimMean = [trimMean ; [trimmean(y_jerk_on, 5), trimmean(y_jerk_on, 10), trimmean(y_jerk_on, 20),...
		   ...... trimmean(y_jerk_on, 30), trimmean(y_jerk_on, 40), trimmean(y_jerk_on, 50)]];

percentiles = [percentiles ; [prctile(y_jerk_on, 1), prctile(y_jerk_on, 5), prctile(y_jerk_on, 10),...
			   ...... prctile(y_jerk_on, 20), prctile(y_jerk_on, 25), prctile(y_jerk_on, 30),...
			   ...... prctile(y_jerk_on, 90), prctile(y_jerk_on, 95), prctile(y_jerk_on, 99)]];

moments = [moments ; [moment(y_jerk_on, 3), moment(y_jerk_on, 4), moment(y_jerk_on, 5), moment(y_jerk_on, 6)]];

kurto = [kurto; kurtosis(y_jerk_on)];

ranges = [ranges ; range(y_jerk_on)];

medians = [medians ; median(y_jerk_on)];

modes = [modes ; mode(y_jerk_on)];

stdDevs = [stdDevs ; std(y_jerk_on)];

robustRange = [robustRange y_jerk_on(find(y_jerk_on > prctile(y_jerk_on, 1) && y_jerk_on < prctile(y_jerk_on,99)))];

interQuartiles = [interQuartiles ; iqr(y_jerk_on)];

%------------------------------Horizontal Velocity in Air-------------%
arithMean = [arithMean ; mean(x_vel_off)];

geoMean = [geoMean ; geomean(x_vel_off)];

trimMean = [trimMean ; [trimmean(x_vel_off, 5), trimmean(x_vel_off, 10), trimmean(x_vel_off, 20),...
		   ...... trimmean(x_vel_off, 30), trimmean(x_vel_off, 40), trimmean(x_vel_off, 50)]];

percentiles = [percentiles ; [prctile(x_vel_off, 1), prctile(x_vel_off, 5), prctile(x_vel_off, 10),...
			   ...... prctile(x_vel_off, 20), prctile(x_vel_off, 25), prctile(x_vel_off, 30),...
			   ...... prctile(x_vel_off, 90), prctile(x_vel_off, 95), prctile(x_vel_off, 99)]];

moments = [moments ; [moment(x_vel_off, 3), moment(x_vel_off, 4), moment(x_vel_off, 5), moment(x_vel_off, 6)]];

kurto = [kurto; kurtosis(x_vel_off)];

ranges = [ranges ; range(x_vel_off)];

medians = [medians ; median(x_vel_off)];
modes = [modes ; mode(x_vel_off)];

stdDevs = [stdDevs ; std(x_vel_off)];

robustRange = [robustRange x_vel_off(find(x_vel_off > prctile(x_vel_off, 1) && x_vel_off < prctile(x_vel_off,99)))];

interQuartiles = [interQuartiles ; iqr(x_vel_off)];

%-------------------------Horizontal Accelaration in Air-------------%
arithMean = [arithMean ; mean(x_acc_off)];

geoMean = [geoMean ; geomean(x_acc_off)];

trimMean = [trimMean ; [trimmean(x_acc_off, 5), trimmean(x_acc_off, 10), trimmean(x_acc_off, 20),...
		   ...... trimmean(x_acc_off, 30), trimmean(x_acc_off, 40), trimmean(x_acc_off, 50)]];

percentiles = [percentiles ; [prctile(x_acc_off, 1), prctile(x_acc_off, 5), prctile(x_acc_off, 10),...
			   ...... prctile(x_acc_off, 20), prctile(x_acc_off, 25), prctile(x_acc_off, 30),...
			   ...... prctile(x_acc_off, 90), prctile(x_acc_off, 95), prctile(x_acc_off, 99)]];

moments = [moments ; [moment(x_acc_off, 3), moment(x_acc_off, 4), moment(x_acc_off, 5), moment(x_acc_off, 6)]];

kurto = [kurto; kurtosis(x_acc_off)];

ranges = [ranges ; range(x_acc_off)];

medians = [medians ; median(x_acc_off)];
modes = [modes ; mode(x_acc_off)];

stdDevs = [stdDevs ; std(x_acc_off)];

robustRange = [robustRange x_acc_off(find(x_acc_off > prctile(x_acc_off, 1) && x_acc_off < prctile(x_acc_off,99)))];

interQuartiles = [interQuartiles ; iqr(x_acc_off)];

%----------------------------Horizontal Jerk in Air-------------------%
arithMean = [arithMean ; mean(x_jerk_off)];

geoMean = [geoMean ; geomean(x_jerk_off)];

trimMean = [trimMean ; [trimmean(x_jerk_off, 5), trimmean(x_jerk_off, 10), trimmean(x_jerk_off, 20),...
		   ...... trimmean(x_jerk_off, 30), trimmean(x_jerk_off, 40), trimmean(x_jerk_off, 50)]];

percentiles = [percentiles ; [prctile(x_jerk_off, 1), prctile(x_jerk_off, 5), prctile(x_jerk_off, 10),...
			   ...... prctile(x_jerk_off, 20), prctile(x_jerk_off, 25), prctile(x_jerk_off, 30),...
			   ...... prctile(x_jerk_off, 90), prctile(x_jerk_off, 95), prctile(x_jerk_off, 99)]];

moments = [moments ; [moment(x_jerk_off, 3), moment(x_jerk_off, 4), moment(x_jerk_off, 5), moment(x_jerk_off, 6)]];

kurto = [kurto; kurtosis(x_jerk_off)];

ranges = [ranges ; range(x_jerk_off)];

medians = [medians ; median(x_jerk_off)];
modes = [modes ; mode(x_jerk_off)];

stdDevs = [stdDevs ; std(x_jerk_off)];

robustRange = [robustRange x_jerk_off(find(x_jerk_off > prctile(x_jerk_off, 1) && x_jerk_off < prctile(x_jerk_off,99)))];

interQuartiles = [interQuartiles ; iqr(x_jerk_off)];

%-------------------------Vertical Velocity in Air-----------------------%
arithMean = [arithMean ; mean(y_vel_off)];

geoMean = [geoMean ; geomean(y_vel_off)];

trimMean = [trimMean ; [trimmean(y_vel_off, 5), trimmean(y_vel_off, 10), trimmean(y_vel_off, 20),...
		   ...... trimmean(y_vel_off, 30), trimmean(y_vel_off, 40), trimmean(y_vel_off, 50)]];

percentiles = [percentiles ; [prctile(y_vel_off, 1), prctile(y_vel_off, 5), prctile(y_vel_off, 10),...
			   ...... prctile(y_vel_off, 20), prctile(y_vel_off, 25), prctile(y_vel_off, 30),...
			   ...... prctile(y_vel_off, 90), prctile(y_vel_off, 95), prctile(y_vel_off, 99)]];

moments = [moments ; [moment(y_vel_off, 3), moment(y_vel_off, 4), moment(y_vel_off, 5), moment(y_vel_off, 6)]];

kurto = [kurto; kurtosis(y_vel_off)];

ranges = [ranges ; range(y_vel_off)];

medians = [medians ; median(y_vel_off)];
modes = [modes ; mode(y_vel_off)];

stdDevs = [stdDevs ; std(y_vel_off)];

robustRange = [robustRange y_vel_off(find(y_vel_off > prctile(y_vel_off, 1) && y_vel_off < prctile(y_vel_off,99)))];

interQuartiles = [interQuartiles ; iqr(y_vel_off)];

%---------------------------Vertical Accelaration in Air-------------------%
arithMean = [arithMean ; mean(y_acc_off)];

geoMean = [geoMean ; geomean(y_acc_off)];

trimMean = [trimMean ; [trimmean(y_acc_off, 5), trimmean(y_acc_off, 10), trimmean(y_acc_off, 20),...
		   ...... trimmean(y_acc_off, 30), trimmean(y_acc_off, 40), trimmean(y_acc_off, 50)]];

percentiles = [percentiles ; [prctile(y_acc_off, 1), prctile(y_acc_off, 5), prctile(y_acc_off, 10),...
			   ...... prctile(y_acc_off, 20), prctile(y_acc_off, 25), prctile(y_acc_off, 30),...
			   ...... prctile(y_acc_off, 90), prctile(y_acc_off, 95), prctile(y_acc_off, 99)]];

moments = [moments ; [moment(y_acc_off, 3), moment(y_acc_off, 4), moment(y_acc_off, 5), moment(y_acc_off, 6)]];

kurto = [kurto; kurtosis(y_acc_off)];

ranges = [ranges ; range(y_acc_off)];

medians = [medians ; median(y_acc_off)];
modes = [modes ; mode(y_acc_off)];

stdDevs = [stdDevs ; std(y_acc_off)];

robustRange = [robustRange y_acc_off(find(y_acc_off > prctile(y_acc_off, 1) && y_acc_off < prctile(y_acc_off,99)))];

interQuartiles = [interQuartiles ; iqr(y_acc_off)];

%--------------------------Vertical Jerk in Air------------------------%
arithMean = [arithMean ; mean(y_jerk_off)];

geoMean = [geoMean ; geomean(y_jerk_off)];

trimMean = [trimMean ; [trimmean(y_jerk_off, 5), trimmean(y_jerk_off, 10), trimmean(y_jerk_off, 20),...
		   ...... trimmean(y_jerk_off, 30), trimmean(y_jerk_off, 40), trimmean(y_jerk_off, 50)]];

percentiles = [percentiles ; [prctile(y_jerk_off, 1), prctile(y_jerk_off, 5), prctile(y_jerk_off, 10),...
			   ...... prctile(y_jerk_off, 20), prctile(y_jerk_off, 25), prctile(y_jerk_off, 30),...
			   ...... prctile(y_jerk_off, 90), prctile(y_jerk_off, 95), prctile(y_jerk_off, 99)]];

moments = [moments ; [moment(y_jerk_off, 3), moment(y_jerk_off, 4), moment(y_jerk_off, 5), moment(y_jerk_off, 6)]];

kurto = [kurto; kurtosis(y_jerk_off)];

ranges = [ranges ; range(y_jerk_off)];

medians = [medians ; median(y_jerk_off)];
modes = [modes ; mode(y_jerk_off)];

stdDevs = [stdDevs ; std(y_jerk_off)];

robustRange = [robustRange y_jerk_off(find(y_jerk_off > prctile(y_jerk_off, 1) && y_jerk_off < prctile(y_jerk_off,99)))];

interQuartiles = [interQuartiles ; iqr(y_jerk_off)];

%--------------------------------NCV on surface------------------------%
arithMean = [arithMean ; mean(NCV_on)];

geoMean = [geoMean ; geomean(NCV_on)];

trimMean = [trimMean ; [trimmean(NCV_on, 5), trimmean(NCV_on, 10), trimmean(NCV_on, 20),...
		   ...... trimmean(NCV_on, 30), trimmean(NCV_on, 40), trimmean(NCV_on, 50)]];

percentiles = [percentiles ; [prctile(NCV_on, 1), prctile(NCV_on, 5), prctile(NCV_on, 10),...
			   ...... prctile(NCV_on, 20), prctile(NCV_on, 25), prctile(NCV_on, 30),...
			   ...... prctile(NCV_on, 90), prctile(NCV_on, 95), prctile(NCV_on, 99)]];

moments = [moments ; [moment(NCV_on, 3), moment(NCV_on, 4), moment(NCV_on, 5), moment(NCV_on, 6)]];

kurto = [kurto; kurtosis(NCV_on)];

ranges = [ranges ; range(NCV_on)];

medians = [medians ; median(NCV_on)];
modes = [modes ; mode(NCV_on)];

stdDevs = [stdDevs ; std(NCV_on)];

robustRange = [robustRange NCV_on(find(NCV_on > prctile(NCV_on, 1) && NCV_on < prctile(NCV_on,99)))];

interQuartiles = [interQuartiles ; iqr(NCV_on)];

%------------------------------NCV in air-------------------------------%
arithMean = [arithMean ; mean(NCV_off)];

geoMean = [geoMean ; geomean(NCV_off)];

trimMean = [trimMean ; [trimmean(NCV_off, 5), trimmean(NCV_off, 10), trimmean(NCV_off, 20),...
		   ...... trimmean(NCV_off, 30), trimmean(NCV_off, 40), trimmean(NCV_off, 50)]];

percentiles = [percentiles ; [prctile(NCV_off, 1), prctile(NCV_off, 5), prctile(NCV_off, 10),...
			   ...... prctile(NCV_off, 20), prctile(NCV_off, 25), prctile(NCV_off, 30),...
			   ...... prctile(NCV_off, 90), prctile(NCV_off, 95), prctile(NCV_off, 99)]];

moments = [moments ; [moment(NCV_off, 3), moment(NCV_off, 4), moment(NCV_off, 5), moment(NCV_off, 6)]];

kurto = [kurto; kurtosis(NCV_off)];

ranges = [ranges ; range(NCV_off)];

medians = [medians ; median(NCV_off)];
modes = [modes ; mode(NCV_off)];

stdDevs = [stdDevs ; std(NCV_off)];

robustRange = [robustRange NCV_off(find(NCV_off > prctile(NCV_off, 1) && NCV_off < prctile(NCV_off,99)))];

interQuartiles = [interQuartiles ; iqr(NCV_off)];

%---------------------------Relative NCV on surface--------------------%
arithMean = [arithMean ; mean(rel_NCV_on)];

geoMean = [geoMean ; geomean(rel_NCV_on)];

trimMean = [trimMean ; [trimmean(rel_NCV_on, 5), trimmean(rel_NCV_on, 10), trimmean(rel_NCV_on, 20),...
		   ...... trimmean(rel_NCV_on, 30), trimmean(rel_NCV_on, 40), trimmean(rel_NCV_on, 50)]];

percentiles = [percentiles ; [prctile(rel_NCV_on, 1), prctile(rel_NCV_on, 5), prctile(rel_NCV_on, 10),...
			   ...... prctile(rel_NCV_on, 20), prctile(rel_NCV_on, 25), prctile(rel_NCV_on, 30),...
			   ...... prctile(rel_NCV_on, 90), prctile(rel_NCV_on, 95), prctile(rel_NCV_on, 99)]];

moments = [moments ; [moment(rel_NCV_on, 3), moment(rel_NCV_on, 4), moment(rel_NCV_on, 5), moment(rel_NCV_on, 6)]];

kurto = [kurto; kurtosis(rel_NCV_on)];

ranges = [ranges ; range(rel_NCV_on)];

medians = [medians ; median(rel_NCV_on)];
modes = [modes ; mode(rel_NCV_on)];

stdDevs = [stdDevs ; std(rel_NCV_on)];

robustRange = [robustRange rel_NCV_on(find(rel_NCV_on > prctile(rel_NCV_on, 1) && rel_NCV_on < prctile(rel_NCV_on,99)))];

interQuartiles = [interQuartiles ; iqr(rel_NCV_on)];

%------------------------Relative NCV in air-------------------------%
arithMean = [arithMean ; mean(rel_NCV_off)];

geoMean = [geoMean ; geomean(rel_NCV_off)];

trimMean = [trimMean ; [trimmean(rel_NCV_off, 5), trimmean(rel_NCV_off, 10), trimmean(rel_NCV_off, 20),...
		   ...... trimmean(rel_NCV_off, 30), trimmean(rel_NCV_off, 40), trimmean(rel_NCV_off, 50)]];

percentiles = [percentiles ; [prctile(rel_NCV_off, 1), prctile(rel_NCV_off, 5), prctile(rel_NCV_off, 10),...
			   ...... prctile(rel_NCV_off, 20), prctile(rel_NCV_off, 25), prctile(rel_NCV_off, 30),...
			   ...... prctile(rel_NCV_off, 90), prctile(rel_NCV_off, 95), prctile(rel_NCV_off, 99)]];

moments = [moments ; [moment(rel_NCV_off, 3), moment(rel_NCV_off, 4), moment(rel_NCV_off, 5), moment(rel_NCV_off, 6)]];

kurto = [kurto; kurtosis(rel_NCV_off)];

ranges = [ranges ; range(rel_NCV_off)];

medians = [medians ; median(rel_NCV_off)];
modes = [modes ; mode(rel_NCV_off)];

stdDevs = [stdDevs ; std(rel_NCV_off)];

robustRange = [robustRange rel_NCV_off(find(rel_NCV_off > prctile(rel_NCV_off, 1) && rel_NCV_off < prctile(rel_NCV_off,99)))];

interQuartiles = [interQuartiles ; iqr(rel_NCV_off)];

%----------------------------NCA on Surface-------------------------%
arithMean = [arithMean ; mean(NCA_on)];

geoMean = [geoMean ; geomean(NCA_on)];

trimMean = [trimMean ; [trimmean(NCA_on, 5), trimmean(NCA_on, 10), trimmean(NCA_on, 20),...
		   ...... trimmean(NCA_on, 30), trimmean(NCA_on, 40), trimmean(NCA_on, 50)]];

percentiles = [percentiles ; [prctile(NCA_on, 1), prctile(NCA_on, 5), prctile(NCA_on, 10),...
			   ...... prctile(NCA_on, 20), prctile(NCA_on, 25), prctile(NCA_on, 30),...
			   ...... prctile(NCA_on, 90), prctile(NCA_on, 95), prctile(NCA_on, 99)]];

moments = [moments ; [moment(NCA_on, 3), moment(NCA_on, 4), moment(NCA_on, 5), moment(NCA_on, 6)]];

kurto = [kurto; kurtosis(NCA_on)];

ranges = [ranges ; range(NCA_on)];

medians = [medians ; median(NCA_on)];
modes = [modes ; mode(NCA_on)];

stdDevs = [stdDevs ; std(NCA_on)];

robustRange = [robustRange NCA_on(find(NCA_on > prctile(NCA_on, 1) && NCA_on < prctile(NCA_on,99)))];

interQuartiles = [interQuartiles ; iqr(NCA_on)];

%----------------------------NCA in Air---------------------------------%
arithMean = [arithMean ; mean(NCA_off)];

geoMean = [geoMean ; geomean(NCA_off)];

trimMean = [trimMean ; [trimmean(NCA_off, 5), trimmean(NCA_off, 10), trimmean(NCA_off, 20),...
		   ...... trimmean(NCA_off, 30), trimmean(NCA_off, 40), trimmean(NCA_off, 50)]];

percentiles = [percentiles ; [prctile(NCA_off, 1), prctile(NCA_off, 5), prctile(NCA_off, 10),...
			   ...... prctile(NCA_off, 20), prctile(NCA_off, 25), prctile(NCA_off, 30),...
			   ...... prctile(NCA_off, 90), prctile(NCA_off, 95), prctile(NCA_off, 99)]];

moments = [moments ; [moment(NCA_off, 3), moment(NCA_off, 4), moment(NCA_off, 5), moment(NCA_off, 6)]];

kurto = [kurto; kurtosis(NCA_off)];

ranges = [ranges ; range(NCA_off)];

medians = [medians ; median(NCA_off)];
modes = [modes ; mode(NCA_off)];

stdDevs = [stdDevs ; std(NCA_off)];

robustRange = [robustRange NCA_off(find(NCA_off > prctile(NCA_off, 1) && NCA_off < prctile(NCA_off,99)))];

interQuartiles = [interQuartiles ; iqr(NCA_off)];

%------------------------Relative NCA on Surface-----------------------------%
arithMean = [arithMean ; mean(rel_NCA_on)];

geoMean = [geoMean ; geomean(rel_NCA_on)];

trimMean = [trimMean ; [trimmean(rel_NCA_on, 5), trimmean(rel_NCA_on, 10), trimmean(rel_NCA_on, 20),...
		   ...... trimmean(rel_NCA_on, 30), trimmean(rel_NCA_on, 40), trimmean(rel_NCA_on, 50)]];

percentiles = [percentiles ; [prctile(rel_NCA_on, 1), prctile(rel_NCA_on, 5), prctile(rel_NCA_on, 10),...
			   ...... prctile(rel_NCA_on, 20), prctile(rel_NCA_on, 25), prctile(rel_NCA_on, 30),...
			   ...... prctile(rel_NCA_on, 90), prctile(rel_NCA_on, 95), prctile(rel_NCA_on, 99)]];

moments = [moments ; [moment(rel_NCA_on, 3), moment(rel_NCA_on, 4), moment(rel_NCA_on, 5), moment(rel_NCA_on, 6)]];

kurto = [kurto; kurtosis(rel_NCA_on)];

ranges = [ranges ; range(rel_NCA_on)];

medians = [medians ; median(rel_NCA_on)];
modes = [modes ; mode(rel_NCA_on)];

stdDevs = [stdDevs ; std(rel_NCA_on)];

robustRange = [robustRange rel_NCA_on(find(rel_NCA_on > prctile(rel_NCA_on, 1) && rel_NCA_on < prctile(rel_NCA_on,99)))];

interQuartiles = [interQuartiles ; iqr(rel_NCA_on)];

%----------------------------Relative NCA in Air--------------------------------%
arithMean = [arithMean ; mean(rel_NCA_off)];

geoMean = [geoMean ; geomean(rel_NCA_off)];

trimMean = [trimMean ; [trimmean(rel_NCA_off, 5), trimmean(rel_NCA_off, 10), trimmean(rel_NCA_off, 20),...
		   ...... trimmean(rel_NCA_off, 30), trimmean(rel_NCA_off, 40), trimmean(rel_NCA_off, 50)]];

percentiles = [percentiles ; [prctile(rel_NCA_off, 1), prctile(rel_NCA_off, 5), prctile(rel_NCA_off, 10),...
			   ...... prctile(rel_NCA_off, 20), prctile(rel_NCA_off, 25), prctile(rel_NCA_off, 30),...
			   ...... prctile(rel_NCA_off, 90), prctile(rel_NCA_off, 95), prctile(rel_NCA_off, 99)]];

moments = [moments ; [moment(rel_NCA_off, 3), moment(rel_NCA_off, 4), moment(rel_NCA_off, 5), moment(rel_NCA_off, 6)]];

kurto = [kurto; kurtosis(rel_NCA_off)];

ranges = [ranges ; range(rel_NCA_off)];

medians = [medians ; median(rel_NCA_off)];
modes = [modes ; mode(rel_NCA_off)];

stdDevs = [stdDevs ; std(rel_NCA_off)];

robustRange = [robustRange rel_NCA_off(find(rel_NCA_off > prctile(rel_NCA_off, 1) && rel_NCA_off < prctile(rel_NCA_off,99)))];

interQuartiles = [interQuartiles ; iqr(rel_NCA_off)];





