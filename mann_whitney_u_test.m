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

pressure_rate_pd=[];
pressure_rate_hc=[];
x_vel_on_pd=[];
x_vel_on_hc=[];
y_vel_on_pd=[];
y_vel_on_hc=[];
time_interval_off_pd=[];
time_interval_off_hc=[];
speed_pd=[];
speed_hc=[];
ncv_on_pd=[];
ncv_on_hc=[];
nca_on_pd=[];
nca_on_hc=[];
rel_NCV_on_pd=[];
rel_NCV_on_hc=[];
rel_NCA_on_pd=[];
rel_NCA_on_hc=[];
norm_onTime_pd=[];
norm_onTime_hc=[];
ncp_pd=[];
ncp_hc=[];
rel_NCP_pd=[];
rel_NCP_hc=[];
ncv_off_pd=[];
ncv_off_hc=[];
nca_off_pd=[];
nca_off_hc=[];
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
"00055__1_1.svc";"00074__1_1.svc";"00075__1_1.svc";"00077__1_1.svc";"00078__1_1.svc";"00080__1_1.svc";"00098__1_1.svc";

"00026__1_1.svc";"00027__1_1.svc";"00028__1_1.svc";"00029__1_1.svc";"00030__1_1.svc";"00031__1_1.svc";"00032__1_1.svc";"00039__1_1.svc";"00040__1_1.svc";
"00041__1_1.svc";"00049__1_1.svc";"00051__1_1.svc";"00052__1_1.svc";"00057__1_1.svc";"00060__1_1.svc";"00061__1_1.svc";"00062__1_1.svc";"00066__1_1.svc";
"00067__1_1.svc";"00069__1_1.svc";"00070__1_1.svc";"00071__1_1.svc";"00072__1_1.svc";"00073__1_1.svc";"00076__1_1.svc";"00082__1_1.svc";"00083__1_1.svc";
"00084__1_1.svc";"00085__1_1.svc";"00087__1_1.svc";"00089__1_1.svc";"00090__1_1.svc";"00091__1_1.svc";"00092__1_1.svc";"00094__1_1.svc";
"00095__1_1.svc";"00096__1_1.svc";"00097__1_1.svc"];

for k=1:length(filename)
 
  %--------------------------------------PD------------------------------------------------------------%
  if(k<38)
  
  %disp(filename(k,:));
  
  [pressure_rate,x_vel_on,y_vel_on,time_interval_on,time_interval_off,speed,ncv_on,nca_on,rel_NCV_on,rel_NCA_on,norm_onTime,ncp,rel_NCP,ncv_off,nca_off,rel_NCV_off,rel_NCA_off,norm_offTime,off_onTime,arithMean,geoMean,trimMean,percentiles,moments,kurto,ranges,medians,modes,stdDevs,robustRange,interQuartiles,x_shannon,y_shannon,x_renyi2,y_renyi2,x_renyi3,y_renyi3,snr_ce_x,snr_ce_y,snr_tke1_x,snr_tke1_y,x_shannon_i1,y_shannon_i1,x_renyi2_i1,y_renyi2_i1,x_renyi3_i1,y_renyi3_i1,x_shannon_i2,y_shannon_i2,x_renyi2_i2,y_renyi2_i2,x_renyi3_i2,y_renyi3_i2,snr_ice_x,snr_ice_y,snr_itke1_x,snr_itke1_y,snr_itke2_x,snr_itke2_y]=kinematic_features(filename(k,:));
  
  pressure_rate_pd=[pressure_rate_pd;pressure_rate];
  x_vel_on_pd=[x_vel_on_pd;x_vel_on];
  y_vel_on_pd=[y_vel_on_pd;y_vel_on];
  time_interval_off_pd=[time_interval_off_pd;time_interval_off];
  speed_pd=[speed_pd;speed];
  ncv_on_pd=[ncv_on_pd;ncv_on];
  nca_on_pd=[nca_on_pd;nca_on];
  rel_NCV_on_pd=[rel_NCV_on_pd;rel_NCV_on];
  rel_NCA_on_pd=[rel_NCA_on_pd;rel_NCA_on];
  norm_onTime_pd=[norm_onTime_pd;norm_onTime];
  ncp_pd=[ncp_pd;ncp];
  rel_NCP_pd=[rel_NCP_pd;rel_NCP];
  ncv_off_pd=[ncv_off_pd;ncv_off];
  nca_off_pd=[nca_off_pd;nca_off];
  rel_NCV_off_pd=[rel_NCV_off_pd;rel_NCV_off];
  rel_NCA_off_pd=[rel_NCA_off_pd;rel_NCA_off];
  norm_offTime_pd=[norm_offTime_pd;norm_offTime];
  off_onTime_pd=[off_onTime_pd;off_onTime];

arithMean_strokespeed_pd=[arithMean_strokespeed_pd;arithMean(1)];
geoMean_strokespeed_pd=[geoMean_strokespeed_pd;geoMean(1)];
trimMean_strokespeed_pd=[trimMean_strokespeed_pd;trimMean(1)];
percentiles_strokespeed_pd=[percentiles_strokespeed_pd;percentiles(1)];
moments_strokespeed_pd=[moments_strokespeed_pd;moments(1)];
kurto_strokespeed_pd=[kurto_strokespeed_pd;kurto(1)];
ranges_strokespeed_pd=[ranges_strokespeed_pd;ranges(1)];
medians_strokespeed_pd=[medians_strokespeed_pd;medians(1)];
modes_strokespeed_pd=[modes_strokespeed_pd;modes(1)];
stdDevs_strokespeed_pd=[stdDevs_strokespeed_pd;stdDevs(1)];
robustRange_strokespeed_pd=[robustRange_strokespeed_pd;robustRange(1)];
interQuartiles_strokespeed_pd=[interQuartiles_strokespeed_pd;interQuartiles(1)];

arithMean_vel_on_pd=[arithMean_vel_on_pd;arithMean(2)];
geoMean_vel_on_pd=[geoMean_vel_on_pd;geoMean(2)];
trimMean_vel_on_pd=[trimMean_vel_on_pd;trimMean(2)];
percentiles_vel_on_pd=[percentiles_vel_on_pd;percentiles(2)];
moments_vel_on_pd=[moments_vel_on_pd;moments(2)];
kurto_vel_on_pd=[kurto_vel_on_pd;kurto(2)];
ranges_vel_on_pd=[ranges_vel_on_pd;ranges(2)];
medians_vel_on_pd=[medians_vel_on_pd;medians(2)];
modes_vel_on_pd=[modes_vel_on_pd;modes(2)];
stdDevs_vel_on_pd=[stdDevs_vel_on_pd;stdDevs(2)];
robustRange_vel_on_pd=[robustRange_vel_on_pd;robustRange(2)];
interQuartiles_vel_on_pd=[interQuartiles_vel_on_pd;interQuartiles(2)];


%arithMean_vel_off_pd=[arithMean_vel_off_pd;arithMean(3)];
%geoMean_vel_off_pd=[geoMean_vel_off_pd;geoMean(3)];
%trimMean_vel_off_pd=[trimMean_vel_off_pd;trimMean(3)];
%percentiles_vel_off_pd=[percentiles_vel_off_pd;percentiles(3)];
%moments_vel_off_pd=[moments_vel_off_pd;moments(3)];
%kurto_vel_off_pd=[kurto_vel_off_pd;kurto(3)];
%ranges_vel_off_pd=[ranges_vel_off_pd;ranges(3)];
%medians_vel_off_pd=[medians_vel_off_pd;medians(3)];
%modes_vel_off_pd=[modes_vel_off_pd;modes(3)];
%stdDevs_vel_off_pd=[stdDevs_vel_off_pd;stdDevs(3)];
%robustRange_vel_off_pd=[robustRange_vel_off_pd;robustRange(3)];
%interQuartiles_vel_off_pd=[interQuartiles_vel_off_pd;interQuartiles(3)];

arithMean_acc_on_pd=[arithMean_acc_on_pd;arithMean(4)];
geoMean_acc_on_pd=[geoMean_acc_on_pd;geoMean(4)];
trimMean_acc_on_pd=[trimMean_acc_on_pd;trimMean(4)];
percentiles_acc_on_pd=[percentiles_acc_on_pd;percentiles(4)];
moments_acc_on_pd=[moments_acc_on_pd;moments(4)];
kurto_acc_on_pd=[kurto_acc_on_pd;kurto(4)];
ranges_acc_on_pd=[ranges_acc_on_pd;ranges(4)];
medians_acc_on_pd=[medians_acc_on_pd;medians(4)];
modes_acc_on_pd=[modes_acc_on_pd;modes(4)];
stdDevs_acc_on_pd=[stdDevs_acc_on_pd;stdDevs(4)];
robustRange_acc_on_pd=[robustRange_acc_on_pd;robustRange(4)];
interQuartiles_acc_on_pd=[interQuartiles_acc_on_pd;interQuartiles(4)];


%arithMean_acc_off_pd=[arithMean_acc_off_pd;arithMean(5)];
%geoMean_acc_off_pd=[geoMean_acc_off_pd;geoMean(5)];
%trimMean_acc_off_pd=[trimMean_acc_off_pd;trimMean(5)];
%percentiles_acc_off_pd=[percentiles_acc_off_pd;percentiles(5)];
%moments_acc_off_pd=[moments_acc_off_pd;moments(5)];
%kurto_acc_off_pd=[kurto_acc_off_pd;kurto(5)];
%ranges_acc_off_pd=[ranges_acc_off_pd;ranges(5)];
%medians_acc_off_pd=[medians_acc_off_pd;medians(5)];
%modes_acc_off_pd=[modes_acc_off_pd;modes(5)];
%stdDevs_acc_off_pd=[stdDevs_acc_off_pd;stdDevs(5)];
%robustRange_acc_off_pd=[robustRange_acc_off_pd;robustRange(5)];
%interQuartiles_acc_off_pd=[interQuartiles_acc_off_pd;interQuartiles(5)];

