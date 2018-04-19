## Copyright (C) 2018 DELL
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} mann_whitney (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: DELL <DELL@DESKTOP-IS9CPO0>
## Created: 2018-01-12




%------------------- Making a variable matrix-------------------------%

x_vel_on_pd=[];
x_vel_on_hc=[];
y_vel_on_pd=[];
y_vel_on_hc=[];
time_interval_off_pd=[];
time_interval_off_hc=[];
speed_pd=[];
speed_hc=[];
NCV_on_pd=[];
NCV_on_hc=[];
NCA_on_pd=[];
NCA_on_hc=[];
rel_NCV_on_pd=[];
rel_NCV_on_hc=[];
rel_NCA_on_pd=[];
rel_NCA_on_hc=[];
norm_onTime_pd=[];
norm_onTime_hc=[];
NCP_pd=[];
NCP_hc=[];
rel_NCP_pd=[];
rel_NCP_hc=[];
NCV_off_pd=[];
NCV_off_hc=[];
NCA_off_pd=[];
NCA_off_hc=[];
rel_NCV_off_pd=[];
rel_NCV_off_hc=[];
rel_NCA_off_pd=[];
rel_NCA_off_hc=[];
norm_offTime_pd=[];
norm_offTime_hc=[];
off_onTime_pd=[];
off_onTime_hc=[];

arithMean_strokespeed_pd=[];
arithMean_strokespeed_hc=[];

geoMean_strokespeed_pd=[];
geoMean_strokespeed_hc=[];
trimMean_strokespeed_pd=[];
trimMean_strokespeed_hc=[];
percentiles_strokespeed_pd=[];
percentiles_strokespeed_hc=[];
moments_strokespeed_pd=[];
moments_strokespeed_hc=[];
kurto_strokespeed_pd=[];
kurto_strokespeed_hc=[];
ranges_strokespeed_pd=[];
ranges_strokespeed_hc=[];
medians_strokespeed_pd=[];
medians_strokespeed_hc=[];
modes_strokespeed_pd=[];
modes_strokespeed_hc=[];
stdDevs_strokespeed_pd=[];
stdDevs_strokespeed_hc=[];
robustRange_strokespeed_pd=[];
robustRange_strokespeed_hc=[];
interQuartiles_strokespeed_pd=[];
interQuartiles_strokespeed_hc=[];

arithMean_vel_on_pd=[];
arithMean_vel_on_hc=[];
geoMean_vel_on_pd=[];
geoMean_vel_on_hc=[];
trimMean_vel_on_pd=[];
trimMean_vel_on_hc=[];
percentiles_vel_on_pd=[];
percentiles_vel_on_hc=[];
moments_vel_on_pd=[];
moments_vel_on_hc=[];
kurto_vel_on_pd=[];
kurto_vel_on_hc=[];
ranges_vel_on_pd=[];
ranges_vel_on_hc=[];
medians_vel_on_pd=[];
medians_vel_on_hc=[];
modes_vel_on_pd=[];
modes_vel_on_hc=[];
stdDevs_vel_on_pd=[];
stdDevs_vel_on_hc=[];
robustRange_vel_on_pd=[];
robustRange_vel_on_hc=[];
interQuartiles_vel_on_pd=[];
interQuartiles_vel_on_hc=[];

arithMean_vel_off_pd=[];
arithMean_vel_off_hc=[];
geoMean_vel_off_pd=[];
geoMean_vel_off_hc=[];
trimMean_vel_off_pd=[];
trimMean_vel_off_hc=[];
percentiles_vel_off_pd=[];
percentiles_vel_off_hc=[];
moments_vel_off_pd=[];
moments_vel_off_hc=[];
kurto_vel_off_pd=[];
kurto_vel_off_hc=[];
ranges_vel_off_pd=[];
ranges_vel_off_hc=[];
medians_vel_off_pd=[];
medians_vel_off_hc=[];
modes_vel_off_pd=[];
modes_vel_off_hc=[];
stdDevs_vel_off_pd=[];
stdDevs_vel_off_hc=[];
robustRange_vel_off_pd=[];
robustRange_vel_off_hc=[];
interQuartiles_vel_off_pd=[];
interQuartiles_vel_off_hc=[];


arithMean_acc_on_pd=[];
arithMean_acc_on_hc=[];
geoMean_acc_on_pd=[];
geoMean_acc_on_hc=[];
trimMean_acc_on_pd=[];
trimMean_acc_on_hc=[];
percentiles_acc_on_pd=[];
percentiles_acc_on_hc=[];
moments_acc_on_pd=[];
moments_acc_on_hc=[];
kurto_acc_on_pd=[];
kurto_acc_on_hc=[];
ranges_acc_on_pd=[];
ranges_acc_on_hc=[];
medians_acc_on_pd=[];
medians_acc_on_hc=[];
modes_acc_on_pd=[];
modes_acc_on_hc=[];
stdDevs_acc_on_pd=[];
stdDevs_acc_on_hc=[];
robustRange_acc_on_pd=[];
robustRange_acc_on_hc=[];
interQuartiles_acc_on_pd=[];
interQuartiles_acc_on_hc=[];


arithMean_acc_off_pd=[];
arithMean_acc_off_hc=[];
geoMean_acc_off_pd=[];
geoMean_acc_off_hc=[];
trimMean_acc_off_pd=[];
trimMean_acc_off_hc=[];
percentiles_acc_off_pd=[];
percentiles_acc_off_hc=[];
moments_acc_off_pd=[];
moments_acc_off_hc=[];
kurto_acc_off_pd=[];
kurto_acc_off_hc=[];
ranges_acc_off_pd=[];
ranges_acc_off_hc=[];
medians_acc_off_pd=[];
medians_acc_off_hc=[];
modes_acc_off_pd=[];
modes_acc_off_hc=[];
stdDevs_acc_off_pd=[];
stdDevs_acc_off_hc=[];
robustRange_acc_off_pd=[];
robustRange_acc_off_hc=[];
interQuartiles_acc_off_pd=[];
interQuartiles_acc_off_hc=[];


arithMean_jerk_on_pd=[];
arithMean_jerk_on_hc=[];
geoMean_jerk_on_pd=[];
geoMean_jerk_on_hc=[];
trimMean_jerk_on_pd=[];
trimMean_jerk_on_hc=[];
percentiles_jerk_on_pd=[];
percentiles_jerk_on_hc=[];
moments_jerk_on_pd=[];
moments_jerk_on_hc=[];
kurto_jerk_on_pd=[];
kurto_jerk_on_hc=[];
ranges_jerk_on_pd=[];
ranges_jerk_on_hc=[];
medians_jerk_on_pd=[];
medians_jerk_on_hc=[];
modes_jerk_on_pd=[];
modes_jerk_on_hc=[];
stdDevs_jerk_on_pd=[];
stdDevs_jerk_on_hc=[];
robustRange_jerk_on_pd=[];
robustRange_jerk_on_hc=[];
interQuartiles_jerk_on_pd=[];
interQuartiles_jerk_on_hc=[];

arithMean_jerk_off_pd=[];
arithMean_jerk_off_hc=[];
geoMean_jerk_off_pd=[];
geoMean_jerk_off_hc=[];
trimMean_jerk_off_pd=[];
trimMean_jerk_off_hc=[];
percentiles_jerk_off_pd=[];
percentiles_jerk_off_hc=[];
moments_jerk_off_pd=[];
moments_jerk_off_hc=[];
kurto_jerk_off_pd=[];
kurto_jerk_off_hc=[];
ranges_jerk_off_pd=[];
ranges_jerk_off_hc=[];
medians_jerk_off_pd=[];
medians_jerk_off_hc=[];
modes_jerk_off_pd=[];
modes_jerk_off_hc=[];
stdDevs_jerk_off_pd=[];
stdDevs_jerk_off_hc=[];
robustRange_jerk_off_pd=[];
robustRange_jerk_off_hc=[];
interQuartiles_jerk_off_pd=[];
interQuartiles_jerk_off_hc=[];


arithMean_x_vel_on_pd=[];
arithMean_x_vel_on_hc=[];
geoMean_x_vel_on_pd=[];
geoMean_x_vel_on_hc=[];
trimMean_x_vel_on_pd=[];
trimMean_x_vel_on_hc=[];
percentiles_x_vel_on_pd=[];
percentiles_x_vel_on_hc=[];
moments_x_vel_on_pd=[];
moments_x_vel_on_hc=[];
kurto_x_vel_on_pd=[];
kurto_x_vel_on_hc=[];
ranges_x_vel_on_pd=[];
ranges_x_vel_on_hc=[];
medians_x_vel_on_pd=[];
medians_x_vel_on_hc=[];
modes_x_vel_on_pd=[];
modes_x_vel_on_hc=[];
stdDevs_x_vel_on_pd=[];
stdDevs_x_vel_on_hc=[];
robustRange_x_vel_on_pd=[];
robustRange_x_vel_on_hc=[];
interQuartiles_x_vel_on_pd=[];
interQuartiles_x_vel_on_hc=[];


arithMean_x_acc_on_pd=[];
arithMean_x_acc_on_hc=[];
geoMean_x_acc_on_pd=[];
geoMean_x_acc_on_hc=[];
trimMean_x_acc_on_pd=[];
trimMean_x_acc_on_hc=[];
percentiles_x_acc_on_pd=[];
percentiles_x_acc_on_hc=[];
moments_x_acc_on_pd=[];
moments_x_acc_on_hc=[];
kurto_x_acc_on_pd=[];
kurto_x_acc_on_hc=[];
ranges_x_acc_on_pd=[];
ranges_x_acc_on_hc=[];
medians_x_acc_on_pd=[];
medians_x_acc_on_hc=[];
modes_x_acc_on_pd=[];
modes_x_acc_on_hc=[];
stdDevs_x_acc_on_pd=[];
stdDevs_x_acc_on_hc=[];
robustRange_x_acc_on_pd=[];
robustRange_x_acc_on_hc=[];
interQuartiles_x_acc_on_pd=[];
interQuartiles_x_acc_on_hc=[];

arithMean_x_jerk_on_pd=[];
arithMean_x_jerk_on_hc=[];
geoMean_x_jerk_on_pd=[];
geoMean_x_jerk_on_hc=[];
trimMean_x_jerk_on_pd=[];
trimMean_x_jerk_on_hc=[];
percentiles_x_jerk_on_pd=[];
percentiles_x_jerk_on_hc=[];
moments_x_jerk_on_pd=[];
moments_x_jerk_on_hc=[];
kurto_x_jerk_on_pd=[];
kurto_x_jerk_on_hc=[];
ranges_x_jerk_on_pd=[];
ranges_x_jerk_on_hc=[];
medians_x_jerk_on_pd=[];
medians_x_jerk_on_hc=[];
modes_x_jerk_on_pd=[];
modes_x_jerk_on_hc=[];
stdDevs_x_jerk_on_pd=[];
stdDevs_x_jerk_on_hc=[];
robustRange_x_jerk_on_pd=[];
robustRange_x_jerk_on_hc=[];
interQuartiles_x_jerk_on_pd=[];
interQuartiles_x_jerk_on_hc=[];

arithMean_y_vel_on_pd=[];
arithMean_y_vel_on_hc=[];
geoMean_y_vel_on_pd=[];
geoMean_y_vel_on_hc=[];
trimMean_y_vel_on_pd=[];
trimMean_y_vel_on_hc=[];
percentiles_y_vel_on_pd=[];
percentiles_y_vel_on_hc=[];
moments_y_vel_on_pd=[];
moments_y_vel_on_hc=[];
kurto_y_vel_on_pd=[];
kurto_y_vel_on_hc=[];
ranges_y_vel_on_pd=[];
ranges_y_vel_on_hc=[];
medians_y_vel_on_pd=[];
medians_y_vel_on_hc=[];
modes_y_vel_on_pd=[];
modes_y_vel_on_hc=[];
stdDevs_y_vel_on_pd=[];
stdDevs_y_vel_on_hc=[];
robustRange_y_vel_on_pd=[];
robustRange_y_vel_on_hc=[];
interQuartiles_y_vel_on_pd=[];
interQuartiles_y_vel_on_hc=[];


arithMean_y_acc_on_pd=[];
arithMean_y_acc_on_hc=[];
geoMean_y_acc_on_pd=[];
geoMean_y_acc_on_hc=[];
trimMean_y_acc_on_pd=[];
trimMean_y_acc_on_hc=[];
percentiles_y_acc_on_pd=[];
percentiles_y_acc_on_hc=[];
moments_y_acc_on_pd=[];
moments_y_acc_on_hc=[];
kurto_y_acc_on_pd=[];
kurto_y_acc_on_hc=[];
ranges_y_acc_on_pd=[];
ranges_y_acc_on_hc=[];
medians_y_acc_on_pd=[];
medians_y_acc_on_hc=[];
modes_y_acc_on_pd=[];
modes_y_acc_on_hc=[];
stdDevs_y_acc_on_pd=[];
stdDevs_y_acc_on_hc=[];
robustRange_y_acc_on_pd=[];
robustRange_y_acc_on_hc=[];
interQuartiles_y_acc_on_pd=[];
interQuartiles_y_acc_on_hc=[];

arithMean_y_jerk_on_pd=[];
arithMean_y_jerk_on_hc=[];
geoMean_y_jerk_on_pd=[];
geoMean_y_jerk_on_hc=[];
trimMean_y_jerk_on_pd=[];
trimMean_y_jerk_on_hc=[];
percentiles_y_jerk_on_pd=[];
percentiles_y_jerk_on_hc=[];
moments_y_jerk_on_pd=[];
moments_y_jerk_on_hc=[];
kurto_y_jerk_on_pd=[];
kurto_y_jerk_on_hc=[];
ranges_y_jerk_on_pd=[];
ranges_y_jerk_on_hc=[];
medians_y_jerk_on_pd=[];
medians_y_jerk_on_hc=[];
modes_y_jerk_on_pd=[];
modes_y_jerk_on_hc=[];
stdDevs_y_jerk_on_pd=[];
stdDevs_y_jerk_on_hc=[];
robustRange_y_jerk_on_pd=[];
robustRange_y_jerk_on_hc=[];
interQuartiles_y_jerk_on_pd=[];
interQuartiles_y_jerk_on_hc=[];


arithMean_x_vel_off_pd=[];
arithMean_x_vel_off_hc=[];
geoMean_x_vel_off_pd=[];
geoMean_x_vel_off_hc=[];
trimMean_x_vel_off_pd=[];
trimMean_x_vel_off_hc=[];
percentiles_x_vel_off_pd=[];
percentiles_x_vel_off_hc=[];
moments_x_vel_off_pd=[];
moments_x_vel_off_hc=[];
kurto_x_vel_off_pd=[];
kurto_x_vel_off_hc=[];
ranges_x_vel_off_pd=[];
ranges_x_vel_off_hc=[];
medians_x_vel_off_pd=[];
medians_x_vel_off_hc=[];
modes_x_vel_off_pd=[];
modes_x_vel_off_hc=[];
stdDevs_x_vel_off_pd=[];
stdDevs_x_vel_off_hc=[];
robustRange_x_vel_off_pd=[];
robustRange_x_vel_off_hc=[];
interQuartiles_x_vel_off_pd=[];
interQuartiles_x_vel_off_hc=[];


arithMean_x_acc_off_pd=[];
arithMean_x_acc_off_hc=[];
geoMean_x_acc_off_pd=[];
geoMean_x_acc_off_hc=[];
trimMean_x_acc_off_pd=[];
trimMean_x_acc_off_hc=[];
percentiles_x_acc_off_pd=[];
percentiles_x_acc_off_hc=[];
moments_x_acc_off_pd=[];
moments_x_acc_off_hc=[];
kurto_x_acc_off_pd=[];
kurto_x_acc_off_hc=[];
ranges_x_acc_off_pd=[];
ranges_x_acc_off_hc=[];
medians_x_acc_off_pd=[];
medians_x_acc_off_hc=[];
modes_x_acc_off_pd=[];
modes_x_acc_off_hc=[];
stdDevs_x_acc_off_pd=[];
stdDevs_x_acc_off_hc=[];
robustRange_x_acc_off_pd=[];
robustRange_x_acc_off_hc=[];
interQuartiles_x_acc_off_pd=[];
interQuartiles_x_acc_off_hc=[];


arithMean_x_jerk_off_pd=[];
arithMean_x_jerk_off_hc=[];
geoMean_x_jerk_off_pd=[];
geoMean_x_jerk_off_hc=[];
trimMean_x_jerk_off_pd=[];
trimMean_x_jerk_off_hc=[];
percentiles_x_jerk_off_pd=[];
percentiles_x_jerk_off_hc=[];
moments_x_jerk_off_pd=[];
moments_x_jerk_off_hc=[];
kurto_x_jerk_off_pd=[];
kurto_x_jerk_off_hc=[];
ranges_x_jerk_off_pd=[];
ranges_x_jerk_off_hc=[];
medians_x_jerk_off_pd=[];
medians_x_jerk_off_hc=[];
modes_x_jerk_off_pd=[];
modes_x_jerk_off_hc=[];
stdDevs_x_jerk_off_pd=[];
stdDevs_x_jerk_off_hc=[];
robustRange_x_jerk_off_pd=[];
robustRange_x_jerk_off_hc=[];
interQuartiles_x_jerk_off_pd=[];
interQuartiles_x_jerk_off_hc=[];


arithMean_y_vel_off_pd=[];
arithMean_y_vel_off_hc=[];
geoMean_y_vel_off_pd=[];
geoMean_y_vel_off_hc=[];
trimMean_y_vel_off_pd=[];
trimMean_y_vel_off_hc=[];
percentiles_y_vel_off_pd=[];
percentiles_y_vel_off_hc=[];
moments_y_vel_off_pd=[];
moments_y_vel_off_hc=[];
kurto_y_vel_off_pd=[];
kurto_y_vel_off_hc=[];
ranges_y_vel_off_pd=[];
ranges_y_vel_off_hc=[];
medians_y_vel_off_pd=[];
medians_y_vel_off_hc=[];
modes_y_vel_off_pd=[];
modes_y_vel_off_hc=[];
stdDevs_y_vel_off_pd=[];
stdDevs_y_vel_off_hc=[];
robustRange_y_vel_off_pd=[];
robustRange_y_vel_off_hc=[];
interQuartiles_y_vel_off_pd=[];
interQuartiles_y_vel_off_hc=[];

arithMean_y_acc_off_pd=[];
arithMean_y_acc_off_hc=[];
geoMean_y_acc_off_pd=[];
geoMean_y_acc_off_hc=[];
trimMean_y_acc_off_pd=[];
trimMean_y_acc_off_hc=[];
percentiles_y_acc_off_pd=[];
percentiles_y_acc_off_hc=[];
moments_y_acc_off_pd=[];
moments_y_acc_off_hc=[];
kurto_y_acc_off_pd=[];
kurto_y_acc_off_hc=[];
ranges_y_acc_off_pd=[];
ranges_y_acc_off_hc=[];
medians_y_acc_off_pd=[];
medians_y_acc_off_hc=[];
modes_y_acc_off_pd=[];
modes_y_acc_off_hc=[];
stdDevs_y_acc_off_pd=[];
stdDevs_y_acc_off_hc=[];
robustRange_y_acc_off_pd=[];
robustRange_y_acc_off_hc=[];
interQuartiles_y_acc_off_pd=[];
interQuartiles_y_acc_off_hc=[];


arithMean_y_jerk_off_pd=[];
arithMean_y_jerk_off_hc=[];
geoMean_y_jerk_off_pd=[];
geoMean_y_jerk_off_hc=[];
trimMean_y_jerk_off_pd=[];
trimMean_y_jerk_off_hc=[];
percentiles_y_jerk_off_pd=[];
percentiles_y_jerk_off_hc=[];
moments_y_jerk_off_pd=[];
moments_y_jerk_off_hc=[];
kurto_y_jerk_off_pd=[];
kurto_y_jerk_off_hc=[];
ranges_y_jerk_off_pd=[];
ranges_y_jerk_off_hc=[];
medians_y_jerk_off_pd=[];
medians_y_jerk_off_hc=[];
modes_y_jerk_off_pd=[];
modes_y_jerk_off_hc=[];
stdDevs_y_jerk_off_pd=[];
stdDevs_y_jerk_off_hc=[];
robustRange_y_jerk_off_pd=[];
robustRange_y_jerk_off_hc=[];
interQuartiles_y_jerk_off_pd=[];
interQuartiles_y_jerk_off_hc=[];

arithMean_pressure_rate_pd=[];
arithMean_pressure_rate_hc=[];
geoMean_pressure_rate_pd=[];
geoMean_pressure_rate_hc=[];
trimMean_pressure_rate_pd=[];
trimMean_pressure_rate_hc=[];
percentiles_pressure_rate_pd=[];
percentiles_pressure_rate_hc=[];
moments_pressure_rate_pd=[];
moments_pressure_rate_hc=[];
kurto_pressure_rate_pd=[];
kurto_pressure_rate_hc=[];
ranges_pressure_rate_pd=[];
ranges_pressure_rate_hc=[];
medians_pressure_rate_pd=[];
medians_pressure_rate_hc=[];
modes_pressure_rate_pd=[];
modes_pressure_rate_hc=[];
stdDevs_pressure_rate_pd=[];
stdDevs_pressure_rate_hc=[];
robustRange_pressure_rate_pd=[];
robustRange_pressure_rate_hc=[];
interQuartiles_pressure_rate_pd=[];
interQuartiles_pressure_rate_hc=[];

x_shannon_pd=[];
x_shannon_hc=[];
y_shannon_pd=[];
y_shannon_hc=[];
x_renyi2_pd=[];
x_renyi2_hc=[];
y_renyi2_pd=[];
y_renyi2_hc=[];
x_renyi3_pd=[];
x_renyi3_hc=[];
y_renyi3_pd=[];
y_renyi3_hc=[];
snr_ce_x_pd=[];
snr_ce_x_hc=[];
snr_ce_y_pd=[];
snr_ce_y_hc=[];
snr_tke1_x_pd=[];
snr_tke1_x_hc=[];
snr_tke1_y_pd=[];
snr_tke1_y_hc=[];
snr_tke2_x_pd=[];
snr_tke2_x_hc=[];
snr_tke2_y_pd=[];
snr_tke2_y_hc=[];

x_shannon_i1_pd=[];
x_shannon_i1_hc=[];
y_shannon_i1_pd=[];
y_shannon_i1_hc=[];
x_renyi2_i1_pd=[];
x_renyi2_i1_hc=[];
y_renyi2_i1_pd=[];
y_renyi2_i1_hc=[];
x_renyi3_i1_pd=[];
x_renyi3_i1_hc=[];
y_renyi3_i1_pd=[];
y_renyi3_i1_hc=[];
x_shannon_i2_pd=[];
x_shannon_i2_hc=[];
y_shannon_i2_pd=[];
y_shannon_i2_hc=[];
x_renyi2_i2_pd=[];
x_renyi2_i2_hc=[];
y_renyi2_i2_pd=[];
y_renyi2_i2_hc=[];
x_renyi3_i2_pd=[];
x_renyi3_i2_hc=[];
y_renyi3_i2_pd=[];
y_renyi3_i2_hc=[];
snr_ice_x_pd=[];
snr_ice_x_hc=[];
snr_ice_y_pd=[];
snr_ice_y_hc=[];
snr_itke1_x_pd=[];
snr_itke1_x_hc=[];
snr_itke1_y_pd=[];
snr_itke1_y_hc=[];
snr_itke2_x_pd=[];
snr_itke2_x_hc=[];
snr_itke2_y_pd=[];
snr_itke2_y_hc=[];

%---------------------------------defining filename->>dividing to PD and HC-------------------------------%
filename=["00001__1_1.svc";"00002__1_1.svc";"00003__1_1.svc";"00004__1_1.svc";"00005__1_1.svc";"00006__1_1.svc";"00007__1_1.svc";"00008__1_1.svc";"00009__1_1.svc";"00010__1_1.svc";
"00013__1_1.svc";"00014__1_1.svc";"00015__1_1.svc";"00016__1_1.svc";"00017__1_1.svc";"00018__1_1.svc";"00019__1_1.svc";"00020__1_1.svc";"00022__1_1.svc";"00023__1_1.svc";
"00024__1_1.svc";"00025__1_1.svc";"00033__1_1.svc";"00034__1_1.svc";"00036__1_1.svc";"00043__1_1.svc";"00044__1_1.svc";"00048__1_1.svc";"00053__1_1.svc";"00054__1_1.svc";
"00055__1_1.svc";"00074__1_1.svc";"00075__1_1.svc";"00077__1_1.svc";"00078__1_1.svc";"00098__1_1.svc"

"00026__1_1.svc";"00027__1_1.svc";"00028__1_1.svc";"00029__1_1.svc";"00030__1_1.svc";"00031__1_1.svc";"00032__1_1.svc";"00039__1_1.svc";"00040__1_1.svc";
"00041__1_1.svc";"00049__1_1.svc";"00051__1_1.svc";"00052__1_1.svc";"00057__1_1.svc";"00060__1_1.svc";"00062__1_1.svc";"00066__1_1.svc";
"00067__1_1.svc";"00069__1_1.svc";"00070__1_1.svc";"00071__1_1.svc";"00072__1_1.svc";"00073__1_1.svc";"00076__1_1.svc";"00082__1_1.svc";"00083__1_1.svc";
"00084__1_1.svc";"00085__1_1.svc";"00087__1_1.svc";"00090__1_1.svc";"00091__1_1.svc";"00092__1_1.svc";"00094__1_1.svc";
"00095__1_1.svc";"00096__1_1.svc";"00097__1_1.svc"];



for k=1:length(filename)
 
 if(k<38)
  %--------------------------------------PD------------------------------------------------------------%
  
  [x_vel_on,y_vel_on,time_interval_on,time_interval_off,speed,NCV_on,NCA_on,rel_NCV_on,rel_NCA_on,norm_onTime,NCP,rel_NCP,NCV_off,NCA_off,rel_NCV_off,rel_NCA_off,norm_offTime,off_onTime,arithMean,geoMean,trimMean,percentiles,moments,kurto,ranges,medians,modes,stdDevs,robustRange,interQuartiles,x_shannon,y_shannon,x_renyi2,y_renyi2,x_renyi3,y_renyi3,snr_ce_x,snr_ce_y,snr_tke1_x,snr_tke1_y,snr_tke2_x,snr_tke2_y,x_shannon_i1,y_shannon_i1,x_renyi2_i1,y_renyi2_i1,x_renyi3_i1,y_renyi3_i1,x_shannon_i2,y_shannon_i2,x_renyi2_i2,y_renyi2_i2,x_renyi3_i2,y_renyi3_i2,snr_ice_x,snr_ice_y,snr_itke1_x,snr_itke1_y,snr_itke2_x,snr_itke2_y]=kinematic_features(filename(k,:));
  
  disp("lol2");     %-----------------------------------------------------------------------
  
  x_vel_on_pd=[x_vel_on_pd;x_vel_on];
  y_vel_on_pd=[y_vel_on_pd;y_vel_on];
  time_interval_off_pd=[time_interval_off_pd;time_interval_off];
  speed_pd=[speed_pd;speed];
  NCV_on_pd=[NCV_on_pd;NCV_on];
  NCA_on_pd=[NCA_on_pd;NCA_on];
  rel_NCV_on_pd=[rel_NCV_on_pd;rel_NCV_on];
  rel_NCA_on_pd=[rel_NCA_on_pd;rel_NCA_on];
  norm_onTime_pd=[norm_onTime_pd;norm_onTime];
  NCP_pd=[NCP_pd;NCP];
  rel_NCP_pd=[rel_NCP_pd;rel_NCP];
  NCV_off_pd=[NCV_off_pd;NCV_off];
  NCA_off_pd=[NCA_off_pd;NCA_off];
  rel_NCV_off_pd=[rel_NCV_off_pd;rel_NCV_off];
  rel_NCA_off_pd=[rel_NCA_off_pd;rel_NCA_off];
  norm_offTime_pd=[norm_offTime_pd;norm_offTime];
  off_onTime_pd=[off_onTime_pd;off_onTime];
 
  %----first row of arithmean vector is strokespeed---%
  
  arithMean_strokespeed_pd=[arithMean_strokespeed_pd;arithMean(1,:)];
  %checking if the garbage value is present or not%
  
  if(geoMean(1,:)!=-100)
  geoMean_strokespeed_pd=[geoMean_strokespeed_pd;geoMean(1,:)];
  trimMean_strokespeed_pd=[trimMean_strokespeed_pd;trimMean(1,:)];
  percentiles_strokespeed_pd=[percentiles_strokespeed_pd;percentiles(1,:)];
  moments_strokespeed_pd=[moments_strokespeed_pd;moments(1,:)];
  kurto_strokespeed_pd=[kurto_strokespeed_pd;kurto(1,:)];
  ranges_strokespeed_pd=[ranges_strokespeed_pd;ranges(1,:)];
  medians_strokespeed_pd=[medians_strokespeed_pd;medians(1,:)];
  modes_strokespeed_pd=[modes_strokespeed_pd;modes(1,:)];
  stdDevs_strokespeed_pd=[stdDevs_strokespeed_pd;stdDevs(1,:)];
  robustRange_strokespeed_pd=[robustRange_strokespeed_pd;robustRange(1,:)];
  interQuartiles_strokespeed_pd=[interQuartiles_strokespeed_pd;interQuartiles(1,:)];
  endif;

arithMean_vel_on_pd=[arithMean_vel_on_pd;arithMean(2,:)];
geoMean_vel_on_pd=[geoMean_vel_on_pd;geoMean(2,:)];
trimMean_vel_on_pd=[trimMean_vel_on_pd;trimMean(2,:)];
percentiles_vel_on_pd=[percentiles_vel_on_pd;percentiles(2,:)];
moments_vel_on_pd=[moments_vel_on_pd;moments(2,:)];
kurto_vel_on_pd=[kurto_vel_on_pd;kurto(2,:)];
ranges_vel_on_pd=[ranges_vel_on_pd;ranges(2,:)];
medians_vel_on_pd=[medians_vel_on_pd;medians(2,:)];
modes_vel_on_pd=[modes_vel_on_pd;modes(2,:)];
stdDevs_vel_on_pd=[stdDevs_vel_on_pd;stdDevs(2,:)];
robustRange_vel_on_pd=[robustRange_vel_on_pd;robustRange(2,:)];
interQuartiles_vel_on_pd=[interQuartiles_vel_on_pd;interQuartiles(2,:)];

arithMean_acc_on_pd=[arithMean_acc_on_pd;arithMean(3,:)];
geoMean_acc_on_pd=[geoMean_acc_on_pd;geoMean(3,:)];
trimMean_acc_on_pd=[trimMean_acc_on_pd;trimMean(3,:)];
percentiles_acc_on_pd=[percentiles_acc_on_pd;percentiles(3,:)];
moments_acc_on_pd=[moments_acc_on_pd;moments(3,:)];
kurto_acc_on_pd=[kurto_acc_on_pd;kurto(3,:)];
ranges_acc_on_pd=[ranges_acc_on_pd;ranges(3,:)];
medians_acc_on_pd=[medians_acc_on_pd;medians(3,:)];
modes_acc_on_pd=[modes_acc_on_pd;modes(3,:)];
stdDevs_acc_on_pd=[stdDevs_acc_on_pd;stdDevs(3,:)];
robustRange_acc_on_pd=[robustRange_acc_on_pd;robustRange(3,:)];
interQuartiles_acc_on_pd=[interQuartiles_acc_on_pd;interQuartiles(3,:)];

arithMean_jerk_on_pd=[arithMean_jerk_on_pd;arithMean(4,:)];
geoMean_jerk_on_pd=[geoMean_jerk_on_pd;geoMean(4,:)];
trimMean_jerk_on_pd=[trimMean_jerk_on_pd;trimMean(4,:)];
percentiles_jerk_on_pd=[percentiles_jerk_on_pd;percentiles(4,:)];
moments_jerk_on_pd=[moments_jerk_on_pd;moments(4,:)];
kurto_jerk_on_pd=[kurto_jerk_on_pd;kurto(4,:)];
ranges_jerk_on_pd=[ranges_jerk_on_pd;ranges(4,:)];
medians_jerk_on_pd=[medians_jerk_on_pd;medians(4,:)];
modes_jerk_on_pd=[modes_jerk_on_pd;modes(4,:)];
stdDevs_jerk_on_pd=[stdDevs_jerk_on_pd;stdDevs(4,:)];
robustRange_jerk_on_pd=[robustRange_jerk_on_pd;robustRange(4,:)];
interQuartiles_jerk_on_pd=[interQuartiles_jerk_on_pd;interQuartiles(4,:)];

arithMean_x_vel_on_pd=[arithMean_x_vel_on_pd;arithMean(5,:)];
geoMean_x_vel_on_pd=[geoMean_x_vel_on_pd;geoMean(5,:)];
trimMean_x_vel_on_pd=[trimMean_x_vel_on_pd;trimMean(5,:)];
percentiles_x_vel_on_pd=[percentiles_x_vel_on_pd;percentiles(5,:)];
moments_x_vel_on_pd=[moments_x_vel_on_pd;moments(5,:)];
kurto_x_vel_on_pd=[kurto_x_vel_on_pd;kurto(5,:)];
ranges_x_vel_on_pd=[ranges_x_vel_on_pd;ranges(5,:)];
medians_x_vel_on_pd=[medians_x_vel_on_pd;medians(5,:)];
modes_x_vel_on_pd=[modes_x_vel_on_pd;modes(5,:)];
stdDevs_x_vel_on_pd=[stdDevs_x_vel_on_pd;stdDevs(5,:)];
robustRange_x_vel_on_pd=[robustRange_x_vel_on_pd;robustRange(5,:)];
interQuartiles_x_vel_on_pd=[interQuartiles_x_vel_on_pd;interQuartiles(5,:)];

arithMean_x_acc_on_pd=[arithMean_x_acc_on_pd;arithMean(6,:)];
geoMean_x_acc_on_pd=[geoMean_x_acc_on_pd;geoMean(6,:)];
trimMean_x_acc_on_pd=[trimMean_x_acc_on_pd;trimMean(6,:)];
percentiles_x_acc_on_pd=[percentiles_x_acc_on_pd;percentiles(6,:)];
moments_x_acc_on_pd=[moments_x_acc_on_pd;moments(6,:)];
kurto_x_acc_on_pd=[kurto_x_acc_on_pd;kurto(6,:)];
ranges_x_acc_on_pd=[ranges_x_acc_on_pd;ranges(6,:)];
medians_x_acc_on_pd=[medians_x_acc_on_pd;medians(6,:)];
modes_x_acc_on_pd=[modes_x_acc_on_pd;modes(6,:)];
stdDevs_x_acc_on_pd=[stdDevs_x_acc_on_pd;stdDevs(6,:)];
robustRange_x_acc_on_pd=[robustRange_x_acc_on_pd;robustRange(6,:)];
interQuartiles_x_acc_on_pd=[interQuartiles_x_acc_on_pd;interQuartiles(6,:)];

arithMean_x_jerk_on_pd=[arithMean_x_jerk_on_pd;arithMean(7,:)];
geoMean_x_jerk_on_pd=[geoMean_x_jerk_on_pd;geoMean(7,:)];
trimMean_x_jerk_on_pd=[trimMean_x_jerk_on_pd;trimMean(7,:)];
percentiles_x_jerk_on_pd=[percentiles_x_jerk_on_pd;percentiles(7,:)];
moments_x_jerk_on_pd=[moments_x_jerk_on_pd;moments(7,:)];
kurto_x_jerk_on_pd=[kurto_x_jerk_on_pd;kurto(7,:)];
ranges_x_jerk_on_pd=[ranges_x_jerk_on_pd;ranges(7,:)];
medians_x_jerk_on_pd=[medians_x_jerk_on_pd;medians(7,:)];
modes_x_jerk_on_pd=[modes_x_jerk_on_pd;modes(7,:)];
stdDevs_x_jerk_on_pd=[stdDevs_x_jerk_on_pd;stdDevs(7,:)];
robustRange_x_jerk_on_pd=[robustRange_x_jerk_on_pd;robustRange(7,:)];
interQuartiles_x_jerk_on_pd=[interQuartiles_x_jerk_on_pd;interQuartiles(7,:)];

arithMean_y_vel_on_pd=[arithMean_y_vel_on_pd;arithMean(8,:)];
geoMean_y_vel_on_pd=[geoMean_y_vel_on_pd;geoMean(8,:)];
trimMean_y_vel_on_pd=[trimMean_y_vel_on_pd;trimMean(8,:)];
percentiles_y_vel_on_pd=[percentiles_y_vel_on_pd;percentiles(8,:)];
moments_y_vel_on_pd=[moments_y_vel_on_pd;moments(8,:)];
kurto_y_vel_on_pd=[kurto_y_vel_on_pd;kurto(8,:)];
ranges_y_vel_on_pd=[ranges_y_vel_on_pd;ranges(8,:)];
medians_y_vel_on_pd=[medians_y_vel_on_pd;medians(8,:)];
modes_y_vel_on_pd=[modes_y_vel_on_pd;modes(8,:)];
stdDevs_y_vel_on_pd=[stdDevs_y_vel_on_pd;stdDevs(8,:)];
robustRange_y_vel_on_pd=[robustRange_y_vel_on_pd;robustRange(8,:)];
interQuartiles_y_vel_on_pd=[interQuartiles_y_vel_on_pd;interQuartiles(8,:)];

arithMean_y_acc_on_pd=[arithMean_y_acc_on_pd;arithMean(9,:)];
geoMean_y_acc_on_pd=[geoMean_y_acc_on_pd;geoMean(9,:)];
trimMean_y_acc_on_pd=[trimMean_y_acc_on_pd;trimMean(9,:)];
percentiles_y_acc_on_pd=[percentiles_y_acc_on_pd;percentiles(9,:)];
moments_y_acc_on_pd=[moments_y_acc_on_pd;moments(9,:)];
kurto_y_acc_on_pd=[kurto_y_acc_on_pd;kurto(9,:)];
ranges_y_acc_on_pd=[ranges_y_acc_on_pd;ranges(9,:)];
medians_y_acc_on_pd=[medians_y_acc_on_pd;medians(9,:)];
modes_y_acc_on_pd=[modes_y_acc_on_pd;modes(9,:)];
stdDevs_y_acc_on_pd=[stdDevs_y_acc_on_pd;stdDevs(9,:)];
robustRange_y_acc_on_pd=[robustRange_y_acc_on_pd;robustRange(9,:)];
interQuartiles_y_acc_on_pd=[interQuartiles_y_acc_on_pd;interQuartiles(9,:)];

arithMean_y_jerk_on_pd=[arithMean_y_jerk_on_pd;arithMean(10,:)];
geoMean_y_jerk_on_pd=[geoMean_y_jerk_on_pd;geoMean(10,:)];
trimMean_y_jerk_on_pd=[trimMean_y_jerk_on_pd;trimMean(10,:)];
percentiles_y_jerk_on_pd=[percentiles_y_jerk_on_pd;percentiles(10,:)];
moments_y_jerk_on_pd=[moments_y_jerk_on_pd;moments(10,:)];
kurto_y_jerk_on_pd=[kurto_y_jerk_on_pd;kurto(10,:)];
ranges_y_jerk_on_pd=[ranges_y_jerk_on_pd;ranges(10,:)];
medians_y_jerk_on_pd=[medians_y_jerk_on_pd;medians(10,:)];
modes_y_jerk_on_pd=[modes_y_jerk_on_pd;modes(10,:)];
stdDevs_y_jerk_on_pd=[stdDevs_y_jerk_on_pd;stdDevs(10,:)];
robustRange_y_jerk_on_pd=[robustRange_y_jerk_on_pd;robustRange(10,:)];
interQuartiles_y_jerk_on_pd=[interQuartiles_y_jerk_on_pd;interQuartiles(10,:)];

if(length(arithMean)>11)

arithMean_vel_off_pd=[arithMean_vel_off_pd;arithMean(11,:)];
geoMean_vel_off_pd=[geoMean_vel_off_pd;geoMean(11,:)];
trimMean_vel_off_pd=[trimMean_vel_off_pd;trimMean(11,:)];
percentiles_vel_off_pd=[percentiles_vel_off_pd;percentiles(11,:)];
moments_vel_off_pd=[moments_vel_off_pd;moments(11,:)];
kurto_vel_off_pd=[kurto_vel_off_pd;kurto(11,:)];
ranges_vel_off_pd=[ranges_vel_off_pd;ranges(11,:)];
medians_vel_off_pd=[medians_vel_off_pd;medians(11,:)];
modes_vel_off_pd=[modes_vel_off_pd;modes(11,:)];
stdDevs_vel_off_pd=[stdDevs_vel_off_pd;stdDevs(11,:)];
robustRange_vel_off_pd=[robustRange_vel_off_pd;robustRange(11,:)];
interQuartiles_vel_off_pd=[interQuartiles_vel_off_pd;interQuartiles(11,:)];

arithMean_acc_off_pd=[arithMean_acc_off_pd;arithMean(12,:)];
geoMean_acc_off_pd=[geoMean_acc_off_pd;geoMean(12,:)];
trimMean_acc_off_pd=[trimMean_acc_off_pd;trimMean(12,:)];
percentiles_acc_off_pd=[percentiles_acc_off_pd;percentiles(12,:)];
moments_acc_off_pd=[moments_acc_off_pd;moments(12,:)];
kurto_acc_off_pd=[kurto_acc_off_pd;kurto(12,:)];
ranges_acc_off_pd=[ranges_acc_off_pd;ranges(12,:)];
medians_acc_off_pd=[medians_acc_off_pd;medians(12,:)];
modes_acc_off_pd=[modes_acc_off_pd;modes(12,:)];
stdDevs_acc_off_pd=[stdDevs_acc_off_pd;stdDevs(12,:)];
robustRange_acc_off_pd=[robustRange_acc_off_pd;robustRange(12,:)];
interQuartiles_acc_off_pd=[interQuartiles_acc_off_pd;interQuartiles(12,:)];

arithMean_jerk_off_pd=[arithMean_jerk_off_pd;arithMean(13,:)];
geoMean_jerk_off_pd=[geoMean_jerk_off_pd;geoMean(13,:)];
trimMean_jerk_off_pd=[trimMean_jerk_off_pd;trimMean(13,:)];
percentiles_jerk_off_pd=[percentiles_jerk_off_pd;percentiles(13,:)];
moments_jerk_off_pd=[moments_jerk_off_pd;moments(13,:)];
kurto_jerk_off_pd=[kurto_jerk_off_pd;kurto(13,:)];
ranges_jerk_off_pd=[ranges_jerk_off_pd;ranges(13,:)];
medians_jerk_off_pd=[medians_jerk_off_pd;medians(13,:)];
modes_jerk_off_pd=[modes_jerk_off_pd;modes(13,:)];
stdDevs_jerk_off_pd=[stdDevs_jerk_off_pd;stdDevs(13,:)];
robustRange_jerk_off_pd=[robustRange_jerk_off_pd;robustRange(13,:)];
interQuartiles_jerk_off_pd=[interQuartiles_jerk_off_pd;interQuartiles(13,:)];


arithMean_x_vel_off_pd=[arithMean_x_vel_off_pd;arithMean(14,:)];
geoMean_x_vel_off_pd=[geoMean_x_vel_off_pd;geoMean(14,:)];
trimMean_x_vel_off_pd=[trimMean_x_vel_off_pd;trimMean(14,:)];
percentiles_x_vel_off_pd=[percentiles_x_vel_off_pd;percentiles(14,:)];
moments_x_vel_off_pd=[moments_x_vel_off_pd;moments(14,:)];
kurto_x_vel_off_pd=[kurto_x_vel_off_pd;kurto(14,:)];
ranges_x_vel_off_pd=[ranges_x_vel_off_pd;ranges(14,:)];
medians_x_vel_off_pd=[medians_x_vel_off_pd;medians(14,:)];
modes_x_vel_off_pd=[modes_x_vel_off_pd;modes(14,:)];
stdDevs_x_vel_off_pd=[stdDevs_x_vel_off_pd;stdDevs(14,:)];
robustRange_x_vel_off_pd=[robustRange_x_vel_off_pd;robustRange(14,:)];
interQuartiles_x_vel_off_pd=[interQuartiles_x_vel_off_pd;interQuartiles(14,:)];

arithMean_x_acc_off_pd=[arithMean_x_acc_off_pd;arithMean(15,:)];
geoMean_x_acc_off_pd=[geoMean_x_acc_off_pd;geoMean(15,:)];
trimMean_x_acc_off_pd=[trimMean_x_acc_off_pd;trimMean(15,:)];
percentiles_x_acc_off_pd=[percentiles_x_acc_off_pd;percentiles(15,:)];
moments_x_acc_off_pd=[moments_x_acc_off_pd;moments(15,:)];
kurto_x_acc_off_pd=[kurto_x_acc_off_pd;kurto(15,:)];
ranges_x_acc_off_pd=[ranges_x_acc_off_pd;ranges(15,:)];
medians_x_acc_off_pd=[medians_x_acc_off_pd;medians(15,:)];
modes_x_acc_off_pd=[modes_x_acc_off_pd;modes(15,:)];
stdDevs_x_acc_off_pd=[stdDevs_x_acc_off_pd;stdDevs(15,:)];
robustRange_x_acc_off_pd=[robustRange_x_acc_off_pd;robustRange(15,:)];
interQuartiles_x_acc_off_pd=[interQuartiles_x_acc_off_pd;interQuartiles(15,:)];

arithMean_x_jerk_off_pd=[arithMean_x_jerk_off_pd;arithMean(16,:)];
geoMean_x_jerk_off_pd=[geoMean_x_jerk_off_pd;geoMean(16,:)];
trimMean_x_jerk_off_pd=[trimMean_x_jerk_off_pd;trimMean(16,:)];
percentiles_x_jerk_off_pd=[percentiles_x_jerk_off_pd;percentiles(16,:)];
moments_x_jerk_off_pd=[moments_x_jerk_off_pd;moments(16,:)];
kurto_x_jerk_off_pd=[kurto_x_jerk_off_pd;kurto(16,:)];
ranges_x_jerk_off_pd=[ranges_x_jerk_off_pd;ranges(16,:)];
medians_x_jerk_off_pd=[medians_x_jerk_off_pd;medians(16,:)];
modes_x_jerk_off_pd=[modes_x_jerk_off_pd;modes(16,:)];
stdDevs_x_jerk_off_pd=[stdDevs_x_jerk_off_pd;stdDevs(16,:)];
robustRange_x_jerk_off_pd=[robustRange_x_jerk_off_pd;robustRange(16,:)];
interQuartiles_x_jerk_off_pd=[interQuartiles_x_jerk_off_pd;interQuartiles(16,:)];

arithMean_y_vel_off_pd=[arithMean_y_vel_off_pd;arithMean(17,:)];
geoMean_y_vel_off_pd=[geoMean_y_vel_off_pd;geoMean(17,:)];
trimMean_y_vel_off_pd=[trimMean_y_vel_off_pd;trimMean(17,:)];
percentiles_y_vel_off_pd=[percentiles_y_vel_off_pd;percentiles(17,:)];
moments_y_vel_off_pd=[moments_y_vel_off_pd;moments(17,:)];
kurto_y_vel_off_pd=[kurto_y_vel_off_pd;kurto(17,:)];
ranges_y_vel_off_pd=[ranges_y_vel_off_pd;ranges(17,:)];
medians_y_vel_off_pd=[medians_y_vel_off_pd;medians(17,:)];
modes_y_vel_off_pd=[modes_y_vel_off_pd;modes(17,:)];
stdDevs_y_vel_off_pd=[stdDevs_y_vel_off_pd;stdDevs(17,:)];
robustRange_y_vel_off_pd=[robustRange_y_vel_off_pd;robustRange(17,:)];
interQuartiles_y_vel_off_pd=[interQuartiles_y_vel_off_pd;interQuartiles(17,:)];

arithMean_y_acc_off_pd=[arithMean_y_acc_off_pd;arithMean(18,:)];
geoMean_y_acc_off_pd=[geoMean_y_acc_off_pd;geoMean(18,:)];
trimMean_y_acc_off_pd=[trimMean_y_acc_off_pd;trimMean(18,:)];
percentiles_y_acc_off_pd=[percentiles_y_acc_off_pd;percentiles(18,:)];
moments_y_acc_off_pd=[moments_y_acc_off_pd;moments(18,:)];
kurto_y_acc_off_pd=[kurto_y_acc_off_pd;kurto(18,:)];
ranges_y_acc_off_pd=[ranges_y_acc_off_pd;ranges(18,:)];
medians_y_acc_off_pd=[medians_y_acc_off_pd;medians(18,:)];
modes_y_acc_off_pd=[modes_y_acc_off_pd;modes(18,:)];
stdDevs_y_acc_off_pd=[stdDevs_y_acc_off_pd;stdDevs(18,:)];
robustRange_y_acc_off_pd=[robustRange_y_acc_off_pd;robustRange(18,:)];
interQuartiles_y_acc_off_pd=[interQuartiles_y_acc_off_pd;interQuartiles(18,:)];

arithMean_y_jerk_off_pd=[arithMean_y_jerk_off_pd;arithMean(19,:)];
geoMean_y_jerk_off_pd=[geoMean_y_jerk_off_pd;geoMean(19,:)];
trimMean_y_jerk_off_pd=[trimMean_y_jerk_off_pd;trimMean(19,:)];
percentiles_y_jerk_off_pd=[percentiles_y_jerk_off_pd;percentiles(19,:)];
moments_y_jerk_off_pd=[moments_y_jerk_off_pd;moments(19,:)];
kurto_y_jerk_off_pd=[kurto_y_jerk_off_pd;kurto(19,:)];
ranges_y_jerk_off_pd=[ranges_y_jerk_off_pd;ranges(19,:)];
medians_y_jerk_off_pd=[medians_y_jerk_off_pd;medians(19,:)];
modes_y_jerk_off_pd=[modes_y_jerk_off_pd;modes(19,:)];
stdDevs_y_jerk_off_pd=[stdDevs_y_jerk_off_pd;stdDevs(19,:)];
robustRange_y_jerk_off_pd=[robustRange_y_jerk_off_pd;robustRange(19,:)];
interQuartiles_y_jerk_off_pd=[interQuartiles_y_jerk_off_pd;interQuartiles(19,:)];

arithMean_pressure_rate_pd=[arithMean_pressure_rate_pd;arithMean(20,:)];
geoMean_pressure_rate_pd=[geoMean_pressure_rate_pd;geoMean(20,:)];
trimMean_pressure_rate_pd=[trimMean_pressure_rate_pd;trimMean(20,:)];
percentiles_pressure_rate_pd=[percentiles_pressure_rate_pd;percentiles(20,:)];
moments_pressure_rate_pd=[moments_pressure_rate_pd;moments(20,:)];
kurto_pressure_rate_pd=[kurto_pressure_rate_pd;kurto(20,:)];
ranges_pressure_rate_pd=[ranges_pressure_rate_pd;ranges(20,:)];
medians_pressure_rate_pd=[medians_pressure_rate_pd;medians(20,:)];
modes_pressure_rate_pd=[modes_pressure_rate_pd;modes(20,:)];
stdDevs_pressure_rate_pd=[stdDevs_pressure_rate_pd;stdDevs(20,:)];
robustRange_pressure_rate_pd=[robustRange_pressure_rate_pd;robustRange(20,:)];
interQuartiles_pressure_rate_pd=[interQuartiles_pressure_rate_pd;interQuartiles(20,:)];

else

arithMean_pressure_rate_pd=[arithMean_pressure_rate_pd;arithMean(11,:)];
geoMean_pressure_rate_pd=[geoMean_pressure_rate_pd;geoMean(11,:)];
trimMean_pressure_rate_pd=[trimMean_pressure_rate_pd;trimMean(11,:)];
percentiles_pressure_rate_pd=[percentiles_pressure_rate_pd;percentiles(11,:)];
moments_pressure_rate_pd=[moments_pressure_rate_pd;moments(11,:)];
kurto_pressure_rate_pd=[kurto_pressure_rate_pd;kurto(11,:)];
ranges_pressure_rate_pd=[ranges_pressure_rate_pd;ranges(11,:)];
medians_pressure_rate_pd=[medians_pressure_rate_pd;medians(11,:)];
modes_pressure_rate_pd=[modes_pressure_rate_pd;modes(11,:)];
stdDevs_pressure_rate_pd=[stdDevs_pressure_rate_pd;stdDevs(11,:)];
robustRange_pressure_rate_pd=[robustRange_pressure_rate_pd;robustRange(11,:)];
interQuartiles_pressure_rate_pd=[interQuartiles_pressure_rate_pd;interQuartiles(11,:)];

endif;

x_shannon_pd=[x_shannon_pd;x_shannon];
y_shannon_pd=[y_shannon_pd;y_shannon];
x_renyi2_pd=[x_renyi2_pd;x_renyi2];
y_renyi2_pd=[y_renyi2_pd;y_renyi2];
x_renyi3_pd=[x_renyi3_pd;x_renyi3];
y_renyi3_pd=[y_renyi3_pd;y_renyi3];
snr_ce_x_pd=[snr_ce_x_pd;snr_ce_x];
snr_ce_y_pd=[snr_ce_y_pd;snr_ce_y];
snr_tke1_x_pd=[snr_tke1_x_pd;snr_tke1_x];
snr_tke1_y_pd=[snr_tke1_y_pd;snr_tke1_y];
snr_tke2_x_pd=[snr_tke2_x_pd;snr_tke2_x];
snr_tke2_y_pd=[snr_tke2_y_pd;snr_tke2_y];
x_shannon_i1_pd=[x_shannon_i1_pd;x_shannon_i1];
y_shannon_i1_pd=[y_shannon_i1_pd;y_shannon_i1];
x_renyi2_i1_pd=[x_renyi2_i1_pd;x_renyi2_i1];
y_renyi2_i1_pd=[y_renyi2_i1_pd;y_renyi2_i1];
x_renyi3_i1_pd=[x_renyi3_i1_pd;x_renyi3_i1];
y_renyi3_i1_pd=[y_renyi3_i1_pd;y_renyi3_i1];
x_shannon_i2_pd=[x_shannon_i2_pd;x_shannon_i2];
y_shannon_i2_pd=[y_shannon_i2_pd;y_shannon_i2];
x_renyi2_i2_pd=[x_renyi2_i2_pd;x_renyi2_i2];
y_renyi2_i2_pd=[y_renyi2_i2_pd;y_renyi2_i2];
x_renyi3_i2_pd=[x_renyi3_i2_pd;x_renyi3_i2];
y_renyi3_i2_pd=[y_renyi3_i2_pd;y_renyi3_i2];
snr_ice_x_pd=[snr_ice_x_pd;snr_ice_x];
snr_ice_y_pd=[snr_ice_y_pd;snr_ice_y];
snr_itke1_x_pd=[snr_itke1_x_pd;snr_itke1_x];
snr_itke1_y_pd=[snr_itke1_y_pd;snr_itke1_y];
snr_itke2_x_pd=[snr_itke2_x_pd;snr_itke2_x];
snr_itke2_y_pd=[snr_itke2_y_pd;snr_itke2_y];

  
  disp("step1");  #--------------------------------------------------------------------------------------------------#

  else
    [x_vel_on,y_vel_on,time_interval_on,time_interval_off,speed,NCV_on,NCA_on,rel_NCV_on,rel_NCA_on,norm_onTime,NCP,rel_NCP,NCV_off,NCA_off,rel_NCV_off,rel_NCA_off,norm_offTime,off_onTime,arithMean,geoMean,trimMean,percentiles,moments,kurto,ranges,medians,modes,stdDevs,robustRange,interQuartiles,x_shannon,y_shannon,x_renyi2,y_renyi2,x_renyi3,y_renyi3,snr_ce_x,snr_ce_y,snr_tke1_x,snr_tke1_y,snr_tke2_x,snr_tke2_y,x_shannon_i1,y_shannon_i1,x_renyi2_i1,y_renyi2_i1,x_renyi3_i1,y_renyi3_i1,x_shannon_i2,y_shannon_i2,x_renyi2_i2,y_renyi2_i2,x_renyi3_i2,y_renyi3_i2,snr_ice_x,snr_ice_y,snr_itke1_x,snr_itke1_y,snr_itke2_x,snr_itke2_y]=kinematic_features(filename(k,:));
  
  x_vel_on_hc=[x_vel_on_hc;x_vel_on];
  y_vel_on_hc=[y_vel_on_hc;y_vel_on];
  time_interval_off_hc=[time_interval_off_hc;time_interval_off];
  speed_hc=[speed_hc;speed];
  NCV_on_hc=[NCV_on_hc;NCV_on];
  NCA_on_hc=[NCA_on_hc;NCA_on];
  rel_NCV_on_hc=[rel_NCV_on_hc;rel_NCV_on];
  rel_NCA_on_hc=[rel_NCA_on_hc;rel_NCA_on];
  norm_onTime_hc=[norm_onTime_hc;norm_onTime];
  NCP_hc=[NCP_hc;NCP];
  rel_NCP_hc=[rel_NCP_hc;rel_NCP];
  NCV_off_hc=[NCV_off_hc;NCV_off];
  NCA_off_hc=[NCA_off_hc;NCA_off];
  rel_NCV_off_hc=[rel_NCV_off_hc;rel_NCV_off];
  rel_NCA_off_hc=[rel_NCA_off_hc;rel_NCA_off];
  norm_offTime_hc=[norm_offTime_hc;norm_offTime];
  off_onTime_hc=[off_onTime_hc;off_onTime];
 
  %----first row of arithmean vector is strokespeed---%
  arithMean_strokespeed_hc=[arithMean_strokespeed_hc;arithMean(1,:)];

  if(geoMean(1,:)!=-100)
  geoMean_strokespeed_hc=[geoMean_strokespeed_hc;geoMean(1,:)];
  trimMean_strokespeed_hc=[trimMean_strokespeed_hc;trimMean(1,:)];
  percentiles_strokespeed_hc=[percentiles_strokespeed_hc;percentiles(1,:)];
  moments_strokespeed_hc=[moments_strokespeed_hc;moments(1,:)];
  kurto_strokespeed_hc=[kurto_strokespeed_hc;kurto(1,:)];
  ranges_strokespeed_hc=[ranges_strokespeed_hc;ranges(1,:)];
  medians_strokespeed_hc=[medians_strokespeed_hc;medians(1,:)];
  modes_strokespeed_hc=[modes_strokespeed_hc;modes(1,:)];
  stdDevs_strokespeed_hc=[stdDevs_strokespeed_hc;stdDevs(1,:)];
  robustRange_strokespeed_hc=[robustRange_strokespeed_hc;robustRange(1,:)];
  interQuartiles_strokespeed_hc=[interQuartiles_strokespeed_hc;interQuartiles(1,:)];
  endif;

arithMean_vel_on_hc=[arithMean_vel_on_hc;arithMean(2,:)];
geoMean_vel_on_hc=[geoMean_vel_on_hc;geoMean(2,:)];
trimMean_vel_on_hc=[trimMean_vel_on_hc;trimMean(2,:)];
percentiles_vel_on_hc=[percentiles_vel_on_hc;percentiles(2,:)];
moments_vel_on_hc=[moments_vel_on_hc;moments(2,:)];
kurto_vel_on_hc=[kurto_vel_on_hc;kurto(2,:)];
ranges_vel_on_hc=[ranges_vel_on_hc;ranges(2,:)];
medians_vel_on_hc=[medians_vel_on_hc;medians(2,:)];
modes_vel_on_hc=[modes_vel_on_hc;modes(2,:)];
stdDevs_vel_on_hc=[stdDevs_vel_on_hc;stdDevs(2,:)];
robustRange_vel_on_hc=[robustRange_vel_on_hc;robustRange(2,:)];
interQuartiles_vel_on_hc=[interQuartiles_vel_on_hc;interQuartiles(2,:)];

arithMean_acc_on_hc=[arithMean_acc_on_hc;arithMean(3,:)];
geoMean_acc_on_hc=[geoMean_acc_on_hc;geoMean(3,:)];
trimMean_acc_on_hc=[trimMean_acc_on_hc;trimMean(3,:)];
percentiles_acc_on_hc=[percentiles_acc_on_hc;percentiles(3,:)];
moments_acc_on_hc=[moments_acc_on_hc;moments(3,:)];
kurto_acc_on_hc=[kurto_acc_on_hc;kurto(3,:)];
ranges_acc_on_hc=[ranges_acc_on_hc;ranges(3,:)];
medians_acc_on_hc=[medians_acc_on_hc;medians(3,:)];
modes_acc_on_hc=[modes_acc_on_hc;modes(3,:)];
stdDevs_acc_on_hc=[stdDevs_acc_on_hc;stdDevs(3,:)];
robustRange_acc_on_hc=[robustRange_acc_on_hc;robustRange(3,:)];
interQuartiles_acc_on_hc=[interQuartiles_acc_on_hc;interQuartiles(3,:)];

arithMean_jerk_on_hc=[arithMean_jerk_on_hc;arithMean(4,:)];
geoMean_jerk_on_hc=[geoMean_jerk_on_hc;geoMean(4,:)];
trimMean_jerk_on_hc=[trimMean_jerk_on_hc;trimMean(4,:)];
percentiles_jerk_on_hc=[percentiles_jerk_on_hc;percentiles(4,:)];
moments_jerk_on_hc=[moments_jerk_on_hc;moments(4,:)];
kurto_jerk_on_hc=[kurto_jerk_on_hc;kurto(4,:)];
ranges_jerk_on_hc=[ranges_jerk_on_hc;ranges(4,:)];
medians_jerk_on_hc=[medians_jerk_on_hc;medians(4,:)];
modes_jerk_on_hc=[modes_jerk_on_hc;modes(4,:)];
stdDevs_jerk_on_hc=[stdDevs_jerk_on_hc;stdDevs(4,:)];
robustRange_jerk_on_hc=[robustRange_jerk_on_hc;robustRange(4,:)];
interQuartiles_jerk_on_hc=[interQuartiles_jerk_on_hc;interQuartiles(4,:)];

arithMean_x_vel_on_hc=[arithMean_x_vel_on_hc;arithMean(5,:)];
geoMean_x_vel_on_hc=[geoMean_x_vel_on_hc;geoMean(5,:)];
trimMean_x_vel_on_hc=[trimMean_x_vel_on_hc;trimMean(5,:)];
percentiles_x_vel_on_hc=[percentiles_x_vel_on_hc;percentiles(5,:)];
moments_x_vel_on_hc=[moments_x_vel_on_hc;moments(5,:)];
kurto_x_vel_on_hc=[kurto_x_vel_on_hc;kurto(5,:)];
ranges_x_vel_on_hc=[ranges_x_vel_on_hc;ranges(5,:)];
medians_x_vel_on_hc=[medians_x_vel_on_hc;medians(5,:)];
modes_x_vel_on_hc=[modes_x_vel_on_hc;modes(5,:)];
stdDevs_x_vel_on_hc=[stdDevs_x_vel_on_hc;stdDevs(5,:)];
robustRange_x_vel_on_hc=[robustRange_x_vel_on_hc;robustRange(5,:)];
interQuartiles_x_vel_on_hc=[interQuartiles_x_vel_on_hc;interQuartiles(5,:)];

arithMean_x_acc_on_hc=[arithMean_x_acc_on_hc;arithMean(6,:)];
geoMean_x_acc_on_hc=[geoMean_x_acc_on_hc;geoMean(6,:)];
trimMean_x_acc_on_hc=[trimMean_x_acc_on_hc;trimMean(6,:)];
percentiles_x_acc_on_hc=[percentiles_x_acc_on_hc;percentiles(6,:)];
moments_x_acc_on_hc=[moments_x_acc_on_hc;moments(6,:)];
kurto_x_acc_on_hc=[kurto_x_acc_on_hc;kurto(6,:)];
ranges_x_acc_on_hc=[ranges_x_acc_on_hc;ranges(6,:)];
medians_x_acc_on_hc=[medians_x_acc_on_hc;medians(6,:)];
modes_x_acc_on_hc=[modes_x_acc_on_hc;modes(6,:)];
stdDevs_x_acc_on_hc=[stdDevs_x_acc_on_hc;stdDevs(6,:)];
robustRange_x_acc_on_hc=[robustRange_x_acc_on_hc;robustRange(6,:)];
interQuartiles_x_acc_on_hc=[interQuartiles_x_acc_on_hc;interQuartiles(6,:)];

arithMean_x_jerk_on_hc=[arithMean_x_jerk_on_hc;arithMean(7,:)];
geoMean_x_jerk_on_hc=[geoMean_x_jerk_on_hc;geoMean(7,:)];
trimMean_x_jerk_on_hc=[trimMean_x_jerk_on_hc;trimMean(7,:)];
percentiles_x_jerk_on_hc=[percentiles_x_jerk_on_hc;percentiles(7,:)];
moments_x_jerk_on_hc=[moments_x_jerk_on_hc;moments(7,:)];
kurto_x_jerk_on_hc=[kurto_x_jerk_on_hc;kurto(7,:)];
ranges_x_jerk_on_hc=[ranges_x_jerk_on_hc;ranges(7,:)];
medians_x_jerk_on_hc=[medians_x_jerk_on_hc;medians(7,:)];
modes_x_jerk_on_hc=[modes_x_jerk_on_hc;modes(7,:)];
stdDevs_x_jerk_on_hc=[stdDevs_x_jerk_on_hc;stdDevs(7,:)];
robustRange_x_jerk_on_hc=[robustRange_x_jerk_on_hc;robustRange(7,:)];
interQuartiles_x_jerk_on_hc=[interQuartiles_x_jerk_on_hc;interQuartiles(7,:)];

arithMean_y_vel_on_hc=[arithMean_y_vel_on_hc;arithMean(8,:)];
geoMean_y_vel_on_hc=[geoMean_y_vel_on_hc;geoMean(8,:)];
trimMean_y_vel_on_hc=[trimMean_y_vel_on_hc;trimMean(8,:)];
percentiles_y_vel_on_hc=[percentiles_y_vel_on_hc;percentiles(8,:)];
moments_y_vel_on_hc=[moments_y_vel_on_hc;moments(8,:)];
kurto_y_vel_on_hc=[kurto_y_vel_on_hc;kurto(8,:)];
ranges_y_vel_on_hc=[ranges_y_vel_on_hc;ranges(8,:)];
medians_y_vel_on_hc=[medians_y_vel_on_hc;medians(8,:)];
modes_y_vel_on_hc=[modes_y_vel_on_hc;modes(8,:)];
stdDevs_y_vel_on_hc=[stdDevs_y_vel_on_hc;stdDevs(8,:)];
robustRange_y_vel_on_hc=[robustRange_y_vel_on_hc;robustRange(8,:)];
interQuartiles_y_vel_on_hc=[interQuartiles_y_vel_on_hc;interQuartiles(8,:)];

arithMean_y_acc_on_hc=[arithMean_y_acc_on_hc;arithMean(9,:)];
geoMean_y_acc_on_hc=[geoMean_y_acc_on_hc;geoMean(9,:)];
trimMean_y_acc_on_hc=[trimMean_y_acc_on_hc;trimMean(9,:)];
percentiles_y_acc_on_hc=[percentiles_y_acc_on_hc;percentiles(9,:)];
moments_y_acc_on_hc=[moments_y_acc_on_hc;moments(9,:)];
kurto_y_acc_on_hc=[kurto_y_acc_on_hc;kurto(9,:)];
ranges_y_acc_on_hc=[ranges_y_acc_on_hc;ranges(9,:)];
medians_y_acc_on_hc=[medians_y_acc_on_hc;medians(9,:)];
modes_y_acc_on_hc=[modes_y_acc_on_hc;modes(9,:)];
stdDevs_y_acc_on_hc=[stdDevs_y_acc_on_hc;stdDevs(9,:)];
robustRange_y_acc_on_hc=[robustRange_y_acc_on_hc;robustRange(9,:)];
interQuartiles_y_acc_on_hc=[interQuartiles_y_acc_on_hc;interQuartiles(9,:)];

arithMean_y_jerk_on_hc=[arithMean_y_jerk_on_hc;arithMean(10,:)];
geoMean_y_jerk_on_hc=[geoMean_y_jerk_on_hc;geoMean(10,:)];
trimMean_y_jerk_on_hc=[trimMean_y_jerk_on_hc;trimMean(10,:)];
percentiles_y_jerk_on_hc=[percentiles_y_jerk_on_hc;percentiles(10,:)];
moments_y_jerk_on_hc=[moments_y_jerk_on_hc;moments(10,:)];
kurto_y_jerk_on_hc=[kurto_y_jerk_on_hc;kurto(10,:)];
ranges_y_jerk_on_hc=[ranges_y_jerk_on_hc;ranges(10,:)];
medians_y_jerk_on_hc=[medians_y_jerk_on_hc;medians(10,:)];
modes_y_jerk_on_hc=[modes_y_jerk_on_hc;modes(10,:)];
stdDevs_y_jerk_on_hc=[stdDevs_y_jerk_on_hc;stdDevs(10,:)];
robustRange_y_jerk_on_hc=[robustRange_y_jerk_on_hc;robustRange(10,:)];
interQuartiles_y_jerk_on_hc=[interQuartiles_y_jerk_on_hc;interQuartiles(10,:)];

if(length(arithMean)>11)

arithMean_vel_off_hc=[arithMean_vel_off_hc;arithMean(11,:)];
geoMean_vel_off_hc=[geoMean_vel_off_hc;geoMean(11,:)];
trimMean_vel_off_hc=[trimMean_vel_off_hc;trimMean(11,:)];
percentiles_vel_off_hc=[percentiles_vel_off_hc;percentiles(11,:,:)];
moments_vel_off_hc=[moments_vel_off_hc;moments(11,:)];
kurto_vel_off_hc=[kurto_vel_off_hc;kurto(11,:)];
ranges_vel_off_hc=[ranges_vel_off_hc;ranges(11,:)];
medians_vel_off_hc=[medians_vel_off_hc;medians(11,:)];
modes_vel_off_hc=[modes_vel_off_hc;modes(11,:)];
stdDevs_vel_off_hc=[stdDevs_vel_off_hc;stdDevs(11,:)];
robustRange_vel_off_hc=[robustRange_vel_off_hc;robustRange(11,:)];
interQuartiles_vel_off_hc=[interQuartiles_vel_off_hc;interQuartiles(11,:)];

arithMean_acc_off_hc=[arithMean_acc_off_hc;arithMean(12,:)];
geoMean_acc_off_hc=[geoMean_acc_off_hc;geoMean(12,:)];
trimMean_acc_off_hc=[trimMean_acc_off_hc;trimMean(12,:)];
percentiles_acc_off_hc=[percentiles_acc_off_hc;percentiles(12,:)];
moments_acc_off_hc=[moments_acc_off_hc;moments(12,:)];
kurto_acc_off_hc=[kurto_acc_off_hc;kurto(12,:)];
ranges_acc_off_hc=[ranges_acc_off_hc;ranges(12,:)];
medians_acc_off_hc=[medians_acc_off_hc;medians(12,:)];
modes_acc_off_hc=[modes_acc_off_hc;modes(12,:)];
stdDevs_acc_off_hc=[stdDevs_acc_off_hc;stdDevs(12,:)];
robustRange_acc_off_hc=[robustRange_acc_off_hc;robustRange(12,:)];
interQuartiles_acc_off_hc=[interQuartiles_acc_off_hc;interQuartiles(12,:)];

arithMean_jerk_off_hc=[arithMean_jerk_off_hc;arithMean(13,:)];
geoMean_jerk_off_hc=[geoMean_jerk_off_hc;geoMean(13,:)];
trimMean_jerk_off_hc=[trimMean_jerk_off_hc;trimMean(13,:)];
percentiles_jerk_off_hc=[percentiles_jerk_off_hc;percentiles(13,:)];
moments_jerk_off_hc=[moments_jerk_off_hc;moments(13,:)];
kurto_jerk_off_hc=[kurto_jerk_off_hc;kurto(13,:)];
ranges_jerk_off_hc=[ranges_jerk_off_hc;ranges(13,:)];
medians_jerk_off_hc=[medians_jerk_off_hc;medians(13,:)];
modes_jerk_off_hc=[modes_jerk_off_hc;modes(13,:)];
stdDevs_jerk_off_hc=[stdDevs_jerk_off_hc;stdDevs(13,:)];
robustRange_jerk_off_hc=[robustRange_jerk_off_hc;robustRange(13,:)];
interQuartiles_jerk_off_hc=[interQuartiles_jerk_off_hc;interQuartiles(13,:)];


arithMean_x_vel_off_hc=[arithMean_x_vel_off_hc;arithMean(14,:)];
geoMean_x_vel_off_hc=[geoMean_x_vel_off_hc;geoMean(14,:)];
trimMean_x_vel_off_hc=[trimMean_x_vel_off_hc;trimMean(14,:)];
percentiles_x_vel_off_hc=[percentiles_x_vel_off_hc;percentiles(14,:)];
moments_x_vel_off_hc=[moments_x_vel_off_hc;moments(14,:)];
kurto_x_vel_off_hc=[kurto_x_vel_off_hc;kurto(14,:)];
ranges_x_vel_off_hc=[ranges_x_vel_off_hc;ranges(14,:)];
medians_x_vel_off_hc=[medians_x_vel_off_hc;medians(14,:)];
modes_x_vel_off_hc=[modes_x_vel_off_hc;modes(14,:)];
stdDevs_x_vel_off_hc=[stdDevs_x_vel_off_hc;stdDevs(14,:)];
robustRange_x_vel_off_hc=[robustRange_x_vel_off_hc;robustRange(14,:)];
interQuartiles_x_vel_off_hc=[interQuartiles_x_vel_off_hc;interQuartiles(14,:)];

arithMean_x_acc_off_hc=[arithMean_x_acc_off_hc;arithMean(15,:)];
geoMean_x_acc_off_hc=[geoMean_x_acc_off_hc;geoMean(15,:)];
trimMean_x_acc_off_hc=[trimMean_x_acc_off_hc;trimMean(15,:)];
percentiles_x_acc_off_hc=[percentiles_x_acc_off_hc;percentiles(15,:)];
moments_x_acc_off_hc=[moments_x_acc_off_hc;moments(15,:)];
kurto_x_acc_off_hc=[kurto_x_acc_off_hc;kurto(15,:)];
ranges_x_acc_off_hc=[ranges_x_acc_off_hc;ranges(15,:)];
medians_x_acc_off_hc=[medians_x_acc_off_hc;medians(15,:)];
modes_x_acc_off_hc=[modes_x_acc_off_hc;modes(15,:)];
stdDevs_x_acc_off_hc=[stdDevs_x_acc_off_hc;stdDevs(15,:)];
robustRange_x_acc_off_hc=[robustRange_x_acc_off_hc;robustRange(15,:)];
interQuartiles_x_acc_off_hc=[interQuartiles_x_acc_off_hc;interQuartiles(15,:)];

arithMean_x_jerk_off_hc=[arithMean_x_jerk_off_hc;arithMean(16,:)];
geoMean_x_jerk_off_hc=[geoMean_x_jerk_off_hc;geoMean(16,:)];
trimMean_x_jerk_off_hc=[trimMean_x_jerk_off_hc;trimMean(16,:)];
percentiles_x_jerk_off_hc=[percentiles_x_jerk_off_hc;percentiles(16,:)];
moments_x_jerk_off_hc=[moments_x_jerk_off_hc;moments(16,:)];
kurto_x_jerk_off_hc=[kurto_x_jerk_off_hc;kurto(16,:)];
ranges_x_jerk_off_hc=[ranges_x_jerk_off_hc;ranges(16,:)];
medians_x_jerk_off_hc=[medians_x_jerk_off_hc;medians(16,:)];
modes_x_jerk_off_hc=[modes_x_jerk_off_hc;modes(16,:)];
stdDevs_x_jerk_off_hc=[stdDevs_x_jerk_off_hc;stdDevs(16,:)];
robustRange_x_jerk_off_hc=[robustRange_x_jerk_off_hc;robustRange(16,:)];
interQuartiles_x_jerk_off_hc=[interQuartiles_x_jerk_off_hc;interQuartiles(16,:)];

arithMean_y_vel_off_hc=[arithMean_y_vel_off_hc;arithMean(17,:)];
geoMean_y_vel_off_hc=[geoMean_y_vel_off_hc;geoMean(17,:)];
trimMean_y_vel_off_hc=[trimMean_y_vel_off_hc;trimMean(17,:)];
percentiles_y_vel_off_hc=[percentiles_y_vel_off_hc;percentiles(17,:)];
moments_y_vel_off_hc=[moments_y_vel_off_hc;moments(17,:)];
kurto_y_vel_off_hc=[kurto_y_vel_off_hc;kurto(17,:)];
ranges_y_vel_off_hc=[ranges_y_vel_off_hc;ranges(17,:)];
medians_y_vel_off_hc=[medians_y_vel_off_hc;medians(17,:)];
modes_y_vel_off_hc=[modes_y_vel_off_hc;modes(17,:)];
stdDevs_y_vel_off_hc=[stdDevs_y_vel_off_hc;stdDevs(17,:)];
robustRange_y_vel_off_hc=[robustRange_y_vel_off_hc;robustRange(17,:)];
interQuartiles_y_vel_off_hc=[interQuartiles_y_vel_off_hc;interQuartiles(17,:)];

arithMean_y_acc_off_hc=[arithMean_y_acc_off_hc;arithMean(18,:)];
geoMean_y_acc_off_hc=[geoMean_y_acc_off_hc;geoMean(18,:)];
trimMean_y_acc_off_hc=[trimMean_y_acc_off_hc;trimMean(18,:)];
percentiles_y_acc_off_hc=[percentiles_y_acc_off_hc;percentiles(18,:)];
moments_y_acc_off_hc=[moments_y_acc_off_hc;moments(18,:)];
kurto_y_acc_off_hc=[kurto_y_acc_off_hc;kurto(18,:)];
ranges_y_acc_off_hc=[ranges_y_acc_off_hc;ranges(18,:)];
medians_y_acc_off_hc=[medians_y_acc_off_hc;medians(18,:)];
modes_y_acc_off_hc=[modes_y_acc_off_hc;modes(18,:)];
stdDevs_y_acc_off_hc=[stdDevs_y_acc_off_hc;stdDevs(18,:)];
robustRange_y_acc_off_hc=[robustRange_y_acc_off_hc;robustRange(18,:)];
interQuartiles_y_acc_off_hc=[interQuartiles_y_acc_off_hc;interQuartiles(18,:)];

arithMean_y_jerk_off_hc=[arithMean_y_jerk_off_hc;arithMean(19,:)];
geoMean_y_jerk_off_hc=[geoMean_y_jerk_off_hc;geoMean(19,:)];
trimMean_y_jerk_off_hc=[trimMean_y_jerk_off_hc;trimMean(19,:)];
percentiles_y_jerk_off_hc=[percentiles_y_jerk_off_hc;percentiles(19,:)];
moments_y_jerk_off_hc=[moments_y_jerk_off_hc;moments(19,:)];
kurto_y_jerk_off_hc=[kurto_y_jerk_off_hc;kurto(19,:)];
ranges_y_jerk_off_hc=[ranges_y_jerk_off_hc;ranges(19,:)];
medians_y_jerk_off_hc=[medians_y_jerk_off_hc;medians(19,:)];
modes_y_jerk_off_hc=[modes_y_jerk_off_hc;modes(19,:)];
stdDevs_y_jerk_off_hc=[stdDevs_y_jerk_off_hc;stdDevs(19,:)];
robustRange_y_jerk_off_hc=[robustRange_y_jerk_off_hc;robustRange(19,:)];
interQuartiles_y_jerk_off_hc=[interQuartiles_y_jerk_off_hc;interQuartiles(19,:)];

arithMean_pressure_rate_hc=[arithMean_pressure_rate_hc;arithMean(20,:)];
geoMean_pressure_rate_hc=[geoMean_pressure_rate_hc;geoMean(20,:)];
trimMean_pressure_rate_hc=[trimMean_pressure_rate_hc;trimMean(20,:)];
percentiles_pressure_rate_hc=[percentiles_pressure_rate_hc;percentiles(20,:)];
moments_pressure_rate_hc=[moments_pressure_rate_hc;moments(20,:)];
kurto_pressure_rate_hc=[kurto_pressure_rate_hc;kurto(20,:)];
ranges_pressure_rate_hc=[ranges_pressure_rate_hc;ranges(20,:)];
medians_pressure_rate_hc=[medians_pressure_rate_hc;medians(20,:)];
modes_pressure_rate_hc=[modes_pressure_rate_hc;modes(20,:)];
stdDevs_pressure_rate_hc=[stdDevs_pressure_rate_hc;stdDevs(20,:)];
robustRange_pressure_rate_hc=[robustRange_pressure_rate_hc;robustRange(20,:)];
interQuartiles_pressure_rate_hc=[interQuartiles_pressure_rate_hc;interQuartiles(20,:)];

else

arithMean_pressure_rate_hc=[arithMean_pressure_rate_hc;arithMean(11,:)];
geoMean_pressure_rate_hc=[geoMean_pressure_rate_hc;geoMean(11,:)];
trimMean_pressure_rate_hc=[trimMean_pressure_rate_hc;trimMean(11,:)];
percentiles_pressure_rate_hc=[percentiles_pressure_rate_hc;percentiles(11,:)];
moments_pressure_rate_hc=[moments_pressure_rate_hc;moments(11,:)];
kurto_pressure_rate_hc=[kurto_pressure_rate_hc;kurto(11,:)];
ranges_pressure_rate_hc=[ranges_pressure_rate_hc;ranges(11,:)];
medians_pressure_rate_hc=[medians_pressure_rate_hc;medians(11,:)];
modes_pressure_rate_hc=[modes_pressure_rate_hc;modes(11,:)];
stdDevs_pressure_rate_hc=[stdDevs_pressure_rate_hc;stdDevs(11,:)];
robustRange_pressure_rate_hc=[robustRange_pressure_rate_hc;robustRange(11,:)];
interQuartiles_pressure_rate_hc=[interQuartiles_pressure_rate_hc;interQuartiles(11,:)];

endif;

x_shannon_hc=[x_shannon_hc;x_shannon];
y_shannon_hc=[y_shannon_hc;y_shannon];
x_renyi2_hc=[x_renyi2_hc;x_renyi2];
y_renyi2_hc=[y_renyi2_hc;y_renyi2];
x_renyi3_hc=[x_renyi3_hc;x_renyi3];
y_renyi3_hc=[y_renyi3_hc;y_renyi3];
snr_ce_x_hc=[snr_ce_x_hc;snr_ce_x];
snr_ce_y_hc=[snr_ce_y_hc;snr_ce_y];
snr_tke1_x_hc=[snr_tke1_x_hc;snr_tke1_x];
snr_tke1_y_hc=[snr_tke1_y_hc;snr_tke1_y];
snr_tke2_x_hc=[snr_tke2_x_hc;snr_tke2_x];
snr_tke2_y_hc=[snr_tke2_y_hc;snr_tke2_y];
x_shannon_i1_hc=[x_shannon_i1_hc;x_shannon_i1];
y_shannon_i1_hc=[y_shannon_i1_hc;y_shannon_i1];
x_renyi2_i1_hc=[x_renyi2_i1_hc;x_renyi2_i1];
y_renyi2_i1_hc=[y_renyi2_i1_hc;y_renyi2_i1];
x_renyi3_i1_hc=[x_renyi3_i1_hc;x_renyi3_i1];
y_renyi3_i1_hc=[y_renyi3_i1_hc;y_renyi3_i1];
x_shannon_i2_hc=[x_shannon_i2_hc;x_shannon_i2];
y_shannon_i2_hc=[y_shannon_i2_hc;y_shannon_i2];
x_renyi2_i2_hc=[x_renyi2_i2_hc;x_renyi2_i2];
y_renyi2_i2_hc=[y_renyi2_i2_hc;y_renyi2_i2];
x_renyi3_i2_hc=[x_renyi3_i2_hc;x_renyi3_i2];
y_renyi3_i2_hc=[y_renyi3_i2_hc;y_renyi3_i2];
snr_ice_x_hc=[snr_ice_x_hc;snr_ice_x];
snr_ice_y_hc=[snr_ice_y_hc;snr_ice_y];
snr_itke1_x_hc=[snr_itke1_x_hc;snr_itke1_x];
snr_itke1_y_hc=[snr_itke1_y_hc;snr_itke1_y];
snr_itke2_x_hc=[snr_itke2_x_hc;snr_itke2_x];
snr_itke2_y_hc=[snr_itke2_y_hc;snr_itke2_y];


disp("step2");


endif;        % end of 'ifelse' construct
 
end;      %end of 'for' loop


%save timeinterval_off_pd.txt timeinterval_off_pd
save speed_pd.txt speed_pd
save NCV_on_pd.txt NCV_on_pd
save NCA_on_pd.txt NCA_on_pd
save rel_NCV_on_pd.txt rel_NCV_on_pd
save rel_NCA_on_pd.txt rel_NCA_on_pd
save norm_onTime_pd.txt norm_onTime_pd
save norm_offTime_pd.txt norm_offTime_pd
save NCP_pd.txt NCP_pd
save rel_NCP_pd.txt rel_NCP_pd
save NCV_off_pd.txt NCV_off_pd
save NCA_off_pd.txt NCA_off_pd
save rel_NCV_off_pd.txt rel_NCV_off_pd
save rel_NCA_off_pd.txt rel_NCA_off_pd

save arithMean_strokespeed_pd.txt arithMean_strokespeed_pd
save geoMean_strokespeed_pd.txt geoMean_strokespeed_pd
save trimMean_strokespeed_pd.txt trimMean_strokespeed_pd
save percentiles_strokespeed_pd.txt percentiles_strokespeed_pd
save moments_strokespeed_pd.txt moments_strokespeed_pd
save kurto_strokespeed_pd.txt kurto_strokespeed_pd
save ranges_strokespeed_pd.txt ranges_strokespeed_pd
save medians_strokespeed_pd.txt medians_strokespeed_pd
save modes_strokespeed_pd.txt modes_strokespeed_pd
save stdDevs_strokespeed_pd.txt stdDevs_strokespeed_pd
save robustRange_strokespeed_pd.txt robustRange_strokespeed_pd
save interQuartiles_strokespeed_pd.txt interQuartiles_strokespeed_pd

save arithMean_vel_on_pd.txt arithMean_vel_on_pd
save geoMean_vel_on_pd.txt geoMean_vel_on_pd
save trimMean_vel_on_pd.txt trimMean_vel_on_pd
save percentiles_vel_on_pd.txt percentiles_vel_on_pd
save moments_vel_on_pd.txt moments_vel_on_pd
save kurto_vel_on_pd.txt kurto_vel_on_pd
save ranges_vel_on_pd.txt ranges_vel_on_pd
save medians_vel_on_pd.txt medians_vel_on_pd
save modes_vel_on_pd.txt modes_vel_on_pd
save stdDevs_vel_on_pd.txt stdDevs_vel_on_pd
save robustRange_vel_on_pd.txt robustRange_vel_on_pd
save interQuartiles_vel_on_pd.txt interQuartiles_vel_on_pd

save arithMean_acc_on_pd.txt arithMean_acc_on_pd
save geoMean_acc_on_pd.txt geoMean_acc_on_pd
save trimMean_acc_on_pd.txt trimMean_acc_on_pd
save percentiles_acc_on_pd.txt percentiles_acc_on_pd
save moments_acc_on_pd.txt moments_acc_on_pd
save kurto_acc_on_pd.txt kurto_acc_on_pd
save ranges_acc_on_pd.txt ranges_acc_on_pd
save medians_acc_on_pd.txt medians_acc_on_pd
save modes_acc_on_pd.txt modes_acc_on_pd
save stdDevs_acc_on_pd.txt stdDevs_acc_on_pd
save robustRange_acc_on_pd.txt robustRange_acc_on_pd
save interQuartiles_acc_on_pd.txt interQuartiles_acc_on_pd

save arithMean_jerk_on_pd.txt arithMean_jerk_on_pd
save geoMean_jerk_on_pd.txt geoMean_jerk_on_pd
save trimMean_jerk_on_pd.txt trimMean_jerk_on_pd
save percentiles_jerk_on_pd.txt percentiles_jerk_on_pd
save moments_jerk_on_pd.txt moments_jerk_on_pd
save kurto_jerk_on_pd.txt kurto_jerk_on_pd
save ranges_jerk_on_pd.txt ranges_jerk_on_pd
save medians_jerk_on_pd.txt medians_jerk_on_pd
save modes_jerk_on_pd.txt modes_jerk_on_pd
save stdDevs_jerk_on_pd.txt stdDevs_jerk_on_pd
save robustRange_jerk_on_pd.txt robustRange_jerk_on_pd
save interQuartiles_jerk_on_pd.txt interQuartiles_jerk_on_pd

save arithMean_x_vel_on_pd.txt arithMean_x_vel_on_pd
save geoMean_x_vel_on_pd.txt geoMean_x_vel_on_pd
save trimMean_x_vel_on_pd.txt trimMean_x_vel_on_pd
save percentiles_x_vel_on_pd.txt percentiles_x_vel_on_pd
save moments_x_vel_on_pd.txt moments_x_vel_on_pd
save kurto_x_vel_on_pd.txt kurto_x_vel_on_pd
save ranges_x_vel_on_pd.txt ranges_x_vel_on_pd
save medians_x_vel_on_pd.txt medians_x_vel_on_pd
save modes_x_vel_on_pd.txt modes_x_vel_on_pd
save stdDevs_x_vel_on_pd.txt stdDevs_x_vel_on_pd
save robustRange_x_vel_on_pd.txt robustRange_x_vel_on_pd
save interQuartiles_x_vel_on_pd.txt interQuartiles_x_vel_on_pd

save arithMean_x_acc_on_pd.txt arithMean_x_acc_on_pd
save geoMean_x_acc_on_pd.txt geoMean_x_acc_on_pd
save trimMean_x_acc_on_pd.txt trimMean_x_acc_on_pd
save percentiles_x_acc_on_pd.txt percentiles_x_acc_on_pd
save moments_x_acc_on_pd.txt moments_x_acc_on_pd
save kurto_x_acc_on_pd.txt kurto_x_acc_on_pd
save ranges_x_acc_on_pd.txt ranges_x_acc_on_pd
save medians_x_acc_on_pd.txt medians_x_acc_on_pd
save modes_x_acc_on_pd.txt modes_x_acc_on_pd
save stdDevs_x_acc_on_pd.txt stdDevs_x_acc_on_pd
save robustRange_x_acc_on_pd.txt robustRange_x_acc_on_pd
save interQuartiles_x_acc_on_pd.txt interQuartiles_x_acc_on_pd

save arithMean_x_jerk_on_pd.txt arithMean_x_jerk_on_pd
save geoMean_x_jerk_on_pd.txt geoMean_x_jerk_on_pd
save trimMean_x_jerk_on_pd.txt trimMean_x_jerk_on_pd
save percentiles_x_jerk_on_pd.txt percentiles_x_jerk_on_pd
save moments_x_jerk_on_pd.txt moments_x_jerk_on_pd
save kurto_x_jerk_on_pd.txt kurto_x_jerk_on_pd
save ranges_x_jerk_on_pd.txt ranges_x_jerk_on_pd
save medians_x_jerk_on_pd.txt medians_x_jerk_on_pd
save modes_x_jerk_on_pd.txt modes_x_jerk_on_pd
save stdDevs_x_jerk_on_pd.txt stdDevs_x_jerk_on_pd
save robustRange_x_jerk_on_pd.txt robustRange_x_jerk_on_pd
save interQuartiles_x_jerk_on_pd.txt interQuartiles_x_jerk_on_pd

save arithMean_y_vel_on_pd.txt arithMean_y_vel_on_pd
save geoMean_y_vel_on_pd.txt geoMean_y_vel_on_pd
save trimMean_y_vel_on_pd.txt trimMean_y_vel_on_pd
save percentiles_y_vel_on_pd.txt percentiles_y_vel_on_pd
save moments_y_vel_on_pd.txt moments_y_vel_on_pd
save kurto_y_vel_on_pd.txt kurto_y_vel_on_pd
save ranges_y_vel_on_pd.txt ranges_y_vel_on_pd
save medians_y_vel_on_pd.txt medians_y_vel_on_pd
save modes_y_vel_on_pd.txt modes_y_vel_on_pd
save stdDevs_y_vel_on_pd.txt stdDevs_y_vel_on_pd
save robustRange_y_vel_on_pd.txt robustRange_y_vel_on_pd
save interQuartiles_y_vel_on_pd.txt interQuartiles_y_vel_on_pd

save arithMean_y_acc_on_pd.txt arithMean_y_acc_on_pd
save geoMean_y_acc_on_pd.txt geoMean_y_acc_on_pd
save trimMean_y_acc_on_pd.txt trimMean_y_acc_on_pd
save percentiles_y_acc_on_pd.txt percentiles_y_acc_on_pd
save moments_y_acc_on_pd.txt moments_y_acc_on_pd
save kurto_y_acc_on_pd.txt kurto_y_acc_on_pd
save ranges_y_acc_on_pd.txt ranges_y_acc_on_pd
save medians_y_acc_on_pd.txt medians_y_acc_on_pd
save modes_y_acc_on_pd.txt modes_y_acc_on_pd
save stdDevs_y_acc_on_pd.txt stdDevs_y_acc_on_pd
save robustRange_y_acc_on_pd.txt robustRange_y_acc_on_pd
save interQuartiles_y_acc_on_pd.txt interQuartiles_y_acc_on_pd

save arithMean_y_jerk_on_pd.txt arithMean_y_jerk_on_pd
save geoMean_y_jerk_on_pd.txt geoMean_y_jerk_on_pd
save trimMean_y_jerk_on_pd.txt trimMean_y_jerk_on_pd
save percentiles_y_jerk_on_pd.txt percentiles_y_jerk_on_pd
save moments_y_jerk_on_pd.txt moments_y_jerk_on_pd
save kurto_y_jerk_on_pd.txt kurto_y_jerk_on_pd
save ranges_y_jerk_on_pd.txt ranges_y_jerk_on_pd
save medians_y_jerk_on_pd.txt medians_y_jerk_on_pd
save modes_y_jerk_on_pd.txt modes_y_jerk_on_pd
save stdDevs_y_jerk_on_pd.txt stdDevs_y_jerk_on_pd
save robustRange_y_jerk_on_pd.txt robustRange_y_jerk_on_pd
save interQuartiles_y_jerk_on_pd.txt interQuartiles_y_jerk_on_pd


save arithMean_vel_off_pd.txt arithMean_vel_off_pd
save geoMean_vel_off_pd.txt geoMean_vel_off_pd
save trimMean_vel_off_pd.txt trimMean_vel_off_pd
save percentiles_vel_off_pd.txt percentiles_vel_off_pd
save moments_vel_off_pd.txt moments_vel_off_pd
save kurto_vel_off_pd.txt kurto_vel_off_pd
save ranges_vel_off_pd.txt ranges_vel_off_pd
save medians_vel_off_pd.txt medians_vel_off_pd
save modes_vel_off_pd.txt modes_vel_off_pd
save stdDevs_vel_off_pd.txt stdDevs_vel_off_pd
save robustRange_vel_off_pd.txt robustRange_vel_off_pd
save interQuartiles_vel_off_pd.txt interQuartiles_vel_off_pd

save arithMean_acc_off_pd.txt arithMean_acc_off_pd
save geoMean_acc_off_pd.txt geoMean_acc_off_pd
save trimMean_acc_off_pd.txt trimMean_acc_off_pd
save percentiles_acc_off_pd.txt percentiles_acc_off_pd
save moments_acc_off_pd.txt moments_acc_off_pd
save kurto_acc_off_pd.txt kurto_acc_off_pd
save ranges_acc_off_pd.txt ranges_acc_off_pd
save medians_acc_off_pd.txt medians_acc_off_pd
save modes_acc_off_pd.txt modes_acc_off_pd
save stdDevs_acc_off_pd.txt stdDevs_acc_off_pd
save robustRange_acc_off_pd.txt robustRange_acc_off_pd
save interQuartiles_acc_off_pd.txt interQuartiles_acc_off_pd

save arithMean_jerk_off_pd.txt arithMean_jerk_off_pd
save geoMean_jerk_off_pd.txt geoMean_jerk_off_pd
save trimMean_jerk_off_pd.txt trimMean_jerk_off_pd
save percentiles_jerk_off_pd.txt percentiles_jerk_off_pd
save moments_jerk_off_pd.txt moments_jerk_off_pd
save kurto_jerk_off_pd.txt kurto_jerk_off_pd
save ranges_jerk_off_pd.txt ranges_jerk_off_pd
save medians_jerk_off_pd.txt medians_jerk_off_pd
save modes_jerk_off_pd.txt modes_jerk_off_pd
save stdDevs_jerk_off_pd.txt stdDevs_jerk_off_pd
save robustRange_jerk_off_pd.txt robustRange_jerk_off_pd
save interQuartiles_jerk_off_pd.txt interQuartiles_jerk_off_pd

save arithMean_x_vel_off_pd.txt arithMean_x_vel_off_pd
save geoMean_x_vel_off_pd.txt geoMean_x_vel_off_pd
save trimMean_x_vel_off_pd.txt trimMean_x_vel_off_pd
save percentiles_x_vel_off_pd.txt percentiles_x_vel_off_pd
save moments_x_vel_off_pd.txt moments_x_vel_off_pd
save kurto_x_vel_off_pd.txt kurto_x_vel_off_pd
save ranges_x_vel_off_pd.txt ranges_x_vel_off_pd
save medians_x_vel_off_pd.txt medians_x_vel_off_pd
save modes_x_vel_off_pd.txt modes_x_vel_off_pd
save stdDevs_x_vel_off_pd.txt stdDevs_x_vel_off_pd
save robustRange_x_vel_off_pd.txt robustRange_x_vel_off_pd
save interQuartiles_x_vel_off_pd.txt interQuartiles_x_vel_off_pd

save arithMean_x_acc_off_pd.txt arithMean_x_acc_off_pd
save geoMean_x_acc_off_pd.txt geoMean_x_acc_off_pd
save trimMean_x_acc_off_pd.txt trimMean_x_acc_off_pd
save percentiles_x_acc_off_pd.txt percentiles_x_acc_off_pd
save moments_x_acc_off_pd.txt moments_x_acc_off_pd
save kurto_x_acc_off_pd.txt kurto_x_acc_off_pd
save ranges_x_acc_off_pd.txt ranges_x_acc_off_pd
save medians_x_acc_off_pd.txt medians_x_acc_off_pd
save modes_x_acc_off_pd.txt modes_x_acc_off_pd
save stdDevs_x_acc_off_pd.txt stdDevs_x_acc_off_pd
save robustRange_x_acc_off_pd.txt robustRange_x_acc_off_pd
save interQuartiles_x_acc_off_pd.txt interQuartiles_x_acc_off_pd

save arithMean_x_jerk_off_pd.txt arithMean_x_jerk_off_pd
save geoMean_x_jerk_off_pd.txt geoMean_x_jerk_off_pd
save trimMean_x_jerk_off_pd.txt trimMean_x_jerk_off_pd
save percentiles_x_jerk_off_pd.txt percentiles_x_jerk_off_pd
save moments_x_jerk_off_pd.txt moments_x_jerk_off_pd
save kurto_x_jerk_off_pd.txt kurto_x_jerk_off_pd
save ranges_x_jerk_off_pd.txt ranges_x_jerk_off_pd
save medians_x_jerk_off_pd.txt medians_x_jerk_off_pd
save modes_x_jerk_off_pd.txt modes_x_jerk_off_pd
save stdDevs_x_jerk_off_pd.txt stdDevs_x_jerk_off_pd
save robustRange_x_jerk_off_pd.txt robustRange_x_jerk_off_pd
save interQuartiles_x_jerk_off_pd.txt interQuartiles_x_jerk_off_pd

save arithMean_y_vel_off_pd.txt arithMean_y_vel_off_pd
save geoMean_y_vel_off_pd.txt geoMean_y_vel_off_pd
save trimMean_y_vel_off_pd.txt trimMean_y_vel_off_pd
save percentiles_y_vel_off_pd.txt percentiles_y_vel_off_pd
save moments_y_vel_off_pd.txt moments_y_vel_off_pd
save kurto_y_vel_off_pd.txt kurto_y_vel_off_pd
save ranges_y_vel_off_pd.txt ranges_y_vel_off_pd
save medians_y_vel_off_pd.txt medians_y_vel_off_pd
save modes_y_vel_off_pd.txt modes_y_vel_off_pd
save stdDevs_y_vel_off_pd.txt stdDevs_y_vel_off_pd
save robustRange_y_vel_off_pd.txt robustRange_y_vel_off_pd
save interQuartiles_y_vel_off_pd.txt interQuartiles_y_vel_off_pd

save arithMean_y_acc_off_pd.txt arithMean_y_acc_off_pd
save geoMean_y_acc_off_pd.txt geoMean_y_acc_off_pd
save trimMean_y_acc_off_pd.txt trimMean_y_acc_off_pd
save percentiles_y_acc_off_pd.txt percentiles_y_acc_off_pd
save moments_y_acc_off_pd.txt moments_y_acc_off_pd
save kurto_y_acc_off_pd.txt kurto_y_acc_off_pd
save ranges_y_acc_off_pd.txt ranges_y_acc_off_pd
save medians_y_acc_off_pd.txt medians_y_acc_off_pd
save modes_y_acc_off_pd.txt modes_y_acc_off_pd
save stdDevs_y_acc_off_pd.txt stdDevs_y_acc_off_pd
save robustRange_y_acc_off_pd.txt robustRange_y_acc_off_pd
save interQuartiles_y_acc_off_pd.txt interQuartiles_y_acc_off_pd

save arithMean_y_jerk_off_pd.txt arithMean_y_jerk_off_pd
save geoMean_y_jerk_off_pd.txt geoMean_y_jerk_off_pd
save trimMean_y_jerk_off_pd.txt trimMean_y_jerk_off_pd
save percentiles_y_jerk_off_pd.txt percentiles_y_jerk_off_pd
save moments_y_jerk_off_pd.txt moments_y_jerk_off_pd
save kurto_y_jerk_off_pd.txt kurto_y_jerk_off_pd
save ranges_y_jerk_off_pd.txt ranges_y_jerk_off_pd
save medians_y_jerk_off_pd.txt medians_y_jerk_off_pd
save modes_y_jerk_off_pd.txt modes_y_jerk_off_pd
save stdDevs_y_jerk_off_pd.txt stdDevs_y_jerk_off_pd
save robustRange_y_jerk_off_pd.txt robustRange_y_jerk_off_pd
save interQuartiles_y_jerk_off_pd.txt interQuartiles_y_jerk_off_pd

save arithMean_pressure_rate_pd.txt arithMean_pressure_rate_pd
save geoMean_pressure_rate_pd.txt geoMean_pressure_rate_pd
save trimMean_pressure_rate_pd.txt trimMean_pressure_rate_pd
save percentiles_pressure_rate_pd.txt percentiles_pressure_rate_pd
save moments_pressure_rate_pd.txt moments_pressure_rate_pd
save kurto_pressure_rate_pd.txt kurto_pressure_rate_pd
save ranges_pressure_rate_pd.txt ranges_pressure_rate_pd
save medians_pressure_rate_pd.txt medians_pressure_rate_pd
save modes_pressure_rate_pd.txt modes_pressure_rate_pd
save stdDevs_pressure_rate_pd.txt stdDevs_pressure_rate_pd
save robustRange_pressure_rate_pd.txt robustRange_pressure_rate_pd
save interQuartiles_pressure_rate_pd.txt interQuartiles_pressure_rate_pd

save x_shannon_pd.txt x_shannon_pd
save y_shannon_pd.txt y_shannon_pd
save x_renyi2_pd.txt x_renyi2_pd
save y_renyi2_pd.txt y_renyi2_pd
save x_renyi3_pd.txt x_renyi3_pd
save y_renyi3_pd.txt y_renyi3_pd
save snr_ce_x_pd.txt snr_ce_x_pd
save snr_ce_y_pd.txt snr_ce_y_pd
save snr_tke1_x_pd.txt snr_tke1_x_pd
save snr_tke1_y_pd.txt snr_tke1_y_pd
save snr_tke2_x_pd.txt snr_tke2_x_pd
save snr_tke2_y_pd.txt snr_tke2_y_pd
save x_shannon_i1_pd.txt x_shannon_i1_pd
save y_shannon_i1_pd.txt y_shannon_i1_pd
save x_renyi2_i1_pd.txt x_renyi2_i1_pd
save y_renyi2_i1_pd.txt y_renyi2_i1_pd
save x_renyi3_i1_pd.txt x_renyi3_i1_pd
save y_renyi3_i1_pd.txt y_renyi3_i1_pd
save x_shannon_i2_pd.txt x_shannon_i2_pd
save y_shannon_i2_pd.txt y_shannon_i2_pd
save x_renyi2_i2_pd.txt x_renyi2_i2_pd
save y_renyi2_i2_pd.txt y_renyi2_i2_pd
save x_renyi3_i2_pd.txt x_renyi3_i2_pd
save y_renyi3_i2_pd.txt y_renyi3_i2_pd



%save x_vel_on_hc.txt x_vel_on_hc
%save y_vel_on_hc.txt y_vel_on_hc
%save timeinterval_off_hc.txt timeinterval_off_hc
save speed_hc.txt speed_hc
save NCV_on_hc.txt NCV_on_hc
save NCA_on_hc.txt NCA_on_hc
save rel_NCV_on_hc.txt rel_NCV_on_hc
save rel_NCA_on_hc.txt rel_NCA_on_hc
save norm_onTime_hc.txt norm_onTime_hc
save norm_offTime_hc.txt norm_offTime_hc
save NCP_hc.txt NCP_hc
save rel_NCP_hc.txt rel_NCP_hc
save NCV_off_hc.txt NCV_off_hc
save NCA_off_hc.txt NCA_off_hc
save rel_NCV_off_hc.txt rel_NCV_off_hc
save rel_NCA_off_hc.txt rel_NCA_off_hc

save arithMean_strokespeed_hc.txt arithMean_strokespeed_hc
save geoMean_strokespeed_hc.txt geoMean_strokespeed_hc
save trimMean_strokespeed_hc.txt trimMean_strokespeed_hc
save percentiles_strokespeed_hc.txt percentiles_strokespeed_hc
save moments_strokespeed_hc.txt moments_strokespeed_hc
save kurto_strokespeed_hc.txt kurto_strokespeed_hc
save ranges_strokespeed_hc.txt ranges_strokespeed_hc
save medians_strokespeed_hc.txt medians_strokespeed_hc
save modes_strokespeed_hc.txt modes_strokespeed_hc
save stdDevs_strokespeed_hc.txt stdDevs_strokespeed_hc
save robustRange_strokespeed_hc.txt robustRange_strokespeed_hc
save interQuartiles_strokespeed_hc.txt interQuartiles_strokespeed_hc

save arithMean_vel_on_hc.txt arithMean_vel_on_hc
save geoMean_vel_on_hc.txt geoMean_vel_on_hc
save trimMean_vel_on_hc.txt trimMean_vel_on_hc
save percentiles_vel_on_hc.txt percentiles_vel_on_hc
save moments_vel_on_hc.txt moments_vel_on_hc
save kurto_vel_on_hc.txt kurto_vel_on_hc
save ranges_vel_on_hc.txt ranges_vel_on_hc
save medians_vel_on_hc.txt medians_vel_on_hc
save modes_vel_on_hc.txt modes_vel_on_hc
save stdDevs_vel_on_hc.txt stdDevs_vel_on_hc
save robustRange_vel_on_hc.txt robustRange_vel_on_hc
save interQuartiles_vel_on_hc.txt interQuartiles_vel_on_hc

save arithMean_acc_on_hc.txt arithMean_acc_on_hc
save geoMean_acc_on_hc.txt geoMean_acc_on_hc
save trimMean_acc_on_hc.txt trimMean_acc_on_hc
save percentiles_acc_on_hc.txt percentiles_acc_on_hc
save moments_acc_on_hc.txt moments_acc_on_hc
save kurto_acc_on_hc.txt kurto_acc_on_hc
save ranges_acc_on_hc.txt ranges_acc_on_hc
save medians_acc_on_hc.txt medians_acc_on_hc
save modes_acc_on_hc.txt modes_acc_on_hc
save stdDevs_acc_on_hc.txt stdDevs_acc_on_hc
save robustRange_acc_on_hc.txt robustRange_acc_on_hc
save interQuartiles_acc_on_hc.txt interQuartiles_acc_on_hc

save arithMean_jerk_on_hc.txt arithMean_jerk_on_hc
save geoMean_jerk_on_hc.txt geoMean_jerk_on_hc
save trimMean_jerk_on_hc.txt trimMean_jerk_on_hc
save percentiles_jerk_on_hc.txt percentiles_jerk_on_hc
save moments_jerk_on_hc.txt moments_jerk_on_hc
save kurto_jerk_on_hc.txt kurto_jerk_on_hc
save ranges_jerk_on_hc.txt ranges_jerk_on_hc
save medians_jerk_on_hc.txt medians_jerk_on_hc
save modes_jerk_on_hc.txt modes_jerk_on_hc
save stdDevs_jerk_on_hc.txt stdDevs_jerk_on_hc
save robustRange_jerk_on_hc.txt robustRange_jerk_on_hc
save interQuartiles_jerk_on_hc.txt interQuartiles_jerk_on_hc

save arithMean_x_vel_on_hc.txt arithMean_x_vel_on_hc
save geoMean_x_vel_on_hc.txt geoMean_x_vel_on_hc
save trimMean_x_vel_on_hc.txt trimMean_x_vel_on_hc
save percentiles_x_vel_on_hc.txt percentiles_x_vel_on_hc
save moments_x_vel_on_hc.txt moments_x_vel_on_hc
save kurto_x_vel_on_hc.txt kurto_x_vel_on_hc
save ranges_x_vel_on_hc.txt ranges_x_vel_on_hc
save medians_x_vel_on_hc.txt medians_x_vel_on_hc
save modes_x_vel_on_hc.txt modes_x_vel_on_hc
save stdDevs_x_vel_on_hc.txt stdDevs_x_vel_on_hc
save robustRange_x_vel_on_hc.txt robustRange_x_vel_on_hc
save interQuartiles_x_vel_on_hc.txt interQuartiles_x_vel_on_hc

save arithMean_x_acc_on_hc.txt arithMean_x_acc_on_hc
save geoMean_x_acc_on_hc.txt geoMean_x_acc_on_hc
save trimMean_x_acc_on_hc.txt trimMean_x_acc_on_hc
save percentiles_x_acc_on_hc.txt percentiles_x_acc_on_hc
save moments_x_acc_on_hc.txt moments_x_acc_on_hc
save kurto_x_acc_on_hc.txt kurto_x_acc_on_hc
save ranges_x_acc_on_hc.txt ranges_x_acc_on_hc
save medians_x_acc_on_hc.txt medians_x_acc_on_hc
save modes_x_acc_on_hc.txt modes_x_acc_on_hc
save stdDevs_x_acc_on_hc.txt stdDevs_x_acc_on_hc
save robustRange_x_acc_on_hc.txt robustRange_x_acc_on_hc
save interQuartiles_x_acc_on_hc.txt interQuartiles_x_acc_on_hc

save arithMean_x_jerk_on_hc.txt arithMean_x_jerk_on_hc
save geoMean_x_jerk_on_hc.txt geoMean_x_jerk_on_hc
save trimMean_x_jerk_on_hc.txt trimMean_x_jerk_on_hc
save percentiles_x_jerk_on_hc.txt percentiles_x_jerk_on_hc
save moments_x_jerk_on_hc.txt moments_x_jerk_on_hc
save kurto_x_jerk_on_hc.txt kurto_x_jerk_on_hc
save ranges_x_jerk_on_hc.txt ranges_x_jerk_on_hc
save medians_x_jerk_on_hc.txt medians_x_jerk_on_hc
save modes_x_jerk_on_hc.txt modes_x_jerk_on_hc
save stdDevs_x_jerk_on_hc.txt stdDevs_x_jerk_on_hc
save robustRange_x_jerk_on_hc.txt robustRange_x_jerk_on_hc
save interQuartiles_x_jerk_on_hc.txt interQuartiles_x_jerk_on_hc

save arithMean_y_vel_on_hc.txt arithMean_y_vel_on_hc
save geoMean_y_vel_on_hc.txt geoMean_y_vel_on_hc
save trimMean_y_vel_on_hc.txt trimMean_y_vel_on_hc
save percentiles_y_vel_on_hc.txt percentiles_y_vel_on_hc
save moments_y_vel_on_hc.txt moments_y_vel_on_hc
save kurto_y_vel_on_hc.txt kurto_y_vel_on_hc
save ranges_y_vel_on_hc.txt ranges_y_vel_on_hc
save medians_y_vel_on_hc.txt medians_y_vel_on_hc
save modes_y_vel_on_hc.txt modes_y_vel_on_hc
save stdDevs_y_vel_on_hc.txt stdDevs_y_vel_on_hc
save robustRange_y_vel_on_hc.txt robustRange_y_vel_on_hc
save interQuartiles_y_vel_on_hc.txt interQuartiles_y_vel_on_hc

save arithMean_y_acc_on_hc.txt arithMean_y_acc_on_hc
save geoMean_y_acc_on_hc.txt geoMean_y_acc_on_hc
save trimMean_y_acc_on_hc.txt trimMean_y_acc_on_hc
save percentiles_y_acc_on_hc.txt percentiles_y_acc_on_hc
save moments_y_acc_on_hc.txt moments_y_acc_on_hc
save kurto_y_acc_on_hc.txt kurto_y_acc_on_hc
save ranges_y_acc_on_hc.txt ranges_y_acc_on_hc
save medians_y_acc_on_hc.txt medians_y_acc_on_hc
save modes_y_acc_on_hc.txt modes_y_acc_on_hc
save stdDevs_y_acc_on_hc.txt stdDevs_y_acc_on_hc
save robustRange_y_acc_on_hc.txt robustRange_y_acc_on_hc
save interQuartiles_y_acc_on_hc.txt interQuartiles_y_acc_on_hc

save arithMean_y_jerk_on_hc.txt arithMean_y_jerk_on_hc
save geoMean_y_jerk_on_hc.txt geoMean_y_jerk_on_hc
save trimMean_y_jerk_on_hc.txt trimMean_y_jerk_on_hc
save percentiles_y_jerk_on_hc.txt percentiles_y_jerk_on_hc
save moments_y_jerk_on_hc.txt moments_y_jerk_on_hc
save kurto_y_jerk_on_hc.txt kurto_y_jerk_on_hc
save ranges_y_jerk_on_hc.txt ranges_y_jerk_on_hc
save medians_y_jerk_on_hc.txt medians_y_jerk_on_hc
save modes_y_jerk_on_hc.txt modes_y_jerk_on_hc
save stdDevs_y_jerk_on_hc.txt stdDevs_y_jerk_on_hc
save robustRange_y_jerk_on_hc.txt robustRange_y_jerk_on_hc
save interQuartiles_y_jerk_on_hc.txt interQuartiles_y_jerk_on_hc


save arithMean_vel_off_hc.txt arithMean_vel_off_hc
save geoMean_vel_off_hc.txt geoMean_vel_off_hc
save trimMean_vel_off_hc.txt trimMean_vel_off_hc
save percentiles_vel_off_hc.txt percentiles_vel_off_hc
save moments_vel_off_hc.txt moments_vel_off_hc
save kurto_vel_off_hc.txt kurto_vel_off_hc
save ranges_vel_off_hc.txt ranges_vel_off_hc
save medians_vel_off_hc.txt medians_vel_off_hc
save modes_vel_off_hc.txt modes_vel_off_hc
save stdDevs_vel_off_hc.txt stdDevs_vel_off_hc
save robustRange_vel_off_hc.txt robustRange_vel_off_hc
save interQuartiles_vel_off_hc.txt interQuartiles_vel_off_hc

save arithMean_acc_off_hc.txt arithMean_acc_off_hc
save geoMean_acc_off_hc.txt geoMean_acc_off_hc
save trimMean_acc_off_hc.txt trimMean_acc_off_hc
save percentiles_acc_off_hc.txt percentiles_acc_off_hc
save moments_acc_off_hc.txt moments_acc_off_hc
save kurto_acc_off_hc.txt kurto_acc_off_hc
save ranges_acc_off_hc.txt ranges_acc_off_hc
save medians_acc_off_hc.txt medians_acc_off_hc
save modes_acc_off_hc.txt modes_acc_off_hc
save stdDevs_acc_off_hc.txt stdDevs_acc_off_hc
save robustRange_acc_off_hc.txt robustRange_acc_off_hc
save interQuartiles_acc_off_hc.txt interQuartiles_acc_off_hc

save arithMean_jerk_off_hc.txt arithMean_jerk_off_hc
save geoMean_jerk_off_hc.txt geoMean_jerk_off_hc
save trimMean_jerk_off_hc.txt trimMean_jerk_off_hc
save percentiles_jerk_off_hc.txt percentiles_jerk_off_hc
save moments_jerk_off_hc.txt moments_jerk_off_hc
save kurto_jerk_off_hc.txt kurto_jerk_off_hc
save ranges_jerk_off_hc.txt ranges_jerk_off_hc
save medians_jerk_off_hc.txt medians_jerk_off_hc
save modes_jerk_off_hc.txt modes_jerk_off_hc
save stdDevs_jerk_off_hc.txt stdDevs_jerk_off_hc
save robustRange_jerk_off_hc.txt robustRange_jerk_off_hc
save interQuartiles_jerk_off_hc.txt interQuartiles_jerk_off_hc

save arithMean_x_vel_off_hc.txt arithMean_x_vel_off_hc
save geoMean_x_vel_off_hc.txt geoMean_x_vel_off_hc
save trimMean_x_vel_off_hc.txt trimMean_x_vel_off_hc
save percentiles_x_vel_off_hc.txt percentiles_x_vel_off_hc
save moments_x_vel_off_hc.txt moments_x_vel_off_hc
save kurto_x_vel_off_hc.txt kurto_x_vel_off_hc
save ranges_x_vel_off_hc.txt ranges_x_vel_off_hc
save medians_x_vel_off_hc.txt medians_x_vel_off_hc
save modes_x_vel_off_hc.txt modes_x_vel_off_hc
save stdDevs_x_vel_off_hc.txt stdDevs_x_vel_off_hc
save robustRange_x_vel_off_hc.txt robustRange_x_vel_off_hc
save interQuartiles_x_vel_off_hc.txt interQuartiles_x_vel_off_hc

save arithMean_x_acc_off_hc.txt arithMean_x_acc_off_hc
save geoMean_x_acc_off_hc.txt geoMean_x_acc_off_hc
save trimMean_x_acc_off_hc.txt trimMean_x_acc_off_hc
save percentiles_x_acc_off_hc.txt percentiles_x_acc_off_hc
save moments_x_acc_off_hc.txt moments_x_acc_off_hc
save kurto_x_acc_off_hc.txt kurto_x_acc_off_hc
save ranges_x_acc_off_hc.txt ranges_x_acc_off_hc
save medians_x_acc_off_hc.txt medians_x_acc_off_hc
save modes_x_acc_off_hc.txt modes_x_acc_off_hc
save stdDevs_x_acc_off_hc.txt stdDevs_x_acc_off_hc
save robustRange_x_acc_off_hc.txt robustRange_x_acc_off_hc
save interQuartiles_x_acc_off_hc.txt interQuartiles_x_acc_off_hc

save arithMean_x_jerk_off_hc.txt arithMean_x_jerk_off_hc
save geoMean_x_jerk_off_hc.txt geoMean_x_jerk_off_hc
save trimMean_x_jerk_off_hc.txt trimMean_x_jerk_off_hc
save percentiles_x_jerk_off_hc.txt percentiles_x_jerk_off_hc
save moments_x_jerk_off_hc.txt moments_x_jerk_off_hc
save kurto_x_jerk_off_hc.txt kurto_x_jerk_off_hc
save ranges_x_jerk_off_hc.txt ranges_x_jerk_off_hc
save medians_x_jerk_off_hc.txt medians_x_jerk_off_hc
save modes_x_jerk_off_hc.txt modes_x_jerk_off_hc
save stdDevs_x_jerk_off_hc.txt stdDevs_x_jerk_off_hc
save robustRange_x_jerk_off_hc.txt robustRange_x_jerk_off_hc
save interQuartiles_x_jerk_off_hc.txt interQuartiles_x_jerk_off_hc

save arithMean_y_vel_off_hc.txt arithMean_y_vel_off_hc
save geoMean_y_vel_off_hc.txt geoMean_y_vel_off_hc
save trimMean_y_vel_off_hc.txt trimMean_y_vel_off_hc
save percentiles_y_vel_off_hc.txt percentiles_y_vel_off_hc
save moments_y_vel_off_hc.txt moments_y_vel_off_hc
save kurto_y_vel_off_hc.txt kurto_y_vel_off_hc
save ranges_y_vel_off_hc.txt ranges_y_vel_off_hc
save medians_y_vel_off_hc.txt medians_y_vel_off_hc
save modes_y_vel_off_hc.txt modes_y_vel_off_hc
save stdDevs_y_vel_off_hc.txt stdDevs_y_vel_off_hc
save robustRange_y_vel_off_hc.txt robustRange_y_vel_off_hc
save interQuartiles_y_vel_off_hc.txt interQuartiles_y_vel_off_hc

save arithMean_y_acc_off_hc.txt arithMean_y_acc_off_hc
save geoMean_y_acc_off_hc.txt geoMean_y_acc_off_hc
save trimMean_y_acc_off_hc.txt trimMean_y_acc_off_hc
save percentiles_y_acc_off_hc.txt percentiles_y_acc_off_hc
save moments_y_acc_off_hc.txt moments_y_acc_off_hc
save kurto_y_acc_off_hc.txt kurto_y_acc_off_hc
save ranges_y_acc_off_hc.txt ranges_y_acc_off_hc
save medians_y_acc_off_hc.txt medians_y_acc_off_hc
save modes_y_acc_off_hc.txt modes_y_acc_off_hc
save stdDevs_y_acc_off_hc.txt stdDevs_y_acc_off_hc
save robustRange_y_acc_off_hc.txt robustRange_y_acc_off_hc
save interQuartiles_y_acc_off_hc.txt interQuartiles_y_acc_off_hc

save arithMean_y_jerk_off_hc.txt arithMean_y_jerk_off_hc
save geoMean_y_jerk_off_hc.txt geoMean_y_jerk_off_hc
save trimMean_y_jerk_off_hc.txt trimMean_y_jerk_off_hc
save percentiles_y_jerk_off_hc.txt percentiles_y_jerk_off_hc
save moments_y_jerk_off_hc.txt moments_y_jerk_off_hc
save kurto_y_jerk_off_hc.txt kurto_y_jerk_off_hc
save ranges_y_jerk_off_hc.txt ranges_y_jerk_off_hc
save medians_y_jerk_off_hc.txt medians_y_jerk_off_hc
save modes_y_jerk_off_hc.txt modes_y_jerk_off_hc
save stdDevs_y_jerk_off_hc.txt stdDevs_y_jerk_off_hc
save robustRange_y_jerk_off_hc.txt robustRange_y_jerk_off_hc
save interQuartiles_y_jerk_off_hc.txt interQuartiles_y_jerk_off_hc

save arithMean_pressure_rate_hc.txt arithMean_pressure_rate_hc
save geoMean_pressure_rate_hc.txt geoMean_pressure_rate_hc
save trimMean_pressure_rate_hc.txt trimMean_pressure_rate_hc
save percentiles_pressure_rate_hc.txt percentiles_pressure_rate_hc
save moments_pressure_rate_hc.txt moments_pressure_rate_hc
save kurto_pressure_rate_hc.txt kurto_pressure_rate_hc
save ranges_pressure_rate_hc.txt ranges_pressure_rate_hc
save medians_pressure_rate_hc.txt medians_pressure_rate_hc
save modes_pressure_rate_hc.txt modes_pressure_rate_hc
save stdDevs_pressure_rate_hc.txt stdDevs_pressure_rate_hc
save robustRange_pressure_rate_hc.txt robustRange_pressure_rate_hc
save interQuartiles_pressure_rate_hc.txt interQuartiles_pressure_rate_hc

save x_shannon_hc.txt x_shannon_hc
save y_shannon_hc.txt y_shannon_hc
save x_renyi2_hc.txt x_renyi2_hc
save y_renyi2_hc.txt y_renyi2_hc
save x_renyi3_hc.txt x_renyi3_hc
save y_renyi3_hc.txt y_renyi3_hc
save snr_ce_x_hc.txt snr_ce_x_hc
save snr_ce_y_hc.txt snr_ce_y_hc
save snr_tke1_x_hc.txt snr_tke1_x_hc
save snr_tke1_y_hc.txt snr_tke1_y_hc
save snr_tke2_x_hc.txt snr_tke2_x_hc
save snr_tke2_y_hc.txt snr_tke2_y_hc
save x_shannon_i1_hc.txt x_shannon_i1_hc
save y_shannon_i1_hc.txt y_shannon_i1_hc
save x_renyi2_i1_hc.txt x_renyi2_i1_hc
save y_renyi2_i1_hc.txt y_renyi2_i1_hc
save x_renyi3_i1_hc.txt x_renyi3_i1_hc
save y_renyi3_i1_hc.txt y_renyi3_i1_hc
save x_shannon_i2_hc.txt x_shannon_i2_hc
save y_shannon_i2_hc.txt y_shannon_i2_hc
save x_renyi2_i2_hc.txt x_renyi2_i2_hc
save y_renyi2_i2_hc.txt y_renyi2_i2_hc
save x_renyi3_i2_hc.txt x_renyi3_i2_hc
save y_renyi3_i2_hc.txt y_renyi3_i2_hc 
  
