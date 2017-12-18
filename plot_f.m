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

disp(off_onTime);