arithMean_jerk_on_pd=[arithMean_jerk_on_pd;arithMean(6)];
geoMean_jerk_on_pd=[geoMean_jerk_on_pd;geoMean(6)];
trimMean_jerk_on_pd=[trimMean_jerk_on_pd;trimMean(6)];
percentiles_jerk_on_pd=[percentiles_jerk_on_pd;percentiles(6)];
moments_jerk_on_pd=[moments_jerk_on_pd;moments(6)];
kurto_jerk_on_pd=[kurto_jerk_on_pd;kurto(6)];
ranges_jerk_on_pd=[ranges_jerk_on_pd;ranges(6)];
medians_jerk_on_pd=[medians_jerk_on_pd;medians(6)];
modes_jerk_on_pd=[modes_jerk_on_pd;modes(6)];
stdDevs_jerk_on_pd=[stdDevs_jerk_on_pd;stdDevs(6)];
robustRange_jerk_on_pd=[robustRange_jerk_on_pd;robustRange(6)];
interQuartiles_jerk_on_pd=[interQuartiles_jerk_on_pd;interQuartiles(6)];


%arithMean_jerk_off_pd=[arithMean_jerk_off_pd;arithMean(7)];
%geoMean_jerk_off_pd=[geoMean_jerk_off_pd;geoMean(7)];
%trimMean_jerk_off_pd=[trimMean_jerk_off_pd;trimMean(7)];
%percentiles_jerk_off_pd=[percentiles_jerk_off_pd;percentiles(7)];
%moments_jerk_off_pd=[moments_jerk_off_pd;moments(7)];
%kurto_jerk_off_pd=[kurto_jerk_off_pd;kurto(7)];
%ranges_jerk_off_pd=[ranges_jerk_off_pd;ranges(7)];
%medians_jerk_off_pd=[medians_jerk_off_pd;medians(7)];
%modes_jerk_off_pd=[modes_jerk_off_pd;modes(7)];
%stdDevs_jerk_off_pd=[stdDevs_jerk_off_pd;stdDevs(7)];
%robustRange_jerk_off_pd=[robustRange_jerk_off_pd;robustRange(7)];
%interQuartiles_jerk_off_pd=[interQuartiles_jerk_off_pd;interQuartiles(7)];

arithMean_x_vel_on_pd=[arithMean_x_vel_on_pd;arithMean(8)];
geoMean_x_vel_on_pd=[geoMean_x_vel_on_pd;geoMean(8)];
trimMean_x_vel_on_pd=[trimMean_x_vel_on_pd;trimMean(8)];
percentiles_x_vel_on_pd=[percentiles_x_vel_on_pd;percentiles(8)];
moments_x_vel_on_pd=[moments_x_vel_on_pd;moments(8)];
kurto_x_vel_on_pd=[kurto_x_vel_on_pd;kurto(8)];
ranges_x_vel_on_pd=[ranges_x_vel_on_pd;ranges(8)];
medians_x_vel_on_pd=[medians_x_vel_on_pd;medians(8)];
modes_x_vel_on_pd=[modes_x_vel_on_pd;modes(8)];
stdDevs_x_vel_on_pd=[stdDevs_x_vel_on_pd;stdDevs(8)];
robustRange_x_vel_on_pd=[robustRange_x_vel_on_pd;robustRange(8)];
interQuartiles_x_vel_on_pd=[interQuartiles_x_vel_on_pd;interQuartiles(8)];

arithMean_x_acc_on_pd=[arithMean_x_acc_on_pd;arithMean(9)];
geoMean_x_acc_on_pd=[geoMean_x_acc_on_pd;geoMean(9)];
trimMean_x_acc_on_pd=[trimMean_x_acc_on_pd;trimMean(9)];
percentiles_x_acc_on_pd=[percentiles_x_acc_on_pd;percentiles(9)];
moments_x_acc_on_pd=[moments_x_acc_on_pd;moments(9)];
kurto_x_acc_on_pd=[kurto_x_acc_on_pd;kurto(9)];
ranges_x_acc_on_pd=[ranges_x_acc_on_pd;ranges(9)];
medians_x_acc_on_pd=[medians_x_acc_on_pd;medians(9)];
modes_x_acc_on_pd=[modes_x_acc_on_pd;modes(9)];
stdDevs_x_acc_on_pd=[stdDevs_x_acc_on_pd;stdDevs(9)];
robustRange_x_acc_on_pd=[robustRange_x_acc_on_pd;robustRange(9)];
interQuartiles_x_acc_on_pd=[interQuartiles_x_acc_on_pd;interQuartiles(9)];

arithMean_x_jerk_on_pd=[arithMean_x_jerk_on_pd;arithMean(10)];
geoMean_x_jerk_on_pd=[geoMean_x_jerk_on_pd;geoMean(10)];
trimMean_x_jerk_on_pd=[trimMean_x_jerk_on_pd;trimMean(10)];
percentiles_x_jerk_on_pd=[percentiles_x_jerk_on_pd;percentiles(10)];
moments_x_jerk_on_pd=[moments_x_jerk_on_pd;moments(10)];
kurto_x_jerk_on_pd=[kurto_x_jerk_on_pd;kurto(10)];
ranges_x_jerk_on_pd=[ranges_x_jerk_on_pd;ranges(10)];
medians_x_jerk_on_pd=[medians_x_jerk_on_pd;medians(10)];
modes_x_jerk_on_pd=[modes_x_jerk_on_pd;modes(10)];
stdDevs_x_jerk_on_pd=[stdDevs_x_jerk_on_pd;stdDevs(10)];
robustRange_x_jerk_on_pd=[robustRange_x_jerk_on_pd;robustRange(10)];
interQuartiles_x_jerk_on_pd=[interQuartiles_x_jerk_on_pd;interQuartiles(10)];

arithMean_y_vel_on_pd=[arithMean_y_vel_on_pd;arithMean(11)];
geoMean_y_vel_on_pd=[geoMean_y_vel_on_pd;geoMean(11)];
trimMean_y_vel_on_pd=[trimMean_y_vel_on_pd;trimMean(11)];
percentiles_y_vel_on_pd=[percentiles_y_vel_on_pd;percentiles(11)];
moments_y_vel_on_pd=[moments_y_vel_on_pd;moments(11)];
kurto_y_vel_on_pd=[kurto_y_vel_on_pd;kurto(11)];
ranges_y_vel_on_pd=[ranges_y_vel_on_pd;ranges(11)];
medians_y_vel_on_pd=[medians_y_vel_on_pd;medians(11)];
modes_y_vel_on_pd=[modes_y_vel_on_pd;modes(11)];
stdDevs_y_vel_on_pd=[stdDevs_y_vel_on_pd;stdDevs(11)];
robustRange_y_vel_on_pd=[robustRange_y_vel_on_pd;robustRange(11)];
interQuartiles_y_vel_on_pd=[interQuartiles_y_vel_on_pd;interQuartiles_y_vel_on(11)];

arithMean_y_acc_on_pd=[arithMean_y_acc_on_pd;arithMean(12)];
geoMean_y_acc_on_pd=[geoMean_y_acc_on_pd;geoMean(12)];
trimMean_y_acc_on_pd=[trimMean_y_acc_on_pd;trimMean(12)];
percentiles_y_acc_on_pd=[percentiles_y_acc_on_pd;percentiles(12)];
moments_y_acc_on_pd=[moments_y_acc_on_pd;moments(12)];
kurto_y_acc_on_pd=[kurto_y_acc_on_pd;kurto(12)];
ranges_y_acc_on_pd=[ranges_y_acc_on_pd;ranges(12)];
medians_y_acc_on_pd=[medians_y_acc_on_pd;medians(12)];
modes_y_acc_on_pd=[modes_y_acc_on_pd;modes(12)];
stdDevs_y_acc_on_pd=[stdDevs_y_acc_on_pd;stdDevs(12)];
robustRange_y_acc_on_pd=[robustRange_y_acc_on_pd;robustRange(12)];
interQuartiles_y_acc_on_pd=[interQuartiles_y_acc_on_pd;interQuartiles(12)];

arithMean_y_jerk_on_pd=[arithMean_y_jerk_on_pd;arithMean(13)];
geoMean_y_jerk_on_pd=[geoMean_y_jerk_on_pd;geoMean(13)];
trimMean_y_jerk_on_pd=[trimMean_y_jerk_on_pd;trimMean(13)];
percentiles_y_jerk_on_pd=[percentiles_y_jerk_on_pd;percentiles(13)];
moments_y_jerk_on_pd=[moments_y_jerk_on_pd;moments(13)];
kurto_y_jerk_on_pd=[kurto_y_jerk_on_pd;kurto(13)];
ranges_y_jerk_on_pd=[ranges_y_jerk_on_pd;ranges(13)];
medians_y_jerk_on_pd=[medians_y_jerk_on_pd;medians(13)];
modes_y_jerk_on_pd=[modes_y_jerk_on_pd;modes(13)];
stdDevs_y_jerk_on_pd=[stdDevs_y_jerk_on_pd;stdDevs(13)];
robustRange_y_jerk_on_pd=[robustRange_y_jerk_on_pd;robustRange(13)];
interQuartiles_y_jerk_on_pd=[interQuartiles_y_jerk_on_pd;interQuartiles(13)];

