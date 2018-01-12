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



filename=


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


filename=["00001__1_1.svc","00002__1_1.svc","00003__1_1.svc","00004__1_1.svc","00005__1_1.svc","00006__1_1.svc","00007__1_1.svc","00008__1_1.svc","00009__1_1.svc","00010__1_1.svc",
"00013__1_1.svc","00014__1_1.svc","00015__1_1.svc","00016__1_1.svc","00017__1_1.svc","00018__1_1.svc","00019__1_1.svc","00020__1_1.svc","00022__1_1.svc","00023__1_1.svc",
"00024__1_1.svc","00025__1_1.svc","00026__1_1.svc","00027__1_1.svc","00028__1_1.svc","00029__1_1.svc","00030__1_1.svc","00031__1_1.svc","00032__1_1.svc","00033__1_1.svc",
"00034__1_1.svc","00036__1_1.svc","00039__1_1.svc","00040__1_1.svc","00041__1_1.svc","00043__1_1.svc","00044__1_1.svc","00048__1_1.svc","00049__1_1.svc","00051__1_1.svc",
"00052__1_1.svc","00053__1_1.svc","00054__1_1.svc","00055__1_1.svc","00057__1_1.svc","00060__1_1.svc","00061__1_1.svc","00062__1_1.svc","00066__1_1.svc","00067__1_1.svc",
"00069__1_1.svc","00070__1_1.svc","00071__1_1.svc","00072__1_1.svc","00073__1_1.svc","00074__1_1.svc","00075__1_1.svc","00076__1_1.svc","00077__1_1.svc","00078__1_1.svc",
"00080__1_1.svc","00082__1_1.svc","00083__1_1.svc","00084__1_1.svc","00085__1_1.svc","00087__1_1.svc","00089__1_1.svc","00090__1_1.svc","00091__1_1.svc","00092__1_1.svc",
"00094__1_1.svc","00095__1_1.svc","00096__1_1.svc","00097__1_1.svc","00098__1_1.svc"];

for k=1:length(filename)
 
 
 [pressure_rate,x_vel_on,y_vel_on,time_interval_on,time_interval_off,speed,ncv_on,
  nca_on,rel_NCV_on,rel_NCA_on,norm_onTime,ncp,rel_NCP,ncv_off,nca_off,rel_NCV_off,rel_NCA_off
  norm_offTime,off_onTime,arithMean,geoMean,trimMean,percentiles,moments,kurto,ranges,
  medians,modes,stdDevs,robustRange,interQuartiles,x_shannon,y_shannon,x_renyi2,y_renyi2,
  x_renyi3,y_renyi3,snr_ce_x,snr_ce_y,snr_tke1_x,snr_tke1_y,x_shannon_i1,y_shannon_i1
  x_renyi2_i1,y_renyi2_i1,x_renyi3_i1,y_renyi3_i1,x_shannon_i2,y_shannon_i2,x_renyi2_i2,
  y_renyi2_i2,x_renyi3_i2,y_renyi3_i2,snr_ice_x,snr_ice_y,snr_itke1_x,snr_itke1_y,snr_itke2_x
  snr_itke2_y]=kinematic_features(filename(k));
  
  
  

  
end;
  
  
  
  
  
  

endfunction