%arithMean_x_vel_off_pd=[arithMean_x_vel_off_pd;arithMean(14)];
%geoMean_x_vel_off_pd=[geoMean_x_vel_off_pd;geoMean(14)];
%trimMean_x_vel_off_pd=[trimMean_x_vel_off_pd;trimMean(14)];
%percentiles_x_vel_off_pd=[percentiles_x_vel_off_pd;percentiles(14)];
%moments_x_vel_off_pd=[moments_x_vel_off_pd;moments(14)];
%kurto_x_vel_off_pd=[kurto_x_vel_off_pd;kurto(14)];
%ranges_x_vel_off_pd=[ranges_x_vel_off_pd;ranges(14)];
%medians_x_vel_off_pd=[medians_x_vel_off_pd;medians(14)];
%modes_x_vel_off_pd=[modes_x_vel_off_pd;modes(14)];
%stdDevs_x_vel_off_pd=[stdDevs_x_vel_off_pd;stdDevs(14)];
%robustRange_x_vel_off_pd=[robustRange_x_vel_off_pd;robustRange(14)];
%interQuartiles_x_vel_off_pd=[interQuartiles_x_vel_off_pd;interQuartiles(14)];

%arithMean_x_acc_off_pd=[arithMean_x_acc_off_pd;arithMean(15)];
%geoMean_x_acc_off_pd=[geoMean_x_acc_off_pd;geoMean(15)];
%trimMean_x_acc_off_pd=[trimMean_x_acc_off_pd;trimMean(15)];
%percentiles_x_acc_off_pd=[percentiles_x_acc_off_pd;percentiles(15)];
%moments_x_acc_off_pd=[moments_x_acc_off_pd;moments(15)];
%kurto_x_acc_off_pd=[kurto_x_acc_off_pd;kurto(15)];
%ranges_x_acc_off_pd=[ranges_x_acc_off_pd;ranges(15)];
%medians_x_acc_off_pd=[medians_x_acc_off_pd;medians(15)];
%modes_x_acc_off_pd=[modes_x_acc_off_pd;modes(15)];
%stdDevs_x_acc_off_pd=[stdDevs_x_acc_off_pd;stdDevs(15)];
%robustRange_x_acc_off_pd=[robustRange_x_acc_off_pd;robustRange(15)];
%interQuartiles_x_acc_off_pd=[interQuartiles_x_acc_off_pd;interQuartiles(15)];

%arithMean_x_jerk_off_pd=[arithMean_x_jerk_off_pd;arithMean(16)];
%geoMean_x_jerk_off_pd=[geoMean_x_jerk_off_pd;geoMean(16)];
%trimMean_x_jerk_off_pd=[trimMean_x_jerk_off_pd;trimMean(16)];
%percentiles_x_jerk_off_pd=[percentiles_x_jerk_off_pd;percentiles(16)];
%moments_x_jerk_off_pd=[moments_x_jerk_off_pd;moments(16)];
%kurto_x_jerk_off_pd=[kurto_x_jerk_off_pd;kurto(16)];
%ranges_x_jerk_off_pd=[ranges_x_jerk_off_pd;ranges(16)];
%medians_x_jerk_off_pd=[medians_x_jerk_off_pd;medians(16)];
%modes_x_jerk_off_pd=[modes_x_jerk_off_pd;modes(16)];
%stdDevs_x_jerk_off_pd=[stdDevs_x_jerk_off_pd;stdDevs(16)];
%robustRange_x_jerk_off_pd=[robustRange_x_jerk_off_pd;robustRange(16)];
%interQuartiles_x_jerk_off_pd=[interQuartiles_x_jerk_off_pd;interQuartiles(16)];

%arithMean_y_vel_off_pd=[arithMean_y_vel_off_pd;arithMean(17)];
%geoMean_y_vel_off_pd=[geoMean_y_vel_off_pd;geoMean(17)];
%trimMean_y_vel_off_pd=[trimMean_y_vel_off_pd;trimMean(17)];
%percentiles_y_vel_off_pd=[percentiles_y_vel_off_pd;percentiles(17)];
%moments_y_vel_off_pd=[moments_y_vel_off_pd;moments(17)];
%kurto_y_vel_off_pd=[kurto_y_vel_off_pd;kurto(17)];
%ranges_y_vel_off_pd=[ranges_y_vel_off_pd;ranges(17)];
%medians_y_vel_off_pd=[medians_y_vel_off_pd;medians(17)];
%modes_y_vel_off_pd=[modes_y_vel_off_pd;modes(17)];
%stdDevs_y_vel_off_pd=[stdDevs_y_vel_off_pd;stdDevs(17)];
%robustRange_y_vel_off_pd=[robustRange_y_vel_off_pd;robustRange(17)];
%interQuartiles_y_vel_off_pd=[interQuartiles_y_vel_off_pd;interQuartiles(17)];

%arithMean_y_acc_off_pd=[arithMean_y_acc_off_pd;arithMean(18)];
%geoMean_y_acc_off_pd=[geoMean_y_acc_off_pd;geoMean(18)];
%trimMean_y_acc_off_pd=[trimMean_y_acc_off_pd;trimMean(18)];
%percentiles_y_acc_off_pd=[percentiles_y_acc_off_pd;percentiles(18)];
%moments_y_acc_off_pd=[moments_y_acc_off_pd;moments(18)];
%kurto_y_acc_off_pd=[kurto_y_acc_off_pd;kurto(18)];
%ranges_y_acc_off_pd=[ranges_y_acc_off_pd;ranges(18)];
%medians_y_acc_off_pd=[medians_y_acc_off_pd;medians(18)];
%modes_y_acc_off_pd=[modes_y_acc_off_pd;modes(18)];
%stdDevs_y_acc_off_pd=[stdDevs_y_acc_off_pd;stdDevs(18)];
%robustRange_y_acc_off_pd=[robustRange_y_acc_off_pd;robustRange(18)];
%interQuartiles_y_acc_off_pd=[interQuartiles_y_acc_off_pd;interQuartiles(18)];

%arithMean_y_jerk_off_pd=[arithMean_y_jerk_off_pd;arithMean(19)];
%geoMean_y_jerk_off_pd=[geoMean_y_jerk_off_pd;geoMean(19)];
%trimMean_y_jerk_off_pd=[trimMean_y_jerk_off_pd;trimMean(19)];
%percentiles_y_jerk_off_pd=[percentiles_y_jerk_off_pd;percentiles(19)];
%moments_y_jerk_off_pd=[moments_y_jerk_off_pd;moments(19)];
%kurto_y_jerk_off_pd=[kurto_y_jerk_off_pd;kurto(19)];
%ranges_y_jerk_off_pd=[ranges_y_jerk_off_pd;ranges(19)];
%medians_y_jerk_off_pd=[medians_y_jerk_off_pd;medians(19)];
%modes_y_jerk_off_pd=[modes_y_jerk_off_pd;modes(19)];
%stdDevs_y_jerk_off_pd=[stdDevs_y_jerk_off_pd;stdDevs(19)];
%robustRange_y_jerk_off_pd=[robustRange_y_jerk_off_pd;robustRange(19)];
%interQuartiles_y_jerk_off_pd=[interQuartiles_y_jerk_off_pd;interQuartiles(19)];

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
  
  
  %--------------------------------------HC-------------------------------------------------------------%
elseif(k>37)
 
 [pressure_rate,x_vel_on,y_vel_on,time_interval_on,time_interval_off,speed,ncv_on,nca_on,rel_NCV_on,rel_NCA_on,norm_onTime,ncp,rel_NCP,ncv_off,nca_off,rel_NCV_off,rel_NCA_off,norm_offTime,off_onTime,arithMean,geoMean,trimMean,percentiles,moments,kurto,ranges,medians,modes,stdDevs,robustRange,interQuartiles,x_shannon,y_shannon,x_renyi2,y_renyi2,x_renyi3,y_renyi3,snr_ce_x,snr_ce_y,snr_tke1_x,snr_tke1_y,x_shannon_i1,y_shannon_i1,x_renyi2_i1,y_renyi2_i1,x_renyi3_i1,y_renyi3_i1,x_shannon_i2,y_shannon_i2,x_renyi2_i2,y_renyi2_i2,x_renyi3_i2,y_renyi3_i2,snr_ice_x,snr_ice_y,snr_itke1_x,snr_itke1_y,snr_itke2_x,snr_itke2_y]=kinematic_features(filename(k,:));
     
pressure_rate_hc=[pressure_rate_hc;pressure_rate];
x_vel_on_hc=[x_vel_on_hc;x_vel_on];
y_vel_on_hc=[y_vel_on_hc;y_vel_on];
time_interval_off_hc=[time_interval_off_hc;time_interval_off];
speed_hc=[speed_hc;speed];
ncv_on_hc=[ncv_on_hc;ncv_on];
nca_on_hc=[nca_on_hc;nca_on];
rel_NCV_on_hc=[rel_NCV_on_hc;rel_NCV_on];
rel_NCA_on_hc=[rel_NCA_on_hc;rel_NCA_on];
norm_onTime_hc=[norm_onTime_hc;norm_onTime];
ncp_hc=[ncp_hc;ncp];
rel_NCP_hc=[rel_NCP_hc;rel_NCP];
ncv_off_hc=[ncv_off_hc;ncv_off];
nca_off_hc=[nca_off_hc;nca_off];
rel_NCV_off_hc=[rel_NCV_off_hc;rel_NCV_off];
rel_NCA_off_hc=[rel_NCA_off_hc;rel_NCA_off];
norm_offTime_hc=[norm_offTime_hc;norm_offTime];
off_onTime_hc=[off_onTime_hc;off_onTime];

arithMean_strokespeed_hc=[arithMean_strokespeed_hc;arithMean(1)];
geoMean_strokespeed_hc=[geoMean_strokespeed_hc;geoMean(1)];
trimMean_strokespeed_hc=[trimMean_strokespeed_hc;trimMean(1)];
percentiles_strokespeed_hc=[percentiles_strokespeed_hc;percentiles(1)];
moments_strokespeed_hc=[moments_strokespeed_hc;moments(1)];
kurto_strokespeed_hc=[kurto_strokespeed_hc;kurto(1)];
ranges_strokespeed_hc=[ranges_strokespeed_hc;ranges(1)];
medians_strokespeed_hc=[medians_strokespeed_hc;medians(1)];
modes_strokespeed_hc=[modes_strokespeed_hc;modes(1)];
stdDevs_strokespeed_hc=[stdDevs_strokespeed_hc;stdDevs(1)];
robustRange_strokespeed_hc=[robustRange_strokespeed_hc;robustRange(1)];
interQuartiles_strokespeed_hc=[interQuartiles_strokespeed_hc;interQuartiles(1)];

arithMean_vel_on_hc=[arithMean_vel_on_hc;arithMean(2)];
geoMean_vel_on_hc=[geoMean_vel_on_hc;geoMean(2)];
trimMean_vel_on_hc=[trimMean_vel_on_hc;trimMean(2)];
percentiles_vel_on_hc=[percentiles_vel_on_hc;percentiles(2)];
moments_vel_on_hc=[moments_vel_on_hc;moments(2)];
kurto_vel_on_hc=[kurto_vel_on_hc;kurto(2)];
ranges_vel_on_hc=[ranges_vel_on_hc;ranges(2)];
medians_vel_on_hc=[medians_vel_on_hc;medians(2)];
modes_vel_on_hc=[modes_vel_on_hc;modes(2)];
stdDevs_vel_on_hc=[stdDevs_vel_on_hc;stdDevs(2)];
robustRange_vel_on_hc=[robustRange_vel_on_hc;robustRange(2)];
interQuartiles_vel_on_hc=[interQuartiles_vel_on_hc;interQuartiles(2)];


%arithMean_vel_off_hc=[arithMean_vel_off_hc;arithMean(3)];
%geoMean_vel_off_hc=[geoMean_vel_off_hc;geoMean(3)];
%trimMean_vel_off_hc=[trimMean_vel_off_hc;trimMean(3)];
%percentiles_vel_off_hc=[percentiles_vel_off_hc;percentiles(3)];
%moments_vel_off_hc=[moments_vel_off_hc;moments(3)];
%kurto_vel_off_hc=[kurto_vel_off_hc;kurto(3)];
%ranges_vel_off_hc=[ranges_vel_off_hc;ranges(3)];
%medians_vel_off_hc=[medians_vel_off_hc;medians(3)];
%modes_vel_off_hc=[modes_vel_off_hc;modes(3)];
%stdDevs_vel_off_hc=[stdDevs_vel_off_hc;stdDevs(3)];
%robustRange_vel_off_hc=[robustRange_vel_off_hc;robustRange(3)];
%interQuartiles_vel_off_hc=[interQuartiles_vel_off_hc;interQuartiles(3)];

arithMean_acc_on_hc=[arithMean_acc_on_hc;arithMean(4)];
geoMean_acc_on_hc=[geoMean_acc_on_hc;geoMean(4)];
trimMean_acc_on_hc=[trimMean_acc_on_hc;trimMean(4)];
percentiles_acc_on_hc=[percentiles_acc_on_hc;percentiles(4)];
moments_acc_on_hc=[moments_acc_on_hc;moments(4)];
kurto_acc_on_hc=[kurto_acc_on_hc;kurto(4)];
ranges_acc_on_hc=[ranges_acc_on_hc;ranges(4)];
medians_acc_on_hc=[medians_acc_on_hc;medians(4)];
modes_acc_on_hc=[modes_acc_on_hc;modes(4)];
stdDevs_acc_on_hc=[stdDevs_acc_on_hc;stdDevs(4)];
robustRange_acc_on_hc=[robustRange_acc_on_hc;robustRange(4)];
interQuartiles_acc_on_hc=[interQuartiles_acc_on_hc;interQuartiles(4)];


%arithMean_acc_off_hc=[arithMean_acc_off_hc;arithMean(5)];
%geoMean_acc_off_hc=[geoMean_acc_off_hc;geoMean(5)];
%trimMean_acc_off_hc=[trimMean_acc_off_hc;trimMean(5)];
%percentiles_acc_off_hc=[percentiles_acc_off_hc;percentiles(5)];
%moments_acc_off_hc=[moments_acc_off_hc;moments(5)];
%kurto_acc_off_hc=[kurto_acc_off_hc;kurto(5)];
%ranges_acc_off_hc=[ranges_acc_off_hc;ranges(5)];
%medians_acc_off_hc=[medians_acc_off_hc;medians(5)];
%modes_acc_off_hc=[modes_acc_off_hc;modes(5)];
%stdDevs_acc_off_hc=[stdDevs_acc_off_hc;stdDevs(5)];
%robustRange_acc_off_hc=[robustRange_acc_off_hc;robustRange(5)];
%interQuartiles_acc_off_hc=[interQuartiles_acc_off_hc;interQuartiles(5)];

arithMean_jerk_on_hc=[arithMean_jerk_on_hc;arithMean(6)];
geoMean_jerk_on_hc=[geoMean_jerk_on_hc;geoMean(6)];
trimMean_jerk_on_hc=[trimMean_jerk_on_hc;trimMean(6)];
percentiles_jerk_on_hc=[percentiles_jerk_on_hc;percentiles(6)];
moments_jerk_on_hc=[moments_jerk_on_hc;moments(6)];
kurto_jerk_on_hc=[kurto_jerk_on_hc;kurto(6)];
ranges_jerk_on_hc=[ranges_jerk_on_hc;ranges(6)];
medians_jerk_on_hc=[medians_jerk_on_hc;medians(6)];
modes_jerk_on_hc=[modes_jerk_on_hc;modes(6)];
stdDevs_jerk_on_hc=[stdDevs_jerk_on_hc;stdDevs(6)];
robustRange_jerk_on_hc=[robustRange_jerk_on_hc;robustRange(6)];
interQuartiles_jerk_on_hc=[interQuartiles_jerk_on_hc;interQuartiles(6)];


%arithMean_jerk_off_hc=[arithMean_jerk_off_hc;arithMean(7)];
%geoMean_jerk_off_hc=[geoMean_jerk_off_hc;geoMean(7)];
%trimMean_jerk_off_hc=[trimMean_jerk_off_hc;trimMean(7)];
%percentiles_jerk_off_hc=[percentiles_jerk_off_hc;percentiles(7)];
%moments_jerk_off_hc=[moments_jerk_off_hc;moments(7)];
%kurto_jerk_off_hc=[kurto_jerk_off_hc;kurto(7)];
%ranges_jerk_off_hc=[ranges_jerk_off_hc;ranges(7)];
%medians_jerk_off_hc=[medians_jerk_off_hc;medians(7)];
%modes_jerk_off_hc=[modes_jerk_off_hc;modes(7)];
%stdDevs_jerk_off_hc=[stdDevs_jerk_off_hc;stdDevs(7)];
%robustRange_jerk_off_hc=[robustRange_jerk_off_hc;robustRange(7)];
%interQuartiles_jerk_off_hc=[interQuartiles_jerk_off_hc;interQuartiles(7)];

arithMean_x_vel_on_hc=[arithMean_x_vel_on_hc;arithMean(8)];
geoMean_x_vel_on_hc=[geoMean_x_vel_on_hc;geoMean(8)];
trimMean_x_vel_on_hc=[trimMean_x_vel_on_hc;trimMean(8)];
percentiles_x_vel_on_hc=[percentiles_x_vel_on_hc;percentiles(8)];
moments_x_vel_on_hc=[moments_x_vel_on_hc;moments(8)];
kurto_x_vel_on_hc=[kurto_x_vel_on_hc;kurto(8)];
ranges_x_vel_on_hc=[ranges_x_vel_on_hc;ranges(8)];
medians_x_vel_on_hc=[medians_x_vel_on_hc;medians(8)];
modes_x_vel_on_hc=[modes_x_vel_on_hc;modes(8)];
stdDevs_x_vel_on_hc=[stdDevs_x_vel_on_hc;stdDevs(8)];
robustRange_x_vel_on_hc=[robustRange_x_vel_on_hc;robustRange(8)];
interQuartiles_x_vel_on_hc=[interQuartiles_x_vel_on_hc;interQuartiles(8)];

arithMean_x_acc_on_hc=[arithMean_x_acc_on_hc;arithMean(9)];
geoMean_x_acc_on_hc=[geoMean_x_acc_on_hc;geoMean(9)];
trimMean_x_acc_on_hc=[trimMean_x_acc_on_hc;trimMean(9)];
percentiles_x_acc_on_hc=[percentiles_x_acc_on_hc;percentiles(9)];
moments_x_acc_on_hc=[moments_x_acc_on_hc;moments(9)];
kurto_x_acc_on_hc=[kurto_x_acc_on_hc;kurto(9)];
ranges_x_acc_on_hc=[ranges_x_acc_on_hc;ranges(9)];
medians_x_acc_on_hc=[medians_x_acc_on_hc;medians(9)];
modes_x_acc_on_hc=[modes_x_acc_on_hc;modes(9)];
stdDevs_x_acc_on_hc=[stdDevs_x_acc_on_hc;stdDevs(9)];
robustRange_x_acc_on_hc=[robustRange_x_acc_on_hc;robustRange(9)];
interQuartiles_x_acc_on_hc=[interQuartiles_x_acc_on_hc;interQuartiles(9)];

arithMean_x_jerk_on_hc=[arithMean_x_jerk_on_hc;arithMean(10)];
geoMean_x_jerk_on_hc=[geoMean_x_jerk_on_hc;geoMean(10)];
trimMean_x_jerk_on_hc=[trimMean_x_jerk_on_hc;trimMean(10)];
percentiles_x_jerk_on_hc=[percentiles_x_jerk_on_hc;percentiles(10)];
moments_x_jerk_on_hc=[moments_x_jerk_on_hc;moments(10)];
kurto_x_jerk_on_hc=[kurto_x_jerk_on_hc;kurto(10)];
ranges_x_jerk_on_hc=[ranges_x_jerk_on_hc;ranges(10)];
medians_x_jerk_on_hc=[medians_x_jerk_on_hc;medians(10)];
modes_x_jerk_on_hc=[modes_x_jerk_on_hc;modes(10)];
stdDevs_x_jerk_on_hc=[stdDevs_x_jerk_on_hc;stdDevs(10)];
robustRange_x_jerk_on_hc=[robustRange_x_jerk_on_hc;robustRange(10)];
interQuartiles_x_jerk_on_hc=[interQuartiles_x_jerk_on_hc;interQuartiles(10)];

arithMean_y_vel_on_hc=[arithMean_y_vel_on_hc;arithMean(11)];
geoMean_y_vel_on_hc=[geoMean_y_vel_on_hc;geoMean(11)];
trimMean_y_vel_on_hc=[trimMean_y_vel_on_hc;trimMean(11)];
percentiles_y_vel_on_hc=[percentiles_y_vel_on_hc;percentiles(11)];
moments_y_vel_on_hc=[moments_y_vel_on_hc;moments(11)];
kurto_y_vel_on_hc=[kurto_y_vel_on_hc;kurto(11)];
ranges_y_vel_on_hc=[ranges_y_vel_on_hc;ranges(11)];
medians_y_vel_on_hc=[medians_y_vel_on_hc;medians(11)];
modes_y_vel_on_hc=[modes_y_vel_on_hc;modes(11)];
stdDevs_y_vel_on_hc=[stdDevs_y_vel_on_hc;stdDevs(11)];
robustRange_y_vel_on_hc=[robustRange_y_vel_on_hc;robustRange(11)];
interQuartiles_y_vel_on_hc=[interQuartiles_y_vel_on_hc,interQuartiles_y_vel_on(11)];

arithMean_y_acc_on_hc=[arithMean_y_acc_on_hc;arithMean(12)];
geoMean_y_acc_on_hc=[geoMean_y_acc_on_hc;geoMean(12)];
trimMean_y_acc_on_hc=[trimMean_y_acc_on_hc;trimMean(12)];
percentiles_y_acc_on_hc=[percentiles_y_acc_on_hc;percentiles(12)];
moments_y_acc_on_hc=[moments_y_acc_on_hc;moments(12)];
kurto_y_acc_on_hc=[kurto_y_acc_on_hc;kurto(12)];
ranges_y_acc_on_hc=[ranges_y_acc_on_hc;ranges(12)];
medians_y_acc_on_hc=[medians_y_acc_on_hc;medians(12)];
modes_y_acc_on_hc=[modes_y_acc_on_hc;modes(12)];
stdDevs_y_acc_on_hc=[stdDevs_y_acc_on_hc;stdDevs(12)];
robustRange_y_acc_on_hc=[robustRange_y_acc_on_hc;robustRange(12)];
interQuartiles_y_acc_on_hc=[interQuartiles_y_acc_on_hc;interQuartiles(12)];

arithMean_y_jerk_on_hc=[arithMean_y_jerk_on_hc;arithMean(13)];
geoMean_y_jerk_on_hc=[geoMean_y_jerk_on_hc;geoMean(13)];
trimMean_y_jerk_on_hc=[trimMean_y_jerk_on_hc;trimMean(13)];
percentiles_y_jerk_on_hc=[percentiles_y_jerk_on_hc;percentiles(13)];
moments_y_jerk_on_hc=[moments_y_jerk_on_hc;moments(13)];
kurto_y_jerk_on_hc=[kurto_y_jerk_on_hc;kurto(13)];
ranges_y_jerk_on_hc=[ranges_y_jerk_on_hc;ranges(13)];
medians_y_jerk_on_hc=[medians_y_jerk_on_hc;medians(13)];
modes_y_jerk_on_hc=[modes_y_jerk_on_hc;modes(13)];
stdDevs_y_jerk_on_hc=[stdDevs_y_jerk_on_hc;stdDevs(13)];
robustRange_y_jerk_on_hc=[robustRange_y_jerk_on_hc;robustRange(13)];
interQuartiles_y_jerk_on_hc=[interQuartiles_y_jerk_on_hc;interQuartiles(13)];

%arithMean_x_vel_off_hc=[arithMean_x_vel_off_hc;arithMean(14)];
%geoMean_x_vel_off_hc=[geoMean_x_vel_off_hc;geoMean(14)];
%trimMean_x_vel_off_hc=[trimMean_x_vel_off_hc;trimMean(14)];
%percentiles_x_vel_off_hc=[percentiles_x_vel_off_hc;percentiles(14)];
%moments_x_vel_off_hc=[moments_x_vel_off_hc;moments(14)];
%kurto_x_vel_off_hc=[kurto_x_vel_off_hc;kurto(14)];
%ranges_x_vel_off_hc=[ranges_x_vel_off_hc;ranges(14)];
%medians_x_vel_off_hc=[medians_x_vel_off_hc;medians(14)];
%modes_x_vel_off_hc=[modes_x_vel_off_hc;modes(14)];
%stdDevs_x_vel_off_hc=[stdDevs_x_vel_off_hc;stdDevs(14)];
%robustRange_x_vel_off_hc=[robustRange_x_vel_off_hc;robustRange(14)];
%interQuartiles_x_vel_off_hc=[interQuartiles_x_vel_off_hc;interQuartiles(14)];

%arithMean_x_acc_off_hc=[arithMean_x_acc_off_hc;arithMean(15)];
%geoMean_x_acc_off_hc=[geoMean_x_acc_off_hc;geoMean(15)];
%trimMean_x_acc_off_hc=[trimMean_x_acc_off_hc;trimMean(15)];
%percentiles_x_acc_off_hc=[percentiles_x_acc_off_hc;percentiles(15)];
%moments_x_acc_off_hc=[moments_x_acc_off_hc;moments(15)];
%kurto_x_acc_off_hc=[kurto_x_acc_off_hc;kurto(15)];
%ranges_x_acc_off_hc=[ranges_x_acc_off_hc;ranges(15)];
%medians_x_acc_off_hc=[medians_x_acc_off_hc;medians(15)];
%modes_x_acc_off_hc=[modes_x_acc_off_hc;modes(15)];
%stdDevs_x_acc_off_hc=[stdDevs_x_acc_off_hc;stdDevs(15)];
%robustRange_x_acc_off_hc=[robustRange_x_acc_off_hc;robustRange(15)];
%interQuartiles_x_acc_off_hc=[interQuartiles_x_acc_off_hc;interQuartiles(15)];

%arithMean_x_jerk_off_hc=[arithMean_x_jerk_off_hc;arithMean(16)];
%geoMean_x_jerk_off_hc=[geoMean_x_jerk_off_hc;geoMean(16)];
%trimMean_x_jerk_off_hc=[trimMean_x_jerk_off_hc;trimMean(16)];
%percentiles_x_jerk_off_hc=[percentiles_x_jerk_off_hc;percentiles(16)];
%moments_x_jerk_off_hc=[moments_x_jerk_off_hc;moments(16)];
%kurto_x_jerk_off_hc=[kurto_x_jerk_off_hc;kurto(16)];
%ranges_x_jerk_off_hc=[ranges_x_jerk_off_hc;ranges(16)];
%medians_x_jerk_off_hc=[medians_x_jerk_off_hc;medians(16)];
%modes_x_jerk_off_hc=[modes_x_jerk_off_hc;modes(16)];
%stdDevs_x_jerk_off_hc=[stdDevs_x_jerk_off_hc;stdDevs(16)];
%robustRange_x_jerk_off_hc=[robustRange_x_jerk_off_hc;robustRange(16)];
%interQuartiles_x_jerk_off_hc=[interQuartiles_x_jerk_off_hc;interQuartiles(16)];

%arithMean_y_vel_off_hc=[arithMean_y_vel_off_hc;arithMean(17)];
%geoMean_y_vel_off_hc=[geoMean_y_vel_off_hc;geoMean(17)];
%trimMean_y_vel_off_hc=[trimMean_y_vel_off_hc;trimMean(17)];
%percentiles_y_vel_off_hc=[percentiles_y_vel_off_hc;percentiles(17)];
%moments_y_vel_off_hc=[moments_y_vel_off_hc;moments(17)];
%kurto_y_vel_off_hc=[kurto_y_vel_off_hc;kurto(17)];
%ranges_y_vel_off_hc=[ranges_y_vel_off_hc;ranges(17)];
%medians_y_vel_off_hc=[medians_y_vel_off_hc;medians(17)];
%modes_y_vel_off_hc=[modes_y_vel_off_hc;modes(17)];
%stdDevs_y_vel_off_hc=[stdDevs_y_vel_off_hc;stdDevs(17)];
%robustRange_y_vel_off_hc=[robustRange_y_vel_off_hc;robustRange(17)];
%interQuartiles_y_vel_off_hc=[interQuartiles_y_vel_off_hc;interQuartiles(17)];

%arithMean_y_acc_off_hc=[arithMean_y_acc_off_hc;arithMean(18)];
%geoMean_y_acc_off_hc=[geoMean_y_acc_off_hc;geoMean(18)];
%trimMean_y_acc_off_hc=[trimMean_y_acc_off_hc;trimMean(18)];
%percentiles_y_acc_off_hc=[percentiles_y_acc_off_hc;percentiles(18)];
%moments_y_acc_off_hc=[moments_y_acc_off_hc;moments(18)];
%kurto_y_acc_off_hc=[kurto_y_acc_off_hc;kurto(18)];
%ranges_y_acc_off_hc=[ranges_y_acc_off_hc;ranges(18)];
%medians_y_acc_off_hc=[medians_y_acc_off_hc;medians(18)];
%modes_y_acc_off_hc=[modes_y_acc_off_hc;modes(18)];
%stdDevs_y_acc_off_hc=[stdDevs_y_acc_off_hc;stdDevs(18)];
%robustRange_y_acc_off_hc=[robustRange_y_acc_off_hc;robustRange(18)];
%interQuartiles_y_acc_off_hc=[interQuartiles_y_acc_off_hc;interQuartiles(18)];

%arithMean_y_jerk_off_hc=[arithMean_y_jerk_off_hc;arithMean(19)];
%geoMean_y_jerk_off_hc=[geoMean_y_jerk_off_hc;geoMean(19)];
%trimMean_y_jerk_off_hc=[trimMean_y_jerk_off_hc;trimMean(19)];
%percentiles_y_jerk_off_hc=[percentiles_y_jerk_off_hc;percentiles(19)];
%moments_y_jerk_off_hc=[moments_y_jerk_off_hc;moments(19)];
%kurto_y_jerk_off_hc=[kurto_y_jerk_off_hc;kurto(19)];
%ranges_y_jerk_off_hc=[ranges_y_jerk_off_hc;ranges(19)];
%medians_y_jerk_off_hc=[medians_y_jerk_off_hc;medians(19)];
%modes_y_jerk_off_hc=[modes_y_jerk_off_hc;modes(19)];
%stdDevs_y_jerk_off_hc=[stdDevs_y_jerk_off_hc;stdDevs(19)];
%robustRange_y_jerk_off_hc=[robustRange_y_jerk_off_hc;robustRange(19)];
%interQuartiles_y_jerk_off_hc=[interQuartiles_y_jerk_off_hc;interQuartiles(19)];

endif;        % end of 'ifelse' construct

end;      %end of 'for' loop
  
  %--------Mann Witney U_Test on the declared matrices---------%
  
  passed=[];      %features which passed the test
  failed=[];      %features which failed the test
 
 feature_name="pressure_rate_t1";
 if(u_test(pressure_rate_pd,pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 

 feature_name="x_vel_on_t1";
 if(u_test(x_vel_on_pd,x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="y_vel_on_t1";
 if(u_test(y_vel_on_pd,y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="time_interval_off_t1";
 if(u_test(time_interval_off_pd,time_interval_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="speed_t1";
 if(u_test(speed_pd,speed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ncv_on_t1";
 if(u_test(ncv_on_pd,ncv_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="nca_on_t1";
 if(u_test(nca_on_pd,nca_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="rel_NCV_on_t1";
 if(u_test(rel_NCV_on_pd,rel_NCV_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="rel_NCA_on_t1";
 if(u_test(rel_NCA_on_pd,rel_NCA_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="norm_onTime_t1";
 if(u_test(norm_onTime_pd,norm_onTime_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ncp_t1";
 if(u_test(ncp_pd,ncp_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="rel_NCP_t1";
 if(u_test(rel_NCP_pd,rel_NCP_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ncv_off_t1";
 if(u_test(ncv_off_pd,ncv_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="nca_off_t1";
 if(u_test(nca_off_pd,nca_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="rel_NCV_off_t1";
 if(u_test(rel_NCV_off_pd,rel_NCV_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="rel_NCA_off_t1";
 if(u_test(rel_NCA_off_pd,rel_NCA_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="norm_offTime_t1";
 if(u_test(norm_offTime_pd,norm_offTime_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="off_onTime_t1";
 if(u_test(off_onTime_pd,off_onTime_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="arithMean_strokespeed_t1";
 if(u_test(arithMean_strokespeed_pd,arithMean_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_strokespeed_t1";
 if(u_test(geoMean_strokespeed_pd,geoMean_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_strokespeed _t1";
 if(u_test(kurto_strokespeed_pd,kurto_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_strokespeed_t1";
 if(u_test(ranges_strokespeed_pd,ranges_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_strokespeed_t1";
 if(u_test(medians_strokespeed_pd,medians_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_strokespeed_t1";
 if(u_test(modes_strokespeed_pd,modes_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_strokespeed_t1";
 if(u_test(stdDevs_strokespeed_pd,stdDevs_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_strokespeed_t1";
 if(u_test(robustRange_strokespeed_pd,robustRange_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_strokespeed_t1";
 if(u_test(interQuartiles_strokespeed_pd,interQuartiles_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_vel_on_t1";
 if(u_test(arithMean_vel_on_pd,arithMean_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_vel_on_t1";
 if(u_test(geoMean_vel_on_pd,geoMean_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_vel_on _t1";
 if(u_test(kurto_vel_on_pd,kurto_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_vel_on_t1";
 if(u_test(ranges_vel_on_pd,ranges_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_vel_on_t1";
 if(u_test(medians_vel_on_pd,medians_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_vel_on_t1";
 if(u_test(modes_vel_on_pd,modes_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_vel_on_t1";
 if(u_test(stdDevs_vel_on_pd,stdDevs_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_vel_on_t1";
 if(u_test(robustRange_vel_on_pd,robustRange_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_vel_on_t1";
 if(u_test(interQuartiles_vel_on_pd,interQuartiles_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_vel_off_t1";
 if(u_test(arithMean_vel_off_pd,arithMean_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_vel_off_t1";
 if(u_test(geoMean_vel_off_pd,geoMean_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_vel_off _t1";
 if(u_test(kurto_vel_off_pd,kurto_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_vel_off_t1";
 if(u_test(ranges_vel_off_pd,ranges_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_vel_off_t1";
 if(u_test(medians_vel_off_pd,medians_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_vel_off_t1";
 if(u_test(modes_vel_off_pd,modes_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_vel_off_t1";
 if(u_test(stdDevs_vel_off_pd,stdDevs_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_vel_off_t1";
 if(u_test(robustRange_vel_off_pd,robustRange_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_vel_off_t1";
 if(u_test(interQuartiles_vel_off_pd,interQuartiles_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_acc_on_t1";
 if(u_test(arithMean_acc_on_pd,arithMean_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_acc_on_t1";
 if(u_test(geoMean_acc_on_pd,geoMean_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_acc_on _t1";
 if(u_test(kurto_acc_on_pd,kurto_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_acc_on_t1";
 if(u_test(ranges_acc_on_pd,ranges_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_acc_on_t1";
 if(u_test(medians_acc_on_pd,medians_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_acc_on_t1";
 if(u_test(modes_acc_on_pd,modes_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_acc_on_t1";
 if(u_test(stdDevs_acc_on_pd,stdDevs_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_acc_on_t1";
 if(u_test(robustRange_acc_on_pd,robustRange_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_acc_on_t1";
 if(u_test(interQuartiles_acc_on_pd,interQuartiles_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_acc_off_t1";
 if(u_test(arithMean_acc_off_pd,arithMean_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_acc_off_t1";
 if(u_test(geoMean_acc_off_pd,geoMean_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_acc_off _t1";
 if(u_test(kurto_acc_off_pd,kurto_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_acc_off_t1";
 if(u_test(ranges_acc_off_pd,ranges_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_acc_off_t1";
 if(u_test(medians_acc_off_pd,medians_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_acc_off_t1";
 if(u_test(modes_acc_off_pd,modes_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_acc_off_t1";
 if(u_test(stdDevs_acc_off_pd,stdDevs_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_acc_off_t1";
 if(u_test(robustRange_acc_off_pd,robustRange_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_acc_off_t1";
 if(u_test(interQuartiles_acc_off_pd,interQuartiles_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_jerk_on_t1";
 if(u_test(arithMean_jerk_on_pd,arithMean_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_jerk_on_t1";
 if(u_test(geoMean_jerk_on_pd,geoMean_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_jerk_on _t1";
 if(u_test(kurto_jerk_on_pd,kurto_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_jerk_on_t1";
 if(u_test(ranges_jerk_on_pd,ranges_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_jerk_on_t1";
 if(u_test(medians_jerk_on_pd,medians_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_jerk_on_t1";
 if(u_test(modes_jerk_on_pd,modes_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_jerk_on_t1";
 if(u_test(stdDevs_jerk_on_pd,stdDevs_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_jerk_on_t1";
 if(u_test(robustRange_jerk_on_pd,robustRange_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_jerk_on_t1";
 if(u_test(interQuartiles_jerk_on_pd,interQuartiles_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_jerk_off_t1";
 if(u_test(arithMean_jerk_off_pd,arithMean_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_jerk_off_t1";
 if(u_test(geoMean_jerk_off_pd,geoMean_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_jerk_off _t1";
 if(u_test(kurto_jerk_off_pd,kurto_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_jerk_off_t1";
 if(u_test(ranges_jerk_off_pd,ranges_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_jerk_off_t1";
 if(u_test(medians_jerk_off_pd,medians_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_jerk_off_t1";
 if(u_test(modes_jerk_off_pd,modes_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_jerk_off_t1";
 if(u_test(stdDevs_jerk_off_pd,stdDevs_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_jerk_off_t1";
 if(u_test(robustRange_jerk_off_pd,robustRange_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_jerk_off_t1";
 if(u_test(interQuartiles_jerk_off_pd,interQuartiles_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_vel_on_t1";
 if(u_test(arithMean_x_vel_on_pd,arithMean_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_vel_on_t1";
 if(u_test(geoMean_x_vel_on_pd,geoMean_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_vel_on _t1";
 if(u_test(kurto_x_vel_on_pd,kurto_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_vel_on_t1";
 if(u_test(ranges_x_vel_on_pd,ranges_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_x_vel_on_t1";
 if(u_test(medians_x_vel_on_pd,medians_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_x_vel_on_t1";
 if(u_test(modes_x_vel_on_pd,modes_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_vel_on_t1";
 if(u_test(stdDevs_x_vel_on_pd,stdDevs_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_vel_on_t1";
 if(u_test(robustRange_x_vel_on_pd,robustRange_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_vel_on_t1";
 if(u_test(interQuartiles_x_vel_on_pd,interQuartiles_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_vel_on_t1";
 if(u_test(arithMean_x_vel_on_pd,arithMean_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_vel_on_t1";
 if(u_test(geoMean_x_vel_on_pd,geoMean_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_vel_on _t1";
 if(u_test(kurto_x_vel_on_pd,kurto_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_vel_on_t1";
 if(u_test(ranges_x_vel_on_pd,ranges_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_x_vel_on_t1";
 if(u_test(medians_x_vel_on_pd,medians_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_x_vel_on_t1";
 if(u_test(modes_x_vel_on_pd,modes_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_vel_on_t1";
 if(u_test(stdDevs_x_vel_on_pd,stdDevs_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_vel_on_t1";
 if(u_test(robustRange_x_vel_on_pd,robustRange_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_vel_on_t1";
 if(u_test(interQuartiles_x_vel_on_pd,interQuartiles_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_acc_on_t1";
 if(u_test(arithMean_x_acc_on_pd,arithMean_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_acc_on_t1";
 if(u_test(geoMean_x_acc_on_pd,geoMean_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_acc_on _t1";
 if(u_test(kurto_x_acc_on_pd,kurto_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_acc_on_t1";
 if(u_test(ranges_x_acc_on_pd,ranges_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_x_acc_on_t1";
 if(u_test(medians_x_acc_on_pd,medians_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_x_acc_on_t1";
 if(u_test(modes_x_acc_on_pd,modes_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_acc_on_t1";
 if(u_test(stdDevs_x_acc_on_pd,stdDevs_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_acc_on_t1";
 if(u_test(robustRange_x_acc_on_pd,robustRange_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_acc_on_t1";
 if(u_test(interQuartiles_x_acc_on_pd,interQuartiles_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_jerk_on_t1";
 if(u_test(arithMean_x_jerk_on_pd,arithMean_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_jerk_on_t1";
 if(u_test(geoMean_x_jerk_on_pd,geoMean_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_jerk_on _t1";
 if(u_test(kurto_x_jerk_on_pd,kurto_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_jerk_on_t1";
 if(u_test(ranges_x_jerk_on_pd,ranges_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_x_jerk_on_t1";
 if(u_test(medians_x_jerk_on_pd,medians_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_x_jerk_on_t1";
 if(u_test(modes_x_jerk_on_pd,modes_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_jerk_on_t1";
 if(u_test(stdDevs_x_jerk_on_pd,stdDevs_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_jerk_on_t1";
 if(u_test(robustRange_x_jerk_on_pd,robustRange_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_jerk_on_t1";
 if(u_test(interQuartiles_x_jerk_on_pd,interQuartiles_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_vel_on_t1";
 if(u_test(arithMean_y_vel_on_pd,arithMean_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_vel_on_t1";
 if(u_test(geoMean_y_vel_on_pd,geoMean_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_vel_on _t1";
 if(u_test(kurto_y_vel_on_pd,kurto_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_vel_on_t1";
 if(u_test(ranges_y_vel_on_pd,ranges_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_y_vel_on_t1";
 if(u_test(medians_y_vel_on_pd,medians_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_y_vel_on_t1";
 if(u_test(modes_y_vel_on_pd,modes_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_vel_on_t1";
 if(u_test(stdDevs_y_vel_on_pd,stdDevs_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_vel_on_t1";
 if(u_test(robustRange_y_vel_on_pd,robustRange_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_vel_on_t1";
 if(u_test(interQuartiles_y_vel_on_pd,interQuartiles_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_acc_on_t1";
 if(u_test(arithMean_y_acc_on_pd,arithMean_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_acc_on_t1";
 if(u_test(geoMean_y_acc_on_pd,geoMean_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_acc_on _t1";
 if(u_test(kurto_y_acc_on_pd,kurto_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_acc_on_t1";
 if(u_test(ranges_y_acc_on_pd,ranges_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_y_acc_on_t1";
 if(u_test(medians_y_acc_on_pd,medians_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_y_acc_on_t1";
 if(u_test(modes_y_acc_on_pd,modes_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_acc_on_t1";
 if(u_test(stdDevs_y_acc_on_pd,stdDevs_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_acc_on_t1";
 if(u_test(robustRange_y_acc_on_pd,robustRange_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_acc_on_t1";
 if(u_test(interQuartiles_y_acc_on_pd,interQuartiles_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_jerk_on_t1";
 if(u_test(arithMean_y_jerk_on_pd,arithMean_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_jerk_on_t1";
 if(u_test(geoMean_y_jerk_on_pd,geoMean_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_jerk_on _t1";
 if(u_test(kurto_y_jerk_on_pd,kurto_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_jerk_on_t1";
 if(u_test(ranges_y_jerk_on_pd,ranges_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_y_jerk_on_t1";
 if(u_test(medians_y_jerk_on_pd,medians_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_y_jerk_on_t1";
 if(u_test(modes_y_jerk_on_pd,modes_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_jerk_on_t1";
 if(u_test(stdDevs_y_jerk_on_pd,stdDevs_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_jerk_on_t1";
 if(u_test(robustRange_y_jerk_on_pd,robustRange_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_jerk_on_t1";
 if(u_test(interQuartiles_y_jerk_on_pd,interQuartiles_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_strokespeed_t1";
 if(u_test(trimMean_strokespeed_pd(:,1),trimMean_strokespeed_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_strokespeed_t1";
 if(u_test(trimMean_strokespeed_pd(:,2),trimMean_strokespeed_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_strokespeed_t1";
 if(u_test(trimMean_strokespeed_pd(:,3),trimMean_strokespeed_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_strokespeed_t1";
 if(u_test(trimMean_strokespeed_pd(:,4),trimMean_strokespeed_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_strokespeed_t1";
 if(u_test(trimMean_strokespeed_pd(:,5),trimMean_strokespeed_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,1),trimMean_strokespeed_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,2),trimMean_strokespeed_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,3),trimMean_strokespeed_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,4),trimMean_strokespeed_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,5),trimMean_strokespeed_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,6),trimMean_strokespeed_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,7),trimMean_strokespeed_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,8),trimMean_strokespeed_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,9),trimMean_strokespeed_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,1),trimMean_strokespeed_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,2),trimMean_strokespeed_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,3),trimMean_strokespeed_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_strokespeed_t1";
 if(u_test(percentiles_strokespeed_pd(:,4),trimMean_strokespeed_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_vel_on_t1";
 if(u_test(trimMean_vel_on_pd(:,1),trimMean_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_vel_on_t1";
 if(u_test(trimMean_vel_on_pd(:,2),trimMean_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_vel_on_t1";
 if(u_test(trimMean_vel_on_pd(:,3),trimMean_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_vel_on_t1";
 if(u_test(trimMean_vel_on_pd(:,4),trimMean_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_vel_on_t1";
 if(u_test(trimMean_vel_on_pd(:,5),trimMean_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,1),trimMean_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,2),trimMean_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,3),trimMean_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,4),trimMean_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,5),trimMean_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,6),trimMean_vel_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,7),trimMean_vel_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,8),trimMean_vel_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,9),trimMean_vel_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,1),trimMean_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,2),trimMean_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,3),trimMean_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_vel_on_t1";
 if(u_test(percentiles_vel_on_pd(:,4),trimMean_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_vel_off_t1";
 if(u_test(trimMean_vel_off_pd(:,1),trimMean_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_vel_off_t1";
 if(u_test(trimMean_vel_off_pd(:,2),trimMean_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_vel_off_t1";
 if(u_test(trimMean_vel_off_pd(:,3),trimMean_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_vel_off_t1";
 if(u_test(trimMean_vel_off_pd(:,4),trimMean_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_vel_off_t1";
 if(u_test(trimMean_vel_off_pd(:,5),trimMean_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,1),trimMean_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,2),trimMean_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,3),trimMean_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,4),trimMean_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,5),trimMean_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,6),trimMean_vel_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,7),trimMean_vel_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,8),trimMean_vel_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,9),trimMean_vel_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,1),trimMean_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,2),trimMean_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,3),trimMean_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_vel_off_t1";
 if(u_test(percentiles_vel_off_pd(:,4),trimMean_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_acc_on_t1";
 if(u_test(trimMean_acc_on_pd(:,1),trimMean_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_acc_on_t1";
 if(u_test(trimMean_acc_on_pd(:,2),trimMean_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_acc_on_t1";
 if(u_test(trimMean_acc_on_pd(:,3),trimMean_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_acc_on_t1";
 if(u_test(trimMean_acc_on_pd(:,4),trimMean_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_acc_on_t1";
 if(u_test(trimMean_acc_on_pd(:,5),trimMean_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,1),trimMean_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,2),trimMean_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,3),trimMean_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,4),trimMean_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,5),trimMean_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,6),trimMean_acc_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,7),trimMean_acc_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,8),trimMean_acc_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,9),trimMean_acc_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,1),trimMean_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,2),trimMean_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,3),trimMean_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_acc_on_t1";
 if(u_test(percentiles_acc_on_pd(:,4),trimMean_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_acc_off_t1";
 if(u_test(trimMean_acc_off_pd(:,1),trimMean_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_acc_off_t1";
 if(u_test(trimMean_acc_off_pd(:,2),trimMean_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_acc_off_t1";
 if(u_test(trimMean_acc_off_pd(:,3),trimMean_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_acc_off_t1";
 if(u_test(trimMean_acc_off_pd(:,4),trimMean_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_acc_off_t1";
 if(u_test(trimMean_acc_off_pd(:,5),trimMean_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,1),trimMean_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,2),trimMean_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,3),trimMean_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,4),trimMean_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,5),trimMean_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,6),trimMean_acc_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,7),trimMean_acc_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,8),trimMean_acc_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,9),trimMean_acc_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,1),trimMean_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,2),trimMean_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,3),trimMean_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_acc_off_t1";
 if(u_test(percentiles_acc_off_pd(:,4),trimMean_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_jerk_on_t1";
 if(u_test(trimMean_jerk_on_pd(:,1),trimMean_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_jerk_on_t1";
 if(u_test(trimMean_jerk_on_pd(:,2),trimMean_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_jerk_on_t1";
 if(u_test(trimMean_jerk_on_pd(:,3),trimMean_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_jerk_on_t1";
 if(u_test(trimMean_jerk_on_pd(:,4),trimMean_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_jerk_on_t1";
 if(u_test(trimMean_jerk_on_pd(:,5),trimMean_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,1),trimMean_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,2),trimMean_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,3),trimMean_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,4),trimMean_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,5),trimMean_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,6),trimMean_jerk_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,7),trimMean_jerk_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,8),trimMean_jerk_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,9),trimMean_jerk_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,1),trimMean_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,2),trimMean_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,3),trimMean_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_jerk_on_t1";
 if(u_test(percentiles_jerk_on_pd(:,4),trimMean_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_jerk_off_t1";
 if(u_test(trimMean_jerk_off_pd(:,1),trimMean_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_jerk_off_t1";
 if(u_test(trimMean_jerk_off_pd(:,2),trimMean_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_jerk_off_t1";
 if(u_test(trimMean_jerk_off_pd(:,3),trimMean_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_jerk_off_t1";
 if(u_test(trimMean_jerk_off_pd(:,4),trimMean_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_jerk_off_t1";
 if(u_test(trimMean_jerk_off_pd(:,5),trimMean_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,1),trimMean_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,2),trimMean_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,3),trimMean_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,4),trimMean_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,5),trimMean_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,6),trimMean_jerk_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,7),trimMean_jerk_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,8),trimMean_jerk_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,9),trimMean_jerk_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,1),trimMean_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,2),trimMean_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,3),trimMean_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_jerk_off_t1";
 if(u_test(percentiles_jerk_off_pd(:,4),trimMean_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_x_vel_on_t1";
 if(u_test(trimMean_x_vel_on_pd(:,1),trimMean_x_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_vel_on_t1";
 if(u_test(trimMean_x_vel_on_pd(:,2),trimMean_x_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_vel_on_t1";
 if(u_test(trimMean_x_vel_on_pd(:,3),trimMean_x_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_vel_on_t1";
 if(u_test(trimMean_x_vel_on_pd(:,4),trimMean_x_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_vel_on_t1";
 if(u_test(trimMean_x_vel_on_pd(:,5),trimMean_x_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,1),trimMean_x_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,2),trimMean_x_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,3),trimMean_x_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,4),trimMean_x_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,5),trimMean_x_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,6),trimMean_x_vel_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,7),trimMean_x_vel_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,8),trimMean_x_vel_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,9),trimMean_x_vel_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,1),trimMean_x_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,2),trimMean_x_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,3),trimMean_x_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_x_vel_on_t1";
 if(u_test(percentiles_x_vel_on_pd(:,4),trimMean_x_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_x_acc_on_t1";
 if(u_test(trimMean_x_acc_on_pd(:,1),trimMean_x_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_acc_on_t1";
 if(u_test(trimMean_x_acc_on_pd(:,2),trimMean_x_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_acc_on_t1";
 if(u_test(trimMean_x_acc_on_pd(:,3),trimMean_x_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_acc_on_t1";
 if(u_test(trimMean_x_acc_on_pd(:,4),trimMean_x_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_acc_on_t1";
 if(u_test(trimMean_x_acc_on_pd(:,5),trimMean_x_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,1),trimMean_x_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,2),trimMean_x_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,3),trimMean_x_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,4),trimMean_x_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,5),trimMean_x_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,6),trimMean_x_acc_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,7),trimMean_x_acc_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,8),trimMean_x_acc_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,9),trimMean_x_acc_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,1),trimMean_x_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,2),trimMean_x_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,3),trimMean_x_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_x_acc_on_t1";
 if(u_test(percentiles_x_acc_on_pd(:,4),trimMean_x_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_x_jerk_on_t1";
 if(u_test(trimMean_x_jerk_on_pd(:,1),trimMean_x_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_jerk_on_t1";
 if(u_test(trimMean_x_jerk_on_pd(:,2),trimMean_x_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_jerk_on_t1";
 if(u_test(trimMean_x_jerk_on_pd(:,3),trimMean_x_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_jerk_on_t1";
 if(u_test(trimMean_x_jerk_on_pd(:,4),trimMean_x_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_jerk_on_t1";
 if(u_test(trimMean_x_jerk_on_pd(:,5),trimMean_x_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,1),trimMean_x_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,2),trimMean_x_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,3),trimMean_x_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,4),trimMean_x_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,5),trimMean_x_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,6),trimMean_x_jerk_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,7),trimMean_x_jerk_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,8),trimMean_x_jerk_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,9),trimMean_x_jerk_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,1),trimMean_x_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,2),trimMean_x_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,3),trimMean_x_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_x_jerk_on_t1";
 if(u_test(percentiles_x_jerk_on_pd(:,4),trimMean_x_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_y_vel_on_t1";
 if(u_test(trimMean_y_vel_on_pd(:,1),trimMean_y_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_vel_on_t1";
 if(u_test(trimMean_y_vel_on_pd(:,2),trimMean_y_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_vel_on_t1";
 if(u_test(trimMean_y_vel_on_pd(:,3),trimMean_y_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_vel_on_t1";
 if(u_test(trimMean_y_vel_on_pd(:,4),trimMean_y_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_vel_on_t1";
 if(u_test(trimMean_y_vel_on_pd(:,5),trimMean_y_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,1),trimMean_y_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,2),trimMean_y_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,3),trimMean_y_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,4),trimMean_y_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,5),trimMean_y_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,6),trimMean_y_vel_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,7),trimMean_y_vel_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,8),trimMean_y_vel_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,9),trimMean_y_vel_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,1),trimMean_y_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,2),trimMean_y_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,3),trimMean_y_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_y_vel_on_t1";
 if(u_test(percentiles_y_vel_on_pd(:,4),trimMean_y_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_y_acc_on_t1";
 if(u_test(trimMean_y_acc_on_pd(:,1),trimMean_y_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_acc_on_t1";
 if(u_test(trimMean_y_acc_on_pd(:,2),trimMean_y_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_acc_on_t1";
 if(u_test(trimMean_y_acc_on_pd(:,3),trimMean_y_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_acc_on_t1";
 if(u_test(trimMean_y_acc_on_pd(:,4),trimMean_y_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_acc_on_t1";
 if(u_test(trimMean_y_acc_on_pd(:,5),trimMean_y_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,1),trimMean_y_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,2),trimMean_y_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,3),trimMean_y_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,4),trimMean_y_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,5),trimMean_y_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,6),trimMean_y_acc_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,7),trimMean_y_acc_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,8),trimMean_y_acc_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,9),trimMean_y_acc_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,1),trimMean_y_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,2),trimMean_y_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,3),trimMean_y_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_y_acc_on_t1";
 if(u_test(percentiles_y_acc_on_pd(:,4),trimMean_y_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_y_jerk_on_t1";
 if(u_test(trimMean_y_jerk_on_pd(:,1),trimMean_y_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_jerk_on_t1";
 if(u_test(trimMean_y_jerk_on_pd(:,2),trimMean_y_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_jerk_on_t1";
 if(u_test(trimMean_y_jerk_on_pd(:,3),trimMean_y_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_jerk_on_t1";
 if(u_test(trimMean_y_jerk_on_pd(:,4),trimMean_y_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_jerk_on_t1";
 if(u_test(trimMean_y_jerk_on_pd(:,5),trimMean_y_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,1),trimMean_y_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,2),trimMean_y_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,3),trimMean_y_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,4),trimMean_y_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,5),trimMean_y_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,6),trimMean_y_jerk_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,7),trimMean_y_jerk_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,8),trimMean_y_jerk_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,9),trimMean_y_jerk_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,1),trimMean_y_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,2),trimMean_y_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,3),trimMean_y_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_y_jerk_on_t1";
 if(u_test(percentiles_y_jerk_on_pd(:,4),trimMean_y_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_x_vel_off_t1";
 if(u_test(trimMean_x_vel_off_pd(:,1),trimMean_x_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_vel_off_t1";
 if(u_test(trimMean_x_vel_off_pd(:,2),trimMean_x_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_vel_off_t1";
 if(u_test(trimMean_x_vel_off_pd(:,3),trimMean_x_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_vel_off_t1";
 if(u_test(trimMean_x_vel_off_pd(:,4),trimMean_x_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_vel_off_t1";
 if(u_test(trimMean_x_vel_off_pd(:,5),trimMean_x_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,1),trimMean_x_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,2),trimMean_x_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,3),trimMean_x_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,4),trimMean_x_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,5),trimMean_x_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,6),trimMean_x_vel_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,7),trimMean_x_vel_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,8),trimMean_x_vel_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,9),trimMean_x_vel_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,1),trimMean_x_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,2),trimMean_x_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_vel_off_t1";
 if(u_test(percentiles_x_vel_off_pd(:,3),trimMean_x_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 save passed.txt passed;
 
 save failed.txt failed;
 
