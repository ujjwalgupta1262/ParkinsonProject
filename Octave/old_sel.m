old_hc_ind = [2,5,6,8,10,14,15,16,17,18,20,17,29,32,36,37];
old_pd_ind = [1,2,3,4,5,7,9,10,11,13,14,15,16,17,18,19,20,21,25,28,29,30,33,34,36,37];
speed_hc=importdata("speed_hc_t2.txt","\n",5).data(old_hc_ind);
NCV_on_hc=importdata("NCV_on_hc_t2.txt","\n",5).data(old_hc_ind);
NCA_on_hc=importdata("NCA_on_hc_t2.txt","\n",5).data(old_hc_ind);
rel_NCV_on_hc=importdata("rel_NCV_on_hc_t2.txt","\n",5).data(old_hc_ind);
rel_NCA_on_hc=importdata("rel_NCA_on_hc_t2.txt","\n",5).data(old_hc_ind);
norm_onTime_hc=importdata("norm_onTime_hc_t2.txt","\n",5).data(old_hc_ind);
NCP_hc=importdata("NCP_hc_t2.txt","\n",5).data(old_hc_ind);
rel_NCP_hc=importdata("rel_NCP_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_strokespeed_hc=importdata("arithMean_strokespeed_hc_t2.txt","\n",5).data(old_hc_ind);

geoMean_strokespeed_hc=importdata("geoMean_strokespeed_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_strokespeed_hc=importdata("trimMean_strokespeed_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_strokespeed_hc=importdata("percentiles_strokespeed_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_strokespeed_hc=importdata("moments_strokespeed_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_strokespeed_hc=importdata("kurto_strokespeed_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_strokespeed_hc=importdata("ranges_strokespeed_hc_t2.txt","\n",5).data(old_hc_ind);
medians_strokespeed_hc=importdata("medians_strokespeed_hc_t2.txt","\n",5).data(old_hc_ind);
modes_strokespeed_hc=importdata("modes_strokespeed_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_strokespeed_hc=importdata("stdDevs_strokespeed_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_strokespeed_hc=importdata("robustRange_strokespeed_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_strokespeed_hc=importdata("interQuartiles_strokespeed_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_vel_on_hc=importdata("arithMean_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_vel_on_hc=importdata("geoMean_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_vel_on_hc=importdata("trimMean_vel_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_vel_on_hc=importdata("percentiles_vel_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_vel_on_hc=importdata("moments_vel_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_vel_on_hc=importdata("kurto_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_vel_on_hc=importdata("ranges_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
medians_vel_on_hc=importdata("medians_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
modes_vel_on_hc=importdata("modes_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_vel_on_hc=importdata("stdDevs_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_vel_on_hc=importdata("robustRange_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_vel_on_hc=importdata("interQuartiles_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_acc_on_hc=importdata("arithMean_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_acc_on_hc=importdata("geoMean_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_acc_on_hc=importdata("trimMean_acc_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_acc_on_hc=importdata("percentiles_acc_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_acc_on_hc=importdata("moments_acc_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_acc_on_hc=importdata("kurto_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_acc_on_hc=importdata("ranges_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
medians_acc_on_hc=importdata("medians_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
modes_acc_on_hc=importdata("modes_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_acc_on_hc=importdata("stdDevs_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_acc_on_hc=importdata("robustRange_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_acc_on_hc=importdata("interQuartiles_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_jerk_on_hc=importdata("arithMean_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_jerk_on_hc=importdata("geoMean_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_jerk_on_hc=importdata("trimMean_jerk_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_jerk_on_hc=importdata("percentiles_jerk_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_jerk_on_hc=importdata("moments_jerk_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_jerk_on_hc=importdata("kurto_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_jerk_on_hc=importdata("ranges_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
medians_jerk_on_hc=importdata("medians_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
modes_jerk_on_hc=importdata("modes_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_jerk_on_hc=importdata("stdDevs_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_jerk_on_hc=importdata("robustRange_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_jerk_on_hc=importdata("interQuartiles_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_x_vel_on_hc=importdata("arithMean_x_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_x_vel_on_hc=importdata("geoMean_x_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_x_vel_on_hc=importdata("trimMean_x_vel_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_x_vel_on_hc=importdata("percentiles_x_vel_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_x_vel_on_hc=importdata("moments_x_vel_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_x_vel_on_hc=importdata("kurto_x_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_x_vel_on_hc=importdata("ranges_x_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
medians_x_vel_on_hc=importdata("medians_x_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
modes_x_vel_on_hc=importdata("modes_x_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_x_vel_on_hc=importdata("stdDevs_x_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_x_vel_on_hc=importdata("robustRange_x_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_x_vel_on_hc=importdata("interQuartiles_x_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_x_acc_on_hc=importdata("arithMean_x_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_x_acc_on_hc=importdata("geoMean_x_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_x_acc_on_hc=importdata("trimMean_x_acc_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_x_acc_on_hc=importdata("percentiles_x_acc_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_x_acc_on_hc=importdata("moments_x_acc_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_x_acc_on_hc=importdata("kurto_x_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_x_acc_on_hc=importdata("ranges_x_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
medians_x_acc_on_hc=importdata("medians_x_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
modes_x_acc_on_hc=importdata("modes_x_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_x_acc_on_hc=importdata("stdDevs_x_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_x_acc_on_hc=importdata("robustRange_x_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_x_acc_on_hc=importdata("interQuartiles_x_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_x_jerk_on_hc=importdata("arithMean_x_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_x_jerk_on_hc=importdata("geoMean_x_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_x_jerk_on_hc=importdata("trimMean_x_jerk_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_x_jerk_on_hc=importdata("percentiles_x_jerk_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_x_jerk_on_hc=importdata("moments_x_jerk_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_x_jerk_on_hc=importdata("kurto_x_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_x_jerk_on_hc=importdata("ranges_x_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
medians_x_jerk_on_hc=importdata("medians_x_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
modes_x_jerk_on_hc=importdata("modes_x_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_x_jerk_on_hc=importdata("stdDevs_x_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_x_jerk_on_hc=importdata("robustRange_x_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_x_jerk_on_hc=importdata("interQuartiles_x_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_y_vel_on_hc=importdata("arithMean_y_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_y_vel_on_hc=importdata("geoMean_y_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_y_vel_on_hc=importdata("trimMean_y_vel_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_y_vel_on_hc=importdata("percentiles_y_vel_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_y_vel_on_hc=importdata("moments_y_vel_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_y_vel_on_hc=importdata("kurto_y_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_y_vel_on_hc=importdata("ranges_y_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
medians_y_vel_on_hc=importdata("medians_y_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
modes_y_vel_on_hc=importdata("modes_y_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_y_vel_on_hc=importdata("stdDevs_y_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_y_vel_on_hc=importdata("robustRange_y_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_y_vel_on_hc=importdata("interQuartiles_y_vel_on_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_y_acc_on_hc=importdata("arithMean_y_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_y_acc_on_hc=importdata("geoMean_y_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_y_acc_on_hc=importdata("trimMean_y_acc_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_y_acc_on_hc=importdata("percentiles_y_acc_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_y_acc_on_hc=importdata("moments_y_acc_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_y_acc_on_hc=importdata("kurto_y_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_y_acc_on_hc=importdata("ranges_y_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
medians_y_acc_on_hc=importdata("medians_y_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
modes_y_acc_on_hc=importdata("modes_y_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_y_acc_on_hc=importdata("stdDevs_y_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_y_acc_on_hc=importdata("robustRange_y_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_y_acc_on_hc=importdata("interQuartiles_y_acc_on_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_y_jerk_on_hc=importdata("arithMean_y_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_y_jerk_on_hc=importdata("geoMean_y_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_y_jerk_on_hc=importdata("trimMean_y_jerk_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_y_jerk_on_hc=importdata("percentiles_y_jerk_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_y_jerk_on_hc=importdata("moments_y_jerk_on_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_y_jerk_on_hc=importdata("kurto_y_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_y_jerk_on_hc=importdata("ranges_y_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
medians_y_jerk_on_hc=importdata("medians_y_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
modes_y_jerk_on_hc=importdata("modes_y_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_y_jerk_on_hc=importdata("stdDevs_y_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_y_jerk_on_hc=importdata("robustRange_y_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_y_jerk_on_hc=importdata("interQuartiles_y_jerk_on_hc_t2.txt","\n",5).data(old_hc_ind);

norm_offTime_hc=importdata("norm_offTime_hc_t2.txt","\n",5).data(old_hc_ind);
NCV_off_hc=importdata("NCV_off_hc_t2.txt","\n",5).data(old_hc_ind);
NCA_off_hc=importdata("NCA_off_hc_t2.txt","\n",5).data(old_hc_ind);
rel_NCV_off_hc=importdata("rel_NCV_off_hc_t2.txt","\n",5).data(old_hc_ind);
rel_NCA_off_hc=importdata("rel_NCA_off_hc_t2.txt","\n",5).data(old_hc_ind);


arithMean_vel_off_hc=importdata("arithMean_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_vel_off_hc=importdata("geoMean_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_vel_off_hc=importdata("trimMean_vel_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_vel_off_hc=importdata("percentiles_vel_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_vel_off_hc=importdata("moments_vel_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_vel_off_hc=importdata("kurto_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_vel_off_hc=importdata("ranges_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
medians_vel_off_hc=importdata("medians_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
modes_vel_off_hc=importdata("modes_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_vel_off_hc=importdata("stdDevs_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_vel_off_hc=importdata("robustRange_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_vel_off_hc=importdata("interQuartiles_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_acc_off_hc=importdata("arithMean_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_acc_off_hc=importdata("geoMean_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_acc_off_hc=importdata("trimMean_acc_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_acc_off_hc=importdata("percentiles_acc_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_acc_off_hc=importdata("moments_acc_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_acc_off_hc=importdata("kurto_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_acc_off_hc=importdata("ranges_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
medians_acc_off_hc=importdata("medians_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
modes_acc_off_hc=importdata("modes_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_acc_off_hc=importdata("stdDevs_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_acc_off_hc=importdata("robustRange_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_acc_off_hc=importdata("interQuartiles_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_jerk_off_hc=importdata("arithMean_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_jerk_off_hc=importdata("geoMean_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_jerk_off_hc=importdata("trimMean_jerk_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_jerk_off_hc=importdata("percentiles_jerk_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_jerk_off_hc=importdata("moments_jerk_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_jerk_off_hc=importdata("kurto_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_jerk_off_hc=importdata("ranges_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
medians_jerk_off_hc=importdata("medians_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
modes_jerk_off_hc=importdata("modes_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_jerk_off_hc=importdata("stdDevs_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_jerk_off_hc=importdata("robustRange_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_jerk_off_hc=importdata("interQuartiles_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_x_vel_off_hc=importdata("arithMean_x_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_x_vel_off_hc=importdata("geoMean_x_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_x_vel_off_hc=importdata("trimMean_x_vel_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_x_vel_off_hc=importdata("percentiles_x_vel_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_x_vel_off_hc=importdata("moments_x_vel_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_x_vel_off_hc=importdata("kurto_x_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_x_vel_off_hc=importdata("ranges_x_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
medians_x_vel_off_hc=importdata("medians_x_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
modes_x_vel_off_hc=importdata("modes_x_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_x_vel_off_hc=importdata("stdDevs_x_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_x_vel_off_hc=importdata("robustRange_x_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_x_vel_off_hc=importdata("interQuartiles_x_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_x_acc_off_hc=importdata("arithMean_x_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_x_acc_off_hc=importdata("geoMean_x_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_x_acc_off_hc=importdata("trimMean_x_acc_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_x_acc_off_hc=importdata("percentiles_x_acc_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_x_acc_off_hc=importdata("moments_x_acc_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_x_acc_off_hc=importdata("kurto_x_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_x_acc_off_hc=importdata("ranges_x_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
medians_x_acc_off_hc=importdata("medians_x_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
modes_x_acc_off_hc=importdata("modes_x_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_x_acc_off_hc=importdata("stdDevs_x_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_x_acc_off_hc=importdata("robustRange_x_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_x_acc_off_hc=importdata("interQuartiles_x_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_x_jerk_off_hc=importdata("arithMean_x_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_x_jerk_off_hc=importdata("geoMean_x_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_x_jerk_off_hc=importdata("trimMean_x_jerk_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_x_jerk_off_hc=importdata("percentiles_x_jerk_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_x_jerk_off_hc=importdata("moments_x_jerk_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_x_jerk_off_hc=importdata("kurto_x_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_x_jerk_off_hc=importdata("ranges_x_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
medians_x_jerk_off_hc=importdata("medians_x_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
modes_x_jerk_off_hc=importdata("modes_x_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_x_jerk_off_hc=importdata("stdDevs_x_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_x_jerk_off_hc=importdata("robustRange_x_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_x_jerk_off_hc=importdata("interQuartiles_x_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_y_vel_off_hc=importdata("arithMean_y_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_y_vel_off_hc=importdata("geoMean_y_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_y_vel_off_hc=importdata("trimMean_y_vel_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_y_vel_off_hc=importdata("percentiles_y_vel_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_y_vel_off_hc=importdata("moments_y_vel_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_y_vel_off_hc=importdata("kurto_y_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_y_vel_off_hc=importdata("ranges_y_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
medians_y_vel_off_hc=importdata("medians_y_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
modes_y_vel_off_hc=importdata("modes_y_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_y_vel_off_hc=importdata("stdDevs_y_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_y_vel_off_hc=importdata("robustRange_y_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_y_vel_off_hc=importdata("interQuartiles_y_vel_off_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_y_acc_off_hc=importdata("arithMean_y_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_y_acc_off_hc=importdata("geoMean_y_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_y_acc_off_hc=importdata("trimMean_y_acc_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_y_acc_off_hc=importdata("percentiles_y_acc_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_y_acc_off_hc=importdata("moments_y_acc_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_y_acc_off_hc=importdata("kurto_y_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_y_acc_off_hc=importdata("ranges_y_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
medians_y_acc_off_hc=importdata("medians_y_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
modes_y_acc_off_hc=importdata("modes_y_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_y_acc_off_hc=importdata("stdDevs_y_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_y_acc_off_hc=importdata("robustRange_y_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_y_acc_off_hc=importdata("interQuartiles_y_acc_off_hc_t2.txt","\n",5).data(old_hc_ind);

arithMean_y_jerk_off_hc=importdata("arithMean_y_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_y_jerk_off_hc=importdata("geoMean_y_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_y_jerk_off_hc=importdata("trimMean_y_jerk_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_y_jerk_off_hc=importdata("percentiles_y_jerk_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_y_jerk_off_hc=importdata("moments_y_jerk_off_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_y_jerk_off_hc=importdata("kurto_y_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_y_jerk_off_hc=importdata("ranges_y_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
medians_y_jerk_off_hc=importdata("medians_y_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
modes_y_jerk_off_hc=importdata("modes_y_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_y_jerk_off_hc=importdata("stdDevs_y_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_y_jerk_off_hc=importdata("robustRange_y_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_y_jerk_off_hc=importdata("interQuartiles_y_jerk_off_hc_t2.txt","\n",5).data(old_hc_ind);

old_hc_ind = [2,5,6,8,9,10,11,14,15,19,22,23,25,26,30,31,32,35,36,38];

arithMean_pressure_rate_hc=importdata("arithMean_pressure_rate_hc_t2.txt","\n",5).data(old_hc_ind);
geoMean_pressure_rate_hc=importdata("geoMean_pressure_rate_hc_t2.txt","\n",5).data(old_hc_ind);
trimMean_pressure_rate_hc=importdata("trimMean_pressure_rate_hc_t2.txt"," ",5).data(old_hc_ind,:);
percentiles_pressure_rate_hc=importdata("percentiles_pressure_rate_hc_t2.txt"," ",5).data(old_hc_ind,:);
moments_pressure_rate_hc=importdata("moments_pressure_rate_hc_t2.txt"," ",5).data(old_hc_ind,:);
kurto_pressure_rate_hc=importdata("kurto_pressure_rate_hc_t2.txt","\n",5).data(old_hc_ind);
ranges_pressure_rate_hc=importdata("ranges_pressure_rate_hc_t2.txt","\n",5).data(old_hc_ind);
medians_pressure_rate_hc=importdata("medians_pressure_rate_hc_t2.txt","\n",5).data(old_hc_ind);
modes_pressure_rate_hc=importdata("modes_pressure_rate_hc_t2.txt","\n",5).data(old_hc_ind);
stdDevs_pressure_rate_hc=importdata("stdDevs_pressure_rate_hc_t2.txt","\n",5).data(old_hc_ind);
robustRange_pressure_rate_hc=importdata("robustRange_pressure_rate_hc_t2.txt","\n",5).data(old_hc_ind);
interQuartiles_pressure_rate_hc=importdata("interQuartiles_pressure_rate_hc_t2.txt","\n",5).data(old_hc_ind);

x_shannon_hc=importdata("x_shannon_hc_t2.txt","\n",5).data(old_hc_ind);
y_shannon_hc=importdata("y_shannon_hc_t2.txt","\n",5).data(old_hc_ind);
x_renyi2_hc=importdata("x_renyi2_hc_t2.txt","\n",5).data(old_hc_ind);
y_renyi2_hc=importdata("y_renyi2_hc_t2.txt","\n",5).data(old_hc_ind);
x_renyi3_hc=importdata("x_renyi3_hc_t2.txt","\n",5).data(old_hc_ind);
y_renyi3_hc=importdata("y_renyi3_hc_t2.txt","\n",5).data(old_hc_ind);
snr_ce_x_hc=importdata("snr_ce_x_hc_t2.txt","\n",5).data(old_hc_ind);
snr_ce_y_hc=importdata("snr_ce_y_hc_t2.txt","\n",5).data(old_hc_ind);
snr_tke1_x_hc=importdata("snr_tke1_x_hc_t2.txt","\n",5).data(old_hc_ind);
snr_tke1_y_hc=importdata("snr_tke1_y_hc_t2.txt","\n",5).data(old_hc_ind);
snr_tke2_x_hc=importdata("snr_tke2_x_hc_t2.txt","\n",5).data(old_hc_ind);
snr_tke2_y_hc=importdata("snr_tke2_y_hc_t2.txt","\n",5).data(old_hc_ind);
x_shannon_i1_hc=importdata("x_shannon_i1_hc_t2.txt","\n",5).data(old_hc_ind);
y_shannon_i1_hc=importdata("y_shannon_i1_hc_t2.txt","\n",5).data(old_hc_ind);
x_renyi2_i1_hc=importdata("x_renyi2_i1_hc_t2.txt","\n",5).data(old_hc_ind);
y_renyi2_i1_hc=importdata("y_renyi2_i1_hc_t2.txt","\n",5).data(old_hc_ind);
x_renyi3_i1_hc=importdata("x_renyi3_i1_hc_t2.txt","\n",5).data(old_hc_ind);
y_renyi3_i1_hc=importdata("y_renyi3_i1_hc_t2.txt","\n",5).data(old_hc_ind);
x_shannon_i2_hc=importdata("x_shannon_i2_hc_t2.txt","\n",5).data(old_hc_ind);
y_shannon_i2_hc=importdata("y_shannon_i2_hc_t2.txt","\n",5).data(old_hc_ind);
x_renyi2_i2_hc=importdata("x_renyi2_i2_hc_t2.txt","\n",5).data(old_hc_ind);
y_renyi2_i2_hc=importdata("y_renyi2_i2_hc_t2.txt","\n",5).data(old_hc_ind);
x_renyi3_i2_hc=importdata("x_renyi3_i2_hc_t2.txt","\n",5).data(old_hc_ind);
y_renyi3_i2_hc=importdata("y_renyi3_i2_hc_t2.txt","\n",5).data(old_hc_ind);
snr_ice_x_hc=importdata("snr_ice_x_hc_t2.txt","\n",5).data(old_hc_ind);
snr_ice_y_hc=importdata("snr_ice_y_hc_t2.txt","\n",5).data(old_hc_ind);
snr_itke1_x_hc=importdata("snr_itke1_x_hc_t2.txt","\n",5).data(old_hc_ind);
%snr_itke1_y_hc=importdata("snr_itke1_y_hc_t2.txt","\n",5).data(old_hc_ind);
snr_itke2_x_hc=importdata("snr_itke2_x_hc_t2.txt","\n",5).data(old_hc_ind);
snr_itke2_y_hc=importdata("snr_itke2_y_hc_t2.txt","\n",5).data(old_hc_ind);


speed_pd=importdata("speed_pd_t2.txt","\n",5).data(old_pd_ind);
NCV_on_pd=importdata("NCV_on_pd_t2.txt","\n",5).data(old_pd_ind);
NCA_on_pd=importdata("NCA_on_pd_t2.txt","\n",5).data(old_pd_ind);
rel_NCV_on_pd=importdata("rel_NCV_on_pd_t2.txt","\n",5).data(old_pd_ind);
rel_NCA_on_pd=importdata("rel_NCA_on_pd_t2.txt","\n",5).data(old_pd_ind);
norm_onTime_pd=importdata("norm_onTime_pd_t2.txt","\n",5).data(old_pd_ind);
NCP_pd=importdata("NCP_pd_t2.txt","\n",5).data(old_pd_ind);
rel_NCP_pd=importdata("rel_NCP_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_strokespeed_pd=importdata("arithMean_strokespeed_pd_t2.txt","\n",5).data(old_pd_ind);

geoMean_strokespeed_pd=importdata("geoMean_strokespeed_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_strokespeed_pd=importdata("trimMean_strokespeed_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_strokespeed_pd=importdata("percentiles_strokespeed_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_strokespeed_pd=importdata("moments_strokespeed_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_strokespeed_pd=importdata("kurto_strokespeed_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_strokespeed_pd=importdata("ranges_strokespeed_pd_t2.txt","\n",5).data(old_pd_ind);
medians_strokespeed_pd=importdata("medians_strokespeed_pd_t2.txt","\n",5).data(old_pd_ind);
modes_strokespeed_pd=importdata("modes_strokespeed_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_strokespeed_pd=importdata("stdDevs_strokespeed_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_strokespeed_pd=importdata("robustRange_strokespeed_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_strokespeed_pd=importdata("interQuartiles_strokespeed_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_vel_on_pd=importdata("arithMean_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_vel_on_pd=importdata("geoMean_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_vel_on_pd=importdata("trimMean_vel_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_vel_on_pd=importdata("percentiles_vel_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_vel_on_pd=importdata("moments_vel_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_vel_on_pd=importdata("kurto_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_vel_on_pd=importdata("ranges_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
medians_vel_on_pd=importdata("medians_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
modes_vel_on_pd=importdata("modes_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_vel_on_pd=importdata("stdDevs_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_vel_on_pd=importdata("robustRange_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_vel_on_pd=importdata("interQuartiles_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_acc_on_pd=importdata("arithMean_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_acc_on_pd=importdata("geoMean_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_acc_on_pd=importdata("trimMean_acc_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_acc_on_pd=importdata("percentiles_acc_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_acc_on_pd=importdata("moments_acc_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_acc_on_pd=importdata("kurto_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_acc_on_pd=importdata("ranges_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
medians_acc_on_pd=importdata("medians_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
modes_acc_on_pd=importdata("modes_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_acc_on_pd=importdata("stdDevs_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_acc_on_pd=importdata("robustRange_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_acc_on_pd=importdata("interQuartiles_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_jerk_on_pd=importdata("arithMean_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_jerk_on_pd=importdata("geoMean_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_jerk_on_pd=importdata("trimMean_jerk_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_jerk_on_pd=importdata("percentiles_jerk_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_jerk_on_pd=importdata("moments_jerk_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_jerk_on_pd=importdata("kurto_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_jerk_on_pd=importdata("ranges_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
medians_jerk_on_pd=importdata("medians_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
modes_jerk_on_pd=importdata("modes_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_jerk_on_pd=importdata("stdDevs_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_jerk_on_pd=importdata("robustRange_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_jerk_on_pd=importdata("interQuartiles_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_x_vel_on_pd=importdata("arithMean_x_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_x_vel_on_pd=importdata("geoMean_x_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_x_vel_on_pd=importdata("trimMean_x_vel_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_x_vel_on_pd=importdata("percentiles_x_vel_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_x_vel_on_pd=importdata("moments_x_vel_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_x_vel_on_pd=importdata("kurto_x_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_x_vel_on_pd=importdata("ranges_x_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
medians_x_vel_on_pd=importdata("medians_x_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
modes_x_vel_on_pd=importdata("modes_x_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_x_vel_on_pd=importdata("stdDevs_x_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_x_vel_on_pd=importdata("robustRange_x_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_x_vel_on_pd=importdata("interQuartiles_x_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_x_acc_on_pd=importdata("arithMean_x_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_x_acc_on_pd=importdata("geoMean_x_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_x_acc_on_pd=importdata("trimMean_x_acc_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_x_acc_on_pd=importdata("percentiles_x_acc_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_x_acc_on_pd=importdata("moments_x_acc_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_x_acc_on_pd=importdata("kurto_x_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_x_acc_on_pd=importdata("ranges_x_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
medians_x_acc_on_pd=importdata("medians_x_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
modes_x_acc_on_pd=importdata("modes_x_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_x_acc_on_pd=importdata("stdDevs_x_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_x_acc_on_pd=importdata("robustRange_x_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_x_acc_on_pd=importdata("interQuartiles_x_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_x_jerk_on_pd=importdata("arithMean_x_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_x_jerk_on_pd=importdata("geoMean_x_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_x_jerk_on_pd=importdata("trimMean_x_jerk_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_x_jerk_on_pd=importdata("percentiles_x_jerk_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_x_jerk_on_pd=importdata("moments_x_jerk_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_x_jerk_on_pd=importdata("kurto_x_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_x_jerk_on_pd=importdata("ranges_x_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
medians_x_jerk_on_pd=importdata("medians_x_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
modes_x_jerk_on_pd=importdata("modes_x_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_x_jerk_on_pd=importdata("stdDevs_x_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_x_jerk_on_pd=importdata("robustRange_x_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_x_jerk_on_pd=importdata("interQuartiles_x_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_y_vel_on_pd=importdata("arithMean_y_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_y_vel_on_pd=importdata("geoMean_y_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_y_vel_on_pd=importdata("trimMean_y_vel_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_y_vel_on_pd=importdata("percentiles_y_vel_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_y_vel_on_pd=importdata("moments_y_vel_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_y_vel_on_pd=importdata("kurto_y_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_y_vel_on_pd=importdata("ranges_y_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
medians_y_vel_on_pd=importdata("medians_y_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
modes_y_vel_on_pd=importdata("modes_y_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_y_vel_on_pd=importdata("stdDevs_y_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_y_vel_on_pd=importdata("robustRange_y_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_y_vel_on_pd=importdata("interQuartiles_y_vel_on_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_y_acc_on_pd=importdata("arithMean_y_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_y_acc_on_pd=importdata("geoMean_y_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_y_acc_on_pd=importdata("trimMean_y_acc_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_y_acc_on_pd=importdata("percentiles_y_acc_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_y_acc_on_pd=importdata("moments_y_acc_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_y_acc_on_pd=importdata("kurto_y_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_y_acc_on_pd=importdata("ranges_y_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
medians_y_acc_on_pd=importdata("medians_y_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
modes_y_acc_on_pd=importdata("modes_y_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_y_acc_on_pd=importdata("stdDevs_y_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_y_acc_on_pd=importdata("robustRange_y_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_y_acc_on_pd=importdata("interQuartiles_y_acc_on_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_y_jerk_on_pd=importdata("arithMean_y_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_y_jerk_on_pd=importdata("geoMean_y_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_y_jerk_on_pd=importdata("trimMean_y_jerk_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_y_jerk_on_pd=importdata("percentiles_y_jerk_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_y_jerk_on_pd=importdata("moments_y_jerk_on_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_y_jerk_on_pd=importdata("kurto_y_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_y_jerk_on_pd=importdata("ranges_y_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
medians_y_jerk_on_pd=importdata("medians_y_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
modes_y_jerk_on_pd=importdata("modes_y_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_y_jerk_on_pd=importdata("stdDevs_y_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_y_jerk_on_pd=importdata("robustRange_y_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_y_jerk_on_pd=importdata("interQuartiles_y_jerk_on_pd_t2.txt","\n",5).data(old_pd_ind);

norm_offTime_pd=importdata("norm_offTime_pd_t2.txt","\n",5).data(old_pd_ind);
NCV_off_pd=importdata("NCV_off_pd_t2.txt","\n",5).data(old_pd_ind);
NCA_off_pd=importdata("NCA_off_pd_t2.txt","\n",5).data(old_pd_ind);
rel_NCV_off_pd=importdata("rel_NCV_off_pd_t2.txt","\n",5).data(old_pd_ind);
rel_NCA_off_pd=importdata("rel_NCA_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_vel_off_pd=importdata("arithMean_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_vel_off_pd=importdata("geoMean_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_vel_off_pd=importdata("trimMean_vel_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_vel_off_pd=importdata("percentiles_vel_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_vel_off_pd=importdata("moments_vel_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_vel_off_pd=importdata("kurto_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_vel_off_pd=importdata("ranges_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
medians_vel_off_pd=importdata("medians_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
modes_vel_off_pd=importdata("modes_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_vel_off_pd=importdata("stdDevs_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_vel_off_pd=importdata("robustRange_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_vel_off_pd=importdata("interQuartiles_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_acc_off_pd=importdata("arithMean_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_acc_off_pd=importdata("geoMean_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_acc_off_pd=importdata("trimMean_acc_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_acc_off_pd=importdata("percentiles_acc_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_acc_off_pd=importdata("moments_acc_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_acc_off_pd=importdata("kurto_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_acc_off_pd=importdata("ranges_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
medians_acc_off_pd=importdata("medians_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
modes_acc_off_pd=importdata("modes_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_acc_off_pd=importdata("stdDevs_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_acc_off_pd=importdata("robustRange_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_acc_off_pd=importdata("interQuartiles_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_jerk_off_pd=importdata("arithMean_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_jerk_off_pd=importdata("geoMean_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_jerk_off_pd=importdata("trimMean_jerk_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_jerk_off_pd=importdata("percentiles_jerk_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_jerk_off_pd=importdata("moments_jerk_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_jerk_off_pd=importdata("kurto_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_jerk_off_pd=importdata("ranges_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
medians_jerk_off_pd=importdata("medians_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
modes_jerk_off_pd=importdata("modes_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_jerk_off_pd=importdata("stdDevs_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_jerk_off_pd=importdata("robustRange_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_jerk_off_pd=importdata("interQuartiles_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_x_vel_off_pd=importdata("arithMean_x_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_x_vel_off_pd=importdata("geoMean_x_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_x_vel_off_pd=importdata("trimMean_x_vel_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_x_vel_off_pd=importdata("percentiles_x_vel_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_x_vel_off_pd=importdata("moments_x_vel_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_x_vel_off_pd=importdata("kurto_x_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_x_vel_off_pd=importdata("ranges_x_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
medians_x_vel_off_pd=importdata("medians_x_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
modes_x_vel_off_pd=importdata("modes_x_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_x_vel_off_pd=importdata("stdDevs_x_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_x_vel_off_pd=importdata("robustRange_x_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_x_vel_off_pd=importdata("interQuartiles_x_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_x_acc_off_pd=importdata("arithMean_x_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_x_acc_off_pd=importdata("geoMean_x_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_x_acc_off_pd=importdata("trimMean_x_acc_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_x_acc_off_pd=importdata("percentiles_x_acc_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_x_acc_off_pd=importdata("moments_x_acc_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_x_acc_off_pd=importdata("kurto_x_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_x_acc_off_pd=importdata("ranges_x_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
medians_x_acc_off_pd=importdata("medians_x_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
modes_x_acc_off_pd=importdata("modes_x_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_x_acc_off_pd=importdata("stdDevs_x_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_x_acc_off_pd=importdata("robustRange_x_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_x_acc_off_pd=importdata("interQuartiles_x_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_x_jerk_off_pd=importdata("arithMean_x_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_x_jerk_off_pd=importdata("geoMean_x_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_x_jerk_off_pd=importdata("trimMean_x_jerk_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_x_jerk_off_pd=importdata("percentiles_x_jerk_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_x_jerk_off_pd=importdata("moments_x_jerk_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_x_jerk_off_pd=importdata("kurto_x_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_x_jerk_off_pd=importdata("ranges_x_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
medians_x_jerk_off_pd=importdata("medians_x_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
modes_x_jerk_off_pd=importdata("modes_x_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_x_jerk_off_pd=importdata("stdDevs_x_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_x_jerk_off_pd=importdata("robustRange_x_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_x_jerk_off_pd=importdata("interQuartiles_x_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_y_vel_off_pd=importdata("arithMean_y_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_y_vel_off_pd=importdata("geoMean_y_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_y_vel_off_pd=importdata("trimMean_y_vel_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_y_vel_off_pd=importdata("percentiles_y_vel_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_y_vel_off_pd=importdata("moments_y_vel_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_y_vel_off_pd=importdata("kurto_y_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_y_vel_off_pd=importdata("ranges_y_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
medians_y_vel_off_pd=importdata("medians_y_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
modes_y_vel_off_pd=importdata("modes_y_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_y_vel_off_pd=importdata("stdDevs_y_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_y_vel_off_pd=importdata("robustRange_y_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_y_vel_off_pd=importdata("interQuartiles_y_vel_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_y_acc_off_pd=importdata("arithMean_y_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_y_acc_off_pd=importdata("geoMean_y_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_y_acc_off_pd=importdata("trimMean_y_acc_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_y_acc_off_pd=importdata("percentiles_y_acc_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_y_acc_off_pd=importdata("moments_y_acc_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_y_acc_off_pd=importdata("kurto_y_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_y_acc_off_pd=importdata("ranges_y_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
medians_y_acc_off_pd=importdata("medians_y_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
modes_y_acc_off_pd=importdata("modes_y_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_y_acc_off_pd=importdata("stdDevs_y_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_y_acc_off_pd=importdata("robustRange_y_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_y_acc_off_pd=importdata("interQuartiles_y_acc_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_y_jerk_off_pd=importdata("arithMean_y_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_y_jerk_off_pd=importdata("geoMean_y_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_y_jerk_off_pd=importdata("trimMean_y_jerk_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_y_jerk_off_pd=importdata("percentiles_y_jerk_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_y_jerk_off_pd=importdata("moments_y_jerk_off_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_y_jerk_off_pd=importdata("kurto_y_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_y_jerk_off_pd=importdata("ranges_y_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
medians_y_jerk_off_pd=importdata("medians_y_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
modes_y_jerk_off_pd=importdata("modes_y_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_y_jerk_off_pd=importdata("stdDevs_y_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_y_jerk_off_pd=importdata("robustRange_y_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_y_jerk_off_pd=importdata("interQuartiles_y_jerk_off_pd_t2.txt","\n",5).data(old_pd_ind);

arithMean_pressure_rate_pd=importdata("arithMean_pressure_rate_pd_t2.txt","\n",5).data(old_pd_ind);
geoMean_pressure_rate_pd=importdata("geoMean_pressure_rate_pd_t2.txt","\n",5).data(old_pd_ind);
trimMean_pressure_rate_pd=importdata("trimMean_pressure_rate_pd_t2.txt"," ",5).data(old_pd_ind,:);
percentiles_pressure_rate_pd=importdata("percentiles_pressure_rate_pd_t2.txt"," ",5).data(old_pd_ind,:);
moments_pressure_rate_pd=importdata("moments_pressure_rate_pd_t2.txt"," ",5).data(old_pd_ind,:);
kurto_pressure_rate_pd=importdata("kurto_pressure_rate_pd_t2.txt","\n",5).data(old_pd_ind);
ranges_pressure_rate_pd=importdata("ranges_pressure_rate_pd_t2.txt","\n",5).data(old_pd_ind);
medians_pressure_rate_pd=importdata("medians_pressure_rate_pd_t2.txt","\n",5).data(old_pd_ind);
modes_pressure_rate_pd=importdata("modes_pressure_rate_pd_t2.txt","\n",5).data(old_pd_ind);
stdDevs_pressure_rate_pd=importdata("stdDevs_pressure_rate_pd_t2.txt","\n",5).data(old_pd_ind);
robustRange_pressure_rate_pd=importdata("robustRange_pressure_rate_pd_t2.txt","\n",5).data(old_pd_ind);
interQuartiles_pressure_rate_pd=importdata("interQuartiles_pressure_rate_pd_t2.txt","\n",5).data(old_pd_ind);

x_shannon_pd=importdata("x_shannon_pd_t2.txt","\n",5).data(old_pd_ind);
y_shannon_pd=importdata("y_shannon_pd_t2.txt","\n",5).data(old_pd_ind);
x_renyi2_pd=importdata("x_renyi2_pd_t2.txt","\n",5).data(old_pd_ind);
y_renyi2_pd=importdata("y_renyi2_pd_t2.txt","\n",5).data(old_pd_ind);
x_renyi3_pd=importdata("x_renyi3_pd_t2.txt","\n",5).data(old_pd_ind);
y_renyi3_pd=importdata("y_renyi3_pd_t2.txt","\n",5).data(old_pd_ind);
snr_ce_x_pd=importdata("snr_ce_x_pd_t2.txt","\n",5).data(old_pd_ind);
snr_ce_y_pd=importdata("snr_ce_y_pd_t2.txt","\n",5).data(old_pd_ind);
snr_tke1_x_pd=importdata("snr_tke1_x_pd_t2.txt","\n",5).data(old_pd_ind);
snr_tke1_y_pd=importdata("snr_tke1_y_pd_t2.txt","\n",5).data(old_pd_ind);
snr_tke2_x_pd=importdata("snr_tke2_x_pd_t2.txt","\n",5).data(old_pd_ind);
snr_tke2_y_pd=importdata("snr_tke2_y_pd_t2.txt","\n",5).data(old_pd_ind);
x_shannon_i1_pd=importdata("x_shannon_i1_pd_t2.txt","\n",5).data(old_pd_ind);
y_shannon_i1_pd=importdata("y_shannon_i1_pd_t2.txt","\n",5).data(old_pd_ind);
x_renyi2_i1_pd=importdata("x_renyi2_i1_pd_t2.txt","\n",5).data(old_pd_ind);
y_renyi2_i1_pd=importdata("y_renyi2_i1_pd_t2.txt","\n",5).data(old_pd_ind);
x_renyi3_i1_pd=importdata("x_renyi3_i1_pd_t2.txt","\n",5).data(old_pd_ind);
y_renyi3_i1_pd=importdata("y_renyi3_i1_pd_t2.txt","\n",5).data(old_pd_ind);
x_shannon_i2_pd=importdata("x_shannon_i2_pd_t2.txt","\n",5).data(old_pd_ind);
y_shannon_i2_pd=importdata("y_shannon_i2_pd_t2.txt","\n",5).data(old_pd_ind);
x_renyi2_i2_pd=importdata("x_renyi2_i2_pd_t2.txt","\n",5).data(old_pd_ind);
y_renyi2_i2_pd=importdata("y_renyi2_i2_pd_t2.txt","\n",5).data(old_pd_ind);
x_renyi3_i2_pd=importdata("x_renyi3_i2_pd_t2.txt","\n",5).data(old_pd_ind);
y_renyi3_i2_pd=importdata("y_renyi3_i2_pd_t2.txt","\n",5).data(old_pd_ind);
snr_ice_x_pd=importdata("snr_ice_x_pd_t2.txt","\n",5).data(old_pd_ind);
snr_ice_y_pd=importdata("snr_ice_y_pd_t2.txt","\n",5).data(old_pd_ind);
snr_itke1_x_pd=importdata("snr_itke1_x_pd_t2.txt","\n",5).data(old_pd_ind);
%snr_itke1_y_pd=importdata("snr_itke1_y_pd_t2.txt","\n",5).data(old_pd_ind);
snr_itke2_x_pd=importdata("snr_itke2_x_pd_t2.txt","\n",5).data(old_pd_ind);
%snr_itke2_y_pd=importdata("snr_itke2_y_pd_t2.txt","\n",5).data(old_pd_ind);

%{
off_onTime_pd=importdata("off_onTime_hc_t2.txt","\n",5).data(old_pd_ind);
off_onTime_hc=importdata("off_onTime_hc_t2.txt","\n",5).data(old_hc_ind);
%}

  %--------Mann Witney U_Test on the declared matrices---------%
  
  old_passed=[];      %features which old_passed the test
  old_failed=[];      %features which old_failed the test
 
 
%{
 feature_name="x_vel_on_t2";
 if(u_test(x_vel_on_pd,x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="y_vel_on_t2";
 if(u_test(y_vel_on_pd,y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="time_interval_off_t2";
 if(u_test(time_interval_off_pd,time_interval_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 %}
 
 feature_name="speed_t2";
 if(u_test(speed_pd,speed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="NCV_on_t2";
 if(u_test(NCV_on_pd,NCV_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="NCA_on_t2";
 if(u_test(NCA_on_pd,NCA_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="rel_NCV_on_t2";
 if(u_test(rel_NCV_on_pd,rel_NCV_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="rel_NCA_on_t2";
 if(u_test(rel_NCA_on_pd,rel_NCA_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="norm_onTime_t2";
 if(u_test(norm_onTime_pd,norm_onTime_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="NCP_t2";
 if(u_test(NCP_pd,NCP_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="rel_NCP_t2";
 if(u_test(rel_NCP_pd,rel_NCP_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="NCV_off_t2";
 if(u_test(NCV_off_pd,NCV_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="NCA_off_t2";
 if(u_test(NCA_off_pd,NCA_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="rel_NCV_off_t2";
 if(u_test(rel_NCV_off_pd,rel_NCV_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="rel_NCA_off_t2";
 if(u_test(rel_NCA_off_pd,rel_NCA_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="norm_offTime_t2";
 if(u_test(norm_offTime_pd,norm_offTime_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
%{
 feature_name="off_onTime_t2";
 if(u_test(off_onTime_pd,off_onTime_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 %}
 
 feature_name="arithMean_strokespeed_t2";
 if(u_test(arithMean_strokespeed_pd,arithMean_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_strokespeed_t2";
 if(u_test(geoMean_strokespeed_pd,geoMean_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_strokespeed _t2";
 if(u_test(kurto_strokespeed_pd,kurto_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_strokespeed_t2";
 if(u_test(ranges_strokespeed_pd,ranges_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_strokespeed_t2";
 if(u_test(medians_strokespeed_pd,medians_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_strokespeed_t2";
 if(u_test(modes_strokespeed_pd,modes_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_strokespeed_t2";
 if(u_test(stdDevs_strokespeed_pd,stdDevs_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_strokespeed_t2";
 if(u_test(robustRange_strokespeed_pd,robustRange_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_strokespeed_t2";
 if(u_test(interQuartiles_strokespeed_pd,interQuartiles_strokespeed_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_vel_on_t2";
 if(u_test(arithMean_vel_on_pd,arithMean_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_vel_on_t2";
 if(u_test(geoMean_vel_on_pd,geoMean_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_vel_on_t2";
 if(u_test(kurto_vel_on_pd,kurto_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_vel_on_t2";
 if(u_test(ranges_vel_on_pd,ranges_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_vel_on_t2";
 if(u_test(medians_vel_on_pd,medians_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_vel_on_t2";
 if(u_test(modes_vel_on_pd,modes_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_vel_on_t2";
 if(u_test(stdDevs_vel_on_pd,stdDevs_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_vel_on_t2";
 if(u_test(robustRange_vel_on_pd,robustRange_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_vel_on_t2";
 if(u_test(interQuartiles_vel_on_pd,interQuartiles_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_acc_on_t2";
 if(u_test(arithMean_acc_on_pd,arithMean_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_acc_on_t2";
 if(u_test(geoMean_acc_on_pd,geoMean_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_acc_on _t2";
 if(u_test(kurto_acc_on_pd,kurto_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_acc_on_t2";
 if(u_test(ranges_acc_on_pd,ranges_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_acc_on_t2";
 if(u_test(medians_acc_on_pd,medians_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_acc_on_t2";
 if(u_test(modes_acc_on_pd,modes_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_acc_on_t2";
 if(u_test(stdDevs_acc_on_pd,stdDevs_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_acc_on_t2";
 if(u_test(robustRange_acc_on_pd,robustRange_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_acc_on_t2";
 if(u_test(interQuartiles_acc_on_pd,interQuartiles_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 
 feature_name="arithMean_jerk_on_t2";
 if(u_test(arithMean_jerk_on_pd,arithMean_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_jerk_on_t2";
 if(u_test(geoMean_jerk_on_pd,geoMean_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_jerk_on _t2";
 if(u_test(kurto_jerk_on_pd,kurto_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_jerk_on_t2";
 if(u_test(ranges_jerk_on_pd,ranges_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_jerk_on_t2";
 if(u_test(medians_jerk_on_pd,medians_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_jerk_on_t2";
 if(u_test(modes_jerk_on_pd,modes_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_jerk_on_t2";
 if(u_test(stdDevs_jerk_on_pd,stdDevs_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_jerk_on_t2";
 if(u_test(robustRange_jerk_on_pd,robustRange_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_jerk_on_t2";
 if(u_test(interQuartiles_jerk_on_pd,interQuartiles_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_vel_on_t2";
 if(u_test(arithMean_x_vel_on_pd,arithMean_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_vel_on_t2";
 if(u_test(geoMean_x_vel_on_pd,geoMean_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_vel_on _t2";
 if(u_test(kurto_x_vel_on_pd,kurto_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_vel_on_t2";
 if(u_test(ranges_x_vel_on_pd,ranges_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_x_vel_on_t2";
 if(u_test(medians_x_vel_on_pd,medians_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_x_vel_on_t2";
 if(u_test(modes_x_vel_on_pd,modes_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_vel_on_t2";
 if(u_test(stdDevs_x_vel_on_pd,stdDevs_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_vel_on_t2";
 if(u_test(robustRange_x_vel_on_pd,robustRange_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_vel_on_t2";
 if(u_test(interQuartiles_x_vel_on_pd,interQuartiles_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_vel_on_t2";
 if(u_test(arithMean_x_vel_on_pd,arithMean_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_vel_on_t2";
 if(u_test(geoMean_x_vel_on_pd,geoMean_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_vel_on _t2";
 if(u_test(kurto_x_vel_on_pd,kurto_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_vel_on_t2";
 if(u_test(ranges_x_vel_on_pd,ranges_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_x_vel_on_t2";
 if(u_test(medians_x_vel_on_pd,medians_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_x_vel_on_t2";
 if(u_test(modes_x_vel_on_pd,modes_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_vel_on_t2";
 if(u_test(stdDevs_x_vel_on_pd,stdDevs_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_vel_on_t2";
 if(u_test(robustRange_x_vel_on_pd,robustRange_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_vel_on_t2";
 if(u_test(interQuartiles_x_vel_on_pd,interQuartiles_x_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_acc_on_t2";
 if(u_test(arithMean_x_acc_on_pd,arithMean_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_acc_on_t2";
 if(u_test(geoMean_x_acc_on_pd,geoMean_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_acc_on _t2";
 if(u_test(kurto_x_acc_on_pd,kurto_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_acc_on_t2";
 if(u_test(ranges_x_acc_on_pd,ranges_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_x_acc_on_t2";
 if(u_test(medians_x_acc_on_pd,medians_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_x_acc_on_t2";
 if(u_test(modes_x_acc_on_pd,modes_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_acc_on_t2";
 if(u_test(stdDevs_x_acc_on_pd,stdDevs_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_acc_on_t2";
 if(u_test(robustRange_x_acc_on_pd,robustRange_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_acc_on_t2";
 if(u_test(interQuartiles_x_acc_on_pd,interQuartiles_x_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_jerk_on_t2";
 if(u_test(arithMean_x_jerk_on_pd,arithMean_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_jerk_on_t2";
 if(u_test(geoMean_x_jerk_on_pd,geoMean_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_jerk_on _t2";
 if(u_test(kurto_x_jerk_on_pd,kurto_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_jerk_on_t2";
 if(u_test(ranges_x_jerk_on_pd,ranges_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_x_jerk_on_t2";
 if(u_test(medians_x_jerk_on_pd,medians_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_x_jerk_on_t2";
 if(u_test(modes_x_jerk_on_pd,modes_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_jerk_on_t2";
 if(u_test(stdDevs_x_jerk_on_pd,stdDevs_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_jerk_on_t2";
 if(u_test(robustRange_x_jerk_on_pd,robustRange_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_jerk_on_t2";
 if(u_test(interQuartiles_x_jerk_on_pd,interQuartiles_x_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_vel_on_t2";
 if(u_test(arithMean_y_vel_on_pd,arithMean_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_vel_on_t2";
 if(u_test(geoMean_y_vel_on_pd,geoMean_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_vel_on _t2";
 if(u_test(kurto_y_vel_on_pd,kurto_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_vel_on_t2";
 if(u_test(ranges_y_vel_on_pd,ranges_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_y_vel_on_t2";
 if(u_test(medians_y_vel_on_pd,medians_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_y_vel_on_t2";
 if(u_test(modes_y_vel_on_pd,modes_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_vel_on_t2";
 if(u_test(stdDevs_y_vel_on_pd,stdDevs_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_vel_on_t2";
 if(u_test(robustRange_y_vel_on_pd,robustRange_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_vel_on_t2";
 if(u_test(interQuartiles_y_vel_on_pd,interQuartiles_y_vel_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_acc_on_t2";
 if(u_test(arithMean_y_acc_on_pd,arithMean_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_acc_on_t2";
 if(u_test(geoMean_y_acc_on_pd,geoMean_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_acc_on _t2";
 if(u_test(kurto_y_acc_on_pd,kurto_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_acc_on_t2";
 if(u_test(ranges_y_acc_on_pd,ranges_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_y_acc_on_t2";
 if(u_test(medians_y_acc_on_pd,medians_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_y_acc_on_t2";
 if(u_test(modes_y_acc_on_pd,modes_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_acc_on_t2";
 if(u_test(stdDevs_y_acc_on_pd,stdDevs_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_acc_on_t2";
 if(u_test(robustRange_y_acc_on_pd,robustRange_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_acc_on_t2";
 if(u_test(interQuartiles_y_acc_on_pd,interQuartiles_y_acc_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_jerk_on_t2";
 if(u_test(arithMean_y_jerk_on_pd,arithMean_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_jerk_on_t2";
 if(u_test(geoMean_y_jerk_on_pd,geoMean_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_jerk_on _t2";
 if(u_test(kurto_y_jerk_on_pd,kurto_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_jerk_on_t2";
 if(u_test(ranges_y_jerk_on_pd,ranges_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_y_jerk_on_t2";
 if(u_test(medians_y_jerk_on_pd,medians_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_y_jerk_on_t2";
 if(u_test(modes_y_jerk_on_pd,modes_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_jerk_on_t2";
 if(u_test(stdDevs_y_jerk_on_pd,stdDevs_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_jerk_on_t2";
 if(u_test(robustRange_y_jerk_on_pd,robustRange_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_jerk_on_t2";
 if(u_test(interQuartiles_y_jerk_on_pd,interQuartiles_y_jerk_on_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_vel_off_t2";
 if(u_test(arithMean_vel_off_pd,arithMean_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_vel_off_t2";
 if(u_test(geoMean_vel_off_pd,geoMean_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_vel_off _t2";
 if(u_test(kurto_vel_off_pd,kurto_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_vel_off_t2";
 if(u_test(ranges_vel_off_pd,ranges_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_vel_off_t2";
 if(u_test(medians_vel_off_pd,medians_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_vel_off_t2";
 if(u_test(modes_vel_off_pd,modes_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_vel_off_t2";
 if(u_test(stdDevs_vel_off_pd,stdDevs_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_vel_off_t2";
 if(u_test(robustRange_vel_off_pd,robustRange_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_vel_off_t2";
 if(u_test(interQuartiles_vel_off_pd,interQuartiles_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_acc_off_t2";
 if(u_test(arithMean_acc_off_pd,arithMean_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_acc_off_t2";
 if(u_test(geoMean_acc_off_pd,geoMean_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_acc_off _t2";
 if(u_test(kurto_acc_off_pd,kurto_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_acc_off_t2";
 if(u_test(ranges_acc_off_pd,ranges_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_acc_off_t2";
 if(u_test(medians_acc_off_pd,medians_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_acc_off_t2";
 if(u_test(modes_acc_off_pd,modes_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_acc_off_t2";
 if(u_test(stdDevs_acc_off_pd,stdDevs_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_acc_off_t2";
 if(u_test(robustRange_acc_off_pd,robustRange_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_acc_off_t2";
 if(u_test(interQuartiles_acc_off_pd,interQuartiles_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_jerk_off_t2";
 if(u_test(arithMean_jerk_off_pd,arithMean_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_jerk_off_t2";
 if(u_test(geoMean_jerk_off_pd,geoMean_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_jerk_off _t2";
 if(u_test(kurto_jerk_off_pd,kurto_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_jerk_off_t2";
 if(u_test(ranges_jerk_off_pd,ranges_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_jerk_off_t2";
 if(u_test(medians_jerk_off_pd,medians_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_jerk_off_t2";
 if(u_test(modes_jerk_off_pd,modes_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_jerk_off_t2";
 if(u_test(stdDevs_jerk_off_pd,stdDevs_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_jerk_off_t2";
 if(u_test(robustRange_jerk_off_pd,robustRange_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_jerk_off_t2";
 if(u_test(interQuartiles_jerk_off_pd,interQuartiles_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_vel_off_t2";
 if(u_test(arithMean_x_vel_off_pd,arithMean_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_vel_off_t2";
 if(u_test(geoMean_x_vel_off_pd,geoMean_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_vel_off _t2";
 if(u_test(kurto_x_vel_off_pd,kurto_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_vel_off_t2";
 if(u_test(ranges_x_vel_off_pd,ranges_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_x_vel_off_t2";
 if(u_test(medians_x_vel_off_pd,medians_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_x_vel_off_t2";
 if(u_test(modes_x_vel_off_pd,modes_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_vel_off_t2";
 if(u_test(stdDevs_x_vel_off_pd,stdDevs_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_vel_off_t2";
 if(u_test(robustRange_x_vel_off_pd,robustRange_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_vel_off_t2";
 if(u_test(interQuartiles_x_vel_off_pd,interQuartiles_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_acc_off_t2";
 if(u_test(arithMean_x_acc_off_pd,arithMean_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_acc_off_t2";
 if(u_test(geoMean_x_acc_off_pd,geoMean_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_acc_off _t2";
 if(u_test(kurto_x_acc_off_pd,kurto_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_acc_off_t2";
 if(u_test(ranges_x_acc_off_pd,ranges_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_x_acc_off_t2";
 if(u_test(medians_x_acc_off_pd,medians_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_x_acc_off_t2";
 if(u_test(modes_x_acc_off_pd,modes_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_acc_off_t2";
 if(u_test(stdDevs_x_acc_off_pd,stdDevs_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_acc_off_t2";
 if(u_test(robustRange_x_acc_off_pd,robustRange_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_acc_off_t2";
 if(u_test(interQuartiles_x_acc_off_pd,interQuartiles_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_jerk_off_t2";
 if(u_test(arithMean_x_jerk_off_pd,arithMean_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_jerk_off_t2";
 if(u_test(geoMean_x_jerk_off_pd,geoMean_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_jerk_off _t2";
 if(u_test(kurto_x_jerk_off_pd,kurto_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_jerk_off_t2";
 if(u_test(ranges_x_jerk_off_pd,ranges_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_x_jerk_off_t2";
 if(u_test(medians_x_jerk_off_pd,medians_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_x_jerk_off_t2";
 if(u_test(modes_x_jerk_off_pd,modes_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_jerk_off_t2";
 if(u_test(stdDevs_x_jerk_off_pd,stdDevs_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_jerk_off_t2";
 if(u_test(robustRange_x_jerk_off_pd,robustRange_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_jerk_off_t2";
 if(u_test(interQuartiles_x_jerk_off_pd,interQuartiles_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_vel_off_t2";
 if(u_test(arithMean_y_vel_off_pd,arithMean_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_vel_off_t2";
 if(u_test(geoMean_y_vel_off_pd,geoMean_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_vel_off _t2";
 if(u_test(kurto_y_vel_off_pd,kurto_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_vel_off_t2";
 if(u_test(ranges_y_vel_off_pd,ranges_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_y_vel_off_t2";
 if(u_test(medians_y_vel_off_pd,medians_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_y_vel_off_t2";
 if(u_test(modes_y_vel_off_pd,modes_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_vel_off_t2";
 if(u_test(stdDevs_y_vel_off_pd,stdDevs_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_vel_off_t2";
 if(u_test(robustRange_y_vel_off_pd,robustRange_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_vel_off_t2";
 if(u_test(interQuartiles_y_vel_off_pd,interQuartiles_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_acc_off_t2";
 if(u_test(arithMean_y_acc_off_pd,arithMean_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_acc_off_t2";
 if(u_test(geoMean_y_acc_off_pd,geoMean_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_acc_off _t2";
 if(u_test(kurto_y_acc_off_pd,kurto_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_acc_off_t2";
 if(u_test(ranges_y_acc_off_pd,ranges_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_y_acc_off_t2";
 if(u_test(medians_y_acc_off_pd,medians_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_y_acc_off_t2";
 if(u_test(modes_y_acc_off_pd,modes_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_acc_off_t2";
 if(u_test(stdDevs_y_acc_off_pd,stdDevs_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_acc_off_t2";
 if(u_test(robustRange_y_acc_off_pd,robustRange_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_acc_off_t2";
 if(u_test(interQuartiles_y_acc_off_pd,interQuartiles_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_jerk_off_t2";
 if(u_test(arithMean_y_jerk_off_pd,arithMean_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_jerk_off_t2";
 if(u_test(geoMean_y_jerk_off_pd,geoMean_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_jerk_off _t2";
 if(u_test(kurto_y_jerk_off_pd,kurto_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_jerk_off_t2";
 if(u_test(ranges_y_jerk_off_pd,ranges_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_y_jerk_off_t2";
 if(u_test(medians_y_jerk_off_pd,medians_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_y_jerk_off_t2";
 if(u_test(modes_y_jerk_off_pd,modes_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_jerk_off_t2";
 if(u_test(stdDevs_y_jerk_off_pd,stdDevs_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_jerk_off_t2";
 if(u_test(robustRange_y_jerk_off_pd,robustRange_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_jerk_off_t2";
 if(u_test(interQuartiles_y_jerk_off_pd,interQuartiles_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_pressure_rate_t2";
 if(u_test(arithMean_pressure_rate_pd,arithMean_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="geoMean_pressure_rate_t2";
 if(u_test(geoMean_pressure_rate_pd,geoMean_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="kurto_pressure_rate _t2";
 if(u_test(kurto_pressure_rate_pd,kurto_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="ranges_pressure_rate_t2";
 if(u_test(ranges_pressure_rate_pd,ranges_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="medians_pressure_rate_t2";
 if(u_test(medians_pressure_rate_pd,medians_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="modes_pressure_rate_t2";
 if(u_test(modes_pressure_rate_pd,modes_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_pressure_rate_t2";
 if(u_test(stdDevs_pressure_rate_pd,stdDevs_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="robustRange_pressure_rate_t2";
 if(u_test(robustRange_pressure_rate_pd,robustRange_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_pressure_rate_t2";
 if(u_test(interQuartiles_pressure_rate_pd,interQuartiles_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="x_shannon_t2";
 if(u_test(x_shannon_pd,x_shannon_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
feature_name="y_shannon_t2";
 if(u_test(y_shannon_pd,y_shannon_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
feature_name="x_renyi2_t2";
 if(u_test(x_renyi2_pd,x_renyi2_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="y_renyi2_t2";
 if(u_test(y_renyi2_pd,y_renyi2_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;

feature_name="x_renyi3_t2";
 if(u_test(x_renyi3_pd,x_renyi3_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;

feature_name="y_renyi3_t2";
 if(u_test(y_renyi3_pd,y_renyi3_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;

feature_name="snr_ce_x_t2";
 if(u_test(snr_ce_x_pd,snr_ce_x_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;

feature_name="snr_ce_y_t2";
 if(u_test(snr_ce_y_pd,snr_ce_y_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="snr_tke1_x_t2";
 if(u_test(snr_tke1_x_pd,snr_tke1_x_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="snr_tke1_y_t2";
 if(u_test(snr_tke1_y_pd,snr_tke1_y_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="snr_tke2_x_t2";
 if(u_test(snr_tke2_x_pd,snr_tke2_x_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="snr_tke2_y_t2";
 if(u_test(snr_tke2_y_pd,snr_tke2_y_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="x_shannon_i1_t2";
 if(u_test(x_shannon_i1_pd,x_shannon_i1_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="y_shannon_i1_t2";
 if(u_test(y_shannon_i1_pd,y_shannon_i1_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="x_renyi2_i1_t2";
 if(u_test(x_renyi2_i1_pd,x_renyi2_i1_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="y_renyi2_i1_t2";
 if(u_test(y_renyi2_i1_pd,y_renyi2_i1_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="x_renyi3_i1_t2";
 if(u_test(x_renyi3_i1_pd,x_renyi3_i1_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="y_renyi3_i1_t2";
 if(u_test(y_renyi3_i1_pd,y_renyi3_i1_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;

feature_name="x_renyi2_i2_t2";
 if(u_test(x_renyi2_i2_pd,x_renyi2_i2_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="y_renyi2_i2_t2";
 if(u_test(y_renyi2_i2_pd,y_renyi2_i2_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="x_renyi3_i2_t2";
 if(u_test(x_renyi3_i2_pd,x_renyi3_i2_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
feature_name="y_renyi3_i2_t2";
 if(u_test(y_renyi3_i2_pd,y_renyi3_i2_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;


feature_name="x_shannon_i2_t2";
 if(u_test(x_shannon_i2_pd,x_shannon_i2_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;

feature_name="y_shannon_i2_t2";
 if(u_test(y_shannon_i2_pd,y_shannon_i2_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;


feature_name="snr_ice_x_t2";
 if(u_test(snr_ice_x_pd,snr_ice_x_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;


feature_name="snr_ice_y_t2";
 if(u_test(snr_ice_y_pd,snr_ice_y_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;



feature_name="snr_itke1_x_t2";
 if(u_test(snr_itke1_x_pd,snr_itke1_x_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;


%{
feature_name="snr_itke1_y_t2";
 if(u_test(snr_itke1_y_pd,snr_itke1_y_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
%}


feature_name="snr_itke2_x_t2";
 if(u_test(snr_itke2_x_pd,snr_itke2_x_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;


%{
feature_name="snr_itke2_y_t2";
 if(u_test(snr_itke2_y_pd,snr_itke2_y_hc)<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 %}
 
 disp("step3");               
 #-------------------------------------------------------------------------------------------------#
 
 
 %---------------------------------------------------------------------------------------------------------------------------------------------------%
 
 feature_name="trimMean5_strokespeed_t2";
 if(u_test(trimMean_strokespeed_pd(:,1),trimMean_strokespeed_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_strokespeed_t2";
 if(u_test(trimMean_strokespeed_pd(:,2),trimMean_strokespeed_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_strokespeed_t2";
 if(u_test(trimMean_strokespeed_pd(:,3),trimMean_strokespeed_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_strokespeed_t2";
 if(u_test(trimMean_strokespeed_pd(:,4),trimMean_strokespeed_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_strokespeed_t2";
 if(u_test(trimMean_strokespeed_pd(:,5),trimMean_strokespeed_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_strokespeed_t2";
 if(u_test(percentiles_strokespeed_pd(:,1),percentiles_strokespeed_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_strokespeed_t2";
 if(u_test(percentiles_strokespeed_pd(:,2),percentiles_strokespeed_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_strokespeed_t2";
 if(u_test(percentiles_strokespeed_pd(:,3),percentiles_strokespeed_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_strokespeed_t2";
 if(u_test(percentiles_strokespeed_pd(:,4),percentiles_strokespeed_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_strokespeed_t2";
 if(u_test(percentiles_strokespeed_pd(:,5),percentiles_strokespeed_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_strokespeed_t2";
 if(u_test(percentiles_strokespeed_pd(:,6),percentiles_strokespeed_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_strokespeed_t2";
 if(u_test(percentiles_strokespeed_pd(:,7),percentiles_strokespeed_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_strokespeed_t2";
 if(u_test(percentiles_strokespeed_pd(:,8),percentiles_strokespeed_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_strokespeed_t2";
 if(u_test(percentiles_strokespeed_pd(:,9),percentiles_strokespeed_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_strokespeed_t2";
 if(u_test(moments_strokespeed_pd(:,1),moments_strokespeed_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_strokespeed_t2";
 if(u_test(moments_strokespeed_pd(:,2),moments_strokespeed_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_strokespeed_t2";
 if(u_test(moments_strokespeed_pd(:,3),moments_strokespeed_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_strokespeed_t2";
 if(u_test(moments_strokespeed_pd(:,4),moments_strokespeed_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 
 feature_name="trimMean5_vel_on_t2";
 if(u_test(trimMean_vel_on_pd(:,1),trimMean_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_vel_on_t2";
 if(u_test(trimMean_vel_on_pd(:,2),trimMean_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_vel_on_t2";
 if(u_test(trimMean_vel_on_pd(:,3),trimMean_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_vel_on_t2";
 if(u_test(trimMean_vel_on_pd(:,4),trimMean_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_vel_on_t2";
 if(u_test(trimMean_vel_on_pd(:,5),trimMean_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles5_vel_on_t2";
 if(u_test(percentiles_vel_on_pd(:,2),percentiles_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_vel_on_t2";
 if(u_test(percentiles_vel_on_pd(:,3),percentiles_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_vel_on_t2";
 if(u_test(percentiles_vel_on_pd(:,4),percentiles_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_vel_on_t2";
 if(u_test(percentiles_vel_on_pd(:,5),percentiles_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_vel_on_t2";
 if(u_test(percentiles_vel_on_pd(:,6),percentiles_vel_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_vel_on_t2";
 if(u_test(percentiles_vel_on_pd(:,7),percentiles_vel_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_vel_on_t2";
 if(u_test(percentiles_vel_on_pd(:,8),percentiles_vel_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_vel_on_t2";
 if(u_test(percentiles_vel_on_pd(:,9),percentiles_vel_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_vel_on_t2";
 if(u_test(moments_vel_on_pd(:,1),moments_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_vel_on_t2";
 if(u_test(moments_vel_on_pd(:,2),moments_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_vel_on_t2";
 if(u_test(moments_vel_on_pd(:,3),moments_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_vel_on_t2";
 if(u_test(moments_vel_on_pd(:,4),moments_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_vel_off_t2";
 if(u_test(trimMean_vel_off_pd(:,1),trimMean_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_vel_off_t2";
 if(u_test(trimMean_vel_off_pd(:,2),trimMean_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_vel_off_t2";
 if(u_test(trimMean_vel_off_pd(:,3),trimMean_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_vel_off_t2";
 if(u_test(trimMean_vel_off_pd(:,4),trimMean_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_vel_off_t2";
 if(u_test(trimMean_vel_off_pd(:,5),trimMean_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_vel_off_t2";
 if(u_test(percentiles_vel_off_pd(:,2),percentiles_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_vel_off_t2";
 if(u_test(percentiles_vel_off_pd(:,3),percentiles_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_vel_off_t2";
 if(u_test(percentiles_vel_off_pd(:,4),percentiles_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_vel_off_t2";
 if(u_test(percentiles_vel_off_pd(:,5),percentiles_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_vel_off_t2";
 if(u_test(percentiles_vel_off_pd(:,6),percentiles_vel_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_vel_off_t2";
 if(u_test(percentiles_vel_off_pd(:,7),percentiles_vel_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_vel_off_t2";
 if(u_test(percentiles_vel_off_pd(:,8),percentiles_vel_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_vel_off_t2";
 if(u_test(percentiles_vel_off_pd(:,9),percentiles_vel_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_vel_off_t2";
 if(u_test(moments_vel_off_pd(:,1),moments_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_vel_off_t2";
 if(u_test(moments_vel_off_pd(:,2),moments_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_vel_off_t2";
 if(u_test(moments_vel_off_pd(:,3),moments_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_vel_off_t2";
 if(u_test(moments_vel_off_pd(:,4),moments_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_acc_on_t2";
 if(u_test(trimMean_acc_on_pd(:,1),trimMean_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_acc_on_t2";
 if(u_test(trimMean_acc_on_pd(:,2),trimMean_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_acc_on_t2";
 if(u_test(trimMean_acc_on_pd(:,3),trimMean_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_acc_on_t2";
 if(u_test(trimMean_acc_on_pd(:,4),trimMean_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_acc_on_t2";
 if(u_test(trimMean_acc_on_pd(:,5),trimMean_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_acc_on_t2";
 if(u_test(percentiles_acc_on_pd(:,2),percentiles_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_acc_on_t2";
 if(u_test(percentiles_acc_on_pd(:,3),percentiles_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_acc_on_t2";
 if(u_test(percentiles_acc_on_pd(:,4),percentiles_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_acc_on_t2";
 if(u_test(percentiles_acc_on_pd(:,5),percentiles_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_acc_on_t2";
 if(u_test(percentiles_acc_on_pd(:,6),percentiles_acc_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_acc_on_t2";
 if(u_test(percentiles_acc_on_pd(:,7),percentiles_acc_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_acc_on_t2";
 if(u_test(percentiles_acc_on_pd(:,8),percentiles_acc_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_acc_on_t2";
 if(u_test(percentiles_acc_on_pd(:,9),percentiles_acc_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_acc_on_t2";
 if(u_test(moments_acc_on_pd(:,1),moments_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_acc_on_t2";
 if(u_test(moments_acc_on_pd(:,2),moments_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_acc_on_t2";
 if(u_test(moments_acc_on_pd(:,3),moments_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_acc_on_t2";
 if(u_test(moments_acc_on_pd(:,4),moments_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_acc_off_t2";
 if(u_test(trimMean_acc_off_pd(:,1),trimMean_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_acc_off_t2";
 if(u_test(trimMean_acc_off_pd(:,2),trimMean_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_acc_off_t2";
 if(u_test(trimMean_acc_off_pd(:,3),trimMean_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_acc_off_t2";
 if(u_test(trimMean_acc_off_pd(:,4),trimMean_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_acc_off_t2";
 if(u_test(trimMean_acc_off_pd(:,5),trimMean_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_acc_off_t2";
 if(u_test(percentiles_acc_off_pd(:,2),percentiles_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_acc_off_t2";
 if(u_test(percentiles_acc_off_pd(:,3),percentiles_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_acc_off_t2";
 if(u_test(percentiles_acc_off_pd(:,4),percentiles_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_acc_off_t2";
 if(u_test(percentiles_acc_off_pd(:,5),percentiles_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_acc_off_t2";
 if(u_test(percentiles_acc_off_pd(:,6),percentiles_acc_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_acc_off_t2";
 if(u_test(percentiles_acc_off_pd(:,7),percentiles_acc_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_acc_off_t2";
 if(u_test(percentiles_acc_off_pd(:,8),percentiles_acc_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_acc_off_t2";
 if(u_test(percentiles_acc_off_pd(:,9),percentiles_acc_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_acc_off_t2";
 if(u_test(moments_acc_off_pd(:,1),moments_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_acc_off_t2";
 if(u_test(moments_acc_off_pd(:,2),moments_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_acc_off_t2";
 if(u_test(moments_acc_off_pd(:,3),moments_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_acc_off_t2";
 if(u_test(moments_acc_off_pd(:,4),moments_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_jerk_on_t2";
 if(u_test(trimMean_jerk_on_pd(:,1),trimMean_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_jerk_on_t2";
 if(u_test(trimMean_jerk_on_pd(:,2),trimMean_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_jerk_on_t2";
 if(u_test(trimMean_jerk_on_pd(:,3),trimMean_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_jerk_on_t2";
 if(u_test(trimMean_jerk_on_pd(:,4),trimMean_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_jerk_on_t2";
 if(u_test(trimMean_jerk_on_pd(:,5),trimMean_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_jerk_off_t2";
 if(u_test(trimMean_jerk_off_pd(:,1),trimMean_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles5_jerk_on_t2";
 if(u_test(percentiles_jerk_on_pd(:,2),percentiles_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_jerk_on_t2";
 if(u_test(percentiles_jerk_on_pd(:,3),percentiles_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_jerk_on_t2";
 if(u_test(percentiles_jerk_on_pd(:,4),percentiles_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_jerk_on_t2";
 if(u_test(percentiles_jerk_on_pd(:,5),percentiles_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_jerk_on_t2";
 if(u_test(percentiles_jerk_on_pd(:,6),percentiles_jerk_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_jerk_on_t2";
 if(u_test(percentiles_jerk_on_pd(:,7),percentiles_jerk_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_jerk_on_t2";
 if(u_test(percentiles_jerk_on_pd(:,8),percentiles_jerk_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_jerk_on_t2";
 if(u_test(percentiles_jerk_on_pd(:,9),percentiles_jerk_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_jerk_on_t2";
 if(u_test(moments_jerk_on_pd(:,1),moments_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_jerk_on_t2";
 if(u_test(moments_jerk_on_pd(:,2),moments_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_jerk_on_t2";
 if(u_test(moments_jerk_on_pd(:,3),moments_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_jerk_on_t2";
 if(u_test(moments_jerk_on_pd(:,4),moments_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;

 feature_name="trimMean10_jerk_off_t2";
 if(u_test(trimMean_jerk_off_pd(:,2),trimMean_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_jerk_off_t2";
 if(u_test(trimMean_jerk_off_pd(:,3),trimMean_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_jerk_off_t2";
 if(u_test(trimMean_jerk_off_pd(:,4),trimMean_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_jerk_off_t2";
 if(u_test(trimMean_jerk_off_pd(:,5),trimMean_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_jerk_off_t2";
 if(u_test(percentiles_jerk_off_pd(:,2),percentiles_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_jerk_off_t2";
 if(u_test(percentiles_jerk_off_pd(:,3),percentiles_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_jerk_off_t2";
 if(u_test(percentiles_jerk_off_pd(:,4),percentiles_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_jerk_off_t2";
 if(u_test(percentiles_jerk_off_pd(:,5),percentiles_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_jerk_off_t2";
 if(u_test(percentiles_jerk_off_pd(:,6),percentiles_jerk_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_jerk_off_t2";
 if(u_test(percentiles_jerk_off_pd(:,7),percentiles_jerk_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_jerk_off_t2";
 if(u_test(percentiles_jerk_off_pd(:,8),percentiles_jerk_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_jerk_off_t2";
 if(u_test(percentiles_jerk_off_pd(:,9),percentiles_jerk_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_jerk_off_t2";
 if(u_test(moments_jerk_off_pd(:,1),moments_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_jerk_off_t2";
 if(u_test(moments_jerk_off_pd(:,2),moments_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_jerk_off_t2";
 if(u_test(moments_jerk_off_pd(:,3),moments_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_jerk_off_t2";
 if(u_test(moments_jerk_off_pd(:,4),moments_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_x_vel_on_t2";
 if(u_test(trimMean_x_vel_on_pd(:,1),trimMean_x_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_vel_on_t2";
 if(u_test(trimMean_x_vel_on_pd(:,2),trimMean_x_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_vel_on_t2";
 if(u_test(trimMean_x_vel_on_pd(:,3),trimMean_x_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_vel_on_t2";
 if(u_test(trimMean_x_vel_on_pd(:,4),trimMean_x_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_vel_on_t2";
 if(u_test(trimMean_x_vel_on_pd(:,5),trimMean_x_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles5_x_vel_on_t2";
 if(u_test(percentiles_x_vel_on_pd(:,2),percentiles_x_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_vel_on_t2";
 if(u_test(percentiles_x_vel_on_pd(:,3),percentiles_x_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_vel_on_t2";
 if(u_test(percentiles_x_vel_on_pd(:,4),percentiles_x_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_vel_on_t2";
 if(u_test(percentiles_x_vel_on_pd(:,5),percentiles_x_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_vel_on_t2";
 if(u_test(percentiles_x_vel_on_pd(:,6),percentiles_x_vel_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_vel_on_t2";
 if(u_test(percentiles_x_vel_on_pd(:,7),percentiles_x_vel_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_vel_on_t2";
 if(u_test(percentiles_x_vel_on_pd(:,8),percentiles_x_vel_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_vel_on_t2";
 if(u_test(percentiles_x_vel_on_pd(:,9),percentiles_x_vel_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_vel_on_t2";
 if(u_test(moments_x_vel_on_pd(:,1),moments_x_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_vel_on_t2";
 if(u_test(moments_x_vel_on_pd(:,2),moments_x_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_vel_on_t2";
 if(u_test(moments_x_vel_on_pd(:,3),moments_x_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_x_vel_on_t2";
 if(u_test(moments_x_vel_on_pd(:,4),moments_x_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_x_vel_off_t2";
 if(u_test(trimMean_x_vel_off_pd(:,1),trimMean_x_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_vel_off_t2";
 if(u_test(trimMean_x_vel_off_pd(:,2),trimMean_x_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_vel_off_t2";
 if(u_test(trimMean_x_vel_off_pd(:,3),trimMean_x_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_vel_off_t2";
 if(u_test(trimMean_x_vel_off_pd(:,4),trimMean_x_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_vel_off_t2";
 if(u_test(trimMean_x_vel_off_pd(:,5),trimMean_x_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_vel_off_t2";
 if(u_test(percentiles_x_vel_off_pd(:,2),percentiles_x_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_vel_off_t2";
 if(u_test(percentiles_x_vel_off_pd(:,3),percentiles_x_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_vel_off_t2";
 if(u_test(percentiles_x_vel_off_pd(:,4),percentiles_x_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_vel_off_t2";
 if(u_test(percentiles_x_vel_off_pd(:,5),percentiles_x_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_vel_off_t2";
 if(u_test(percentiles_x_vel_off_pd(:,6),percentiles_x_vel_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_vel_off_t2";
 if(u_test(percentiles_x_vel_off_pd(:,7),percentiles_x_vel_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_vel_off_t2";
 if(u_test(percentiles_x_vel_off_pd(:,8),percentiles_x_vel_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_vel_off_t2";
 if(u_test(percentiles_x_vel_off_pd(:,9),percentiles_x_vel_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_vel_off_t2";
 if(u_test(moments_x_vel_off_pd(:,1),moments_x_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_vel_off_t2";
 if(u_test(moments_x_vel_off_pd(:,2),moments_x_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_vel_off_t2";
 if(u_test(moments_x_vel_off_pd(:,3),moments_x_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_x_vel_off_t2";
 if(u_test(moments_x_vel_off_pd(:,4),moments_x_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_x_acc_on_t2";
 if(u_test(trimMean_x_acc_on_pd(:,1),trimMean_x_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_acc_on_t2";
 if(u_test(trimMean_x_acc_on_pd(:,2),trimMean_x_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_acc_on_t2";
 if(u_test(trimMean_x_acc_on_pd(:,3),trimMean_x_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_acc_on_t2";
 if(u_test(trimMean_x_acc_on_pd(:,4),trimMean_x_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_acc_on_t2";
 if(u_test(trimMean_x_acc_on_pd(:,5),trimMean_x_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_acc_on_t2";
 if(u_test(percentiles_x_acc_on_pd(:,2),percentiles_x_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_acc_on_t2";
 if(u_test(percentiles_x_acc_on_pd(:,3),percentiles_x_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_acc_on_t2";
 if(u_test(percentiles_x_acc_on_pd(:,4),percentiles_x_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_acc_on_t2";
 if(u_test(percentiles_x_acc_on_pd(:,5),percentiles_x_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_acc_on_t2";
 if(u_test(percentiles_x_acc_on_pd(:,6),percentiles_x_acc_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_acc_on_t2";
 if(u_test(percentiles_x_acc_on_pd(:,7),percentiles_x_acc_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_acc_on_t2";
 if(u_test(percentiles_x_acc_on_pd(:,8),percentiles_x_acc_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_acc_on_t2";
 if(u_test(percentiles_x_acc_on_pd(:,9),percentiles_x_acc_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_acc_on_t2";
 if(u_test(moments_x_acc_on_pd(:,1),moments_x_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_acc_on_t2";
 if(u_test(moments_x_acc_on_pd(:,2),moments_x_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_acc_on_t2";
 if(u_test(moments_x_acc_on_pd(:,3),moments_x_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_x_acc_on_t2";
 if(u_test(moments_x_acc_on_pd(:,4),moments_x_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_x_acc_off_t2";
 if(u_test(trimMean_x_acc_off_pd(:,1),trimMean_x_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_acc_off_t2";
 if(u_test(trimMean_x_acc_off_pd(:,2),trimMean_x_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_acc_off_t2";
 if(u_test(trimMean_x_acc_off_pd(:,3),trimMean_x_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_acc_off_t2";
 if(u_test(trimMean_x_acc_off_pd(:,4),trimMean_x_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_acc_off_t2";
 if(u_test(trimMean_x_acc_off_pd(:,5),trimMean_x_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_acc_off_t2";
 if(u_test(percentiles_x_acc_off_pd(:,2),percentiles_x_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_acc_off_t2";
 if(u_test(percentiles_x_acc_off_pd(:,3),percentiles_x_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_acc_off_t2";
 if(u_test(percentiles_x_acc_off_pd(:,4),percentiles_x_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_acc_off_t2";
 if(u_test(percentiles_x_acc_off_pd(:,5),percentiles_x_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_acc_off_t2";
 if(u_test(percentiles_x_acc_off_pd(:,6),percentiles_x_acc_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_acc_off_t2";
 if(u_test(percentiles_x_acc_off_pd(:,7),percentiles_x_acc_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_acc_off_t2";
 if(u_test(percentiles_x_acc_off_pd(:,8),percentiles_x_acc_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_acc_off_t2";
 if(u_test(percentiles_x_acc_off_pd(:,9),percentiles_x_acc_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_acc_off_t2";
 if(u_test(moments_x_acc_off_pd(:,1),moments_x_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_acc_off_t2";
 if(u_test(moments_x_acc_off_pd(:,2),moments_x_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_acc_off_t2";
 if(u_test(moments_x_acc_off_pd(:,3),moments_x_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_x_acc_off_t2";
 if(u_test(moments_x_acc_off_pd(:,4),moments_x_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_x_jerk_on_t2";
 if(u_test(trimMean_x_jerk_on_pd(:,1),trimMean_x_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_jerk_on_t2";
 if(u_test(trimMean_x_jerk_on_pd(:,2),trimMean_x_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_jerk_on_t2";
 if(u_test(trimMean_x_jerk_on_pd(:,3),trimMean_x_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_jerk_on_t2";
 if(u_test(trimMean_x_jerk_on_pd(:,4),trimMean_x_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_jerk_on_t2";
 if(u_test(trimMean_x_jerk_on_pd(:,5),trimMean_x_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_x_jerk_off_t2";
 if(u_test(trimMean_x_jerk_off_pd(:,1),trimMean_x_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles5_x_jerk_on_t2";
 if(u_test(percentiles_x_jerk_on_pd(:,2),percentiles_x_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_jerk_on_t2";
 if(u_test(percentiles_x_jerk_on_pd(:,3),percentiles_x_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_jerk_on_t2";
 if(u_test(percentiles_x_jerk_on_pd(:,4),percentiles_x_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_jerk_on_t2";
 if(u_test(percentiles_x_jerk_on_pd(:,5),percentiles_x_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_jerk_on_t2";
 if(u_test(percentiles_x_jerk_on_pd(:,6),percentiles_x_jerk_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_jerk_on_t2";
 if(u_test(percentiles_x_jerk_on_pd(:,7),percentiles_x_jerk_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_jerk_on_t2";
 if(u_test(percentiles_x_jerk_on_pd(:,8),percentiles_x_jerk_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_jerk_on_t2";
 if(u_test(percentiles_x_jerk_on_pd(:,9),percentiles_x_jerk_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_jerk_on_t2";
 if(u_test(moments_x_jerk_on_pd(:,1),moments_x_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_jerk_on_t2";
 if(u_test(moments_x_jerk_on_pd(:,2),moments_x_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_jerk_on_t2";
 if(u_test(moments_x_jerk_on_pd(:,3),moments_x_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_x_jerk_on_t2";
 if(u_test(moments_x_jerk_on_pd(:,4),moments_x_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;

 feature_name="trimMean10_x_jerk_off_t2";
 if(u_test(trimMean_x_jerk_off_pd(:,2),trimMean_x_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_jerk_off_t2";
 if(u_test(trimMean_x_jerk_off_pd(:,3),trimMean_x_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_jerk_off_t2";
 if(u_test(trimMean_x_jerk_off_pd(:,4),trimMean_x_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_jerk_off_t2";
 if(u_test(trimMean_x_jerk_off_pd(:,5),trimMean_x_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_jerk_off_t2";
 if(u_test(percentiles_x_jerk_off_pd(:,2),percentiles_x_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_jerk_off_t2";
 if(u_test(percentiles_x_jerk_off_pd(:,3),percentiles_x_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_jerk_off_t2";
 if(u_test(percentiles_x_jerk_off_pd(:,4),percentiles_x_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_jerk_off_t2";
 if(u_test(percentiles_x_jerk_off_pd(:,5),percentiles_x_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_jerk_off_t2";
 if(u_test(percentiles_x_jerk_off_pd(:,6),percentiles_x_jerk_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_jerk_off_t2";
 if(u_test(percentiles_x_jerk_off_pd(:,7),percentiles_x_jerk_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_jerk_off_t2";
 if(u_test(percentiles_x_jerk_off_pd(:,8),percentiles_x_jerk_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_jerk_off_t2";
 if(u_test(percentiles_x_jerk_off_pd(:,9),percentiles_x_jerk_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_jerk_off_t2";
 if(u_test(moments_x_jerk_off_pd(:,1),moments_x_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_jerk_off_t2";
 if(u_test(moments_x_jerk_off_pd(:,2),moments_x_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_jerk_off_t2";
 if(u_test(moments_x_jerk_off_pd(:,3),moments_x_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_x_jerk_off_t2";
 if(u_test(moments_x_jerk_off_pd(:,4),moments_x_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_y_vel_on_t2";
 if(u_test(trimMean_y_vel_on_pd(:,1),trimMean_y_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_vel_on_t2";
 if(u_test(trimMean_y_vel_on_pd(:,2),trimMean_y_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_vel_on_t2";
 if(u_test(trimMean_y_vel_on_pd(:,3),trimMean_y_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_vel_on_t2";
 if(u_test(trimMean_y_vel_on_pd(:,4),trimMean_y_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_vel_on_t2";
 if(u_test(trimMean_y_vel_on_pd(:,5),trimMean_y_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles5_y_vel_on_t2";
 if(u_test(percentiles_y_vel_on_pd(:,2),percentiles_y_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_vel_on_t2";
 if(u_test(percentiles_y_vel_on_pd(:,3),percentiles_y_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_vel_on_t2";
 if(u_test(percentiles_y_vel_on_pd(:,4),percentiles_y_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_vel_on_t2";
 if(u_test(percentiles_y_vel_on_pd(:,5),percentiles_y_vel_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_vel_on_t2";
 if(u_test(percentiles_y_vel_on_pd(:,6),percentiles_y_vel_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_vel_on_t2";
 if(u_test(percentiles_y_vel_on_pd(:,7),percentiles_y_vel_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_vel_on_t2";
 if(u_test(percentiles_y_vel_on_pd(:,8),percentiles_y_vel_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_vel_on_t2";
 if(u_test(percentiles_y_vel_on_pd(:,9),percentiles_y_vel_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_vel_on_t2";
 if(u_test(moments_y_vel_on_pd(:,1),moments_y_vel_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_vel_on_t2";
 if(u_test(moments_y_vel_on_pd(:,2),moments_y_vel_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_vel_on_t2";
 if(u_test(moments_y_vel_on_pd(:,3),moments_y_vel_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_y_vel_on_t2";
 if(u_test(moments_y_vel_on_pd(:,4),moments_y_vel_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_y_vel_off_t2";
 if(u_test(trimMean_y_vel_off_pd(:,1),trimMean_y_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_vel_off_t2";
 if(u_test(trimMean_y_vel_off_pd(:,2),trimMean_y_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_vel_off_t2";
 if(u_test(trimMean_y_vel_off_pd(:,3),trimMean_y_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_vel_off_t2";
 if(u_test(trimMean_y_vel_off_pd(:,4),trimMean_y_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_vel_off_t2";
 if(u_test(trimMean_y_vel_off_pd(:,5),trimMean_y_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_vel_off_t2";
 if(u_test(percentiles_y_vel_off_pd(:,2),percentiles_y_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_vel_off_t2";
 if(u_test(percentiles_y_vel_off_pd(:,3),percentiles_y_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_vel_off_t2";
 if(u_test(percentiles_y_vel_off_pd(:,4),percentiles_y_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_vel_off_t2";
 if(u_test(percentiles_y_vel_off_pd(:,5),percentiles_y_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_vel_off_t2";
 if(u_test(percentiles_y_vel_off_pd(:,6),percentiles_y_vel_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_vel_off_t2";
 if(u_test(percentiles_y_vel_off_pd(:,7),percentiles_y_vel_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_vel_off_t2";
 if(u_test(percentiles_y_vel_off_pd(:,8),percentiles_y_vel_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_vel_off_t2";
 if(u_test(percentiles_y_vel_off_pd(:,9),percentiles_y_vel_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_vel_off_t2";
 if(u_test(moments_y_vel_off_pd(:,1),moments_y_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_vel_off_t2";
 if(u_test(moments_y_vel_off_pd(:,2),moments_y_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_vel_off_t2";
 if(u_test(moments_y_vel_off_pd(:,3),moments_y_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_y_vel_off_t2";
 if(u_test(moments_y_vel_off_pd(:,4),moments_y_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_y_acc_on_t2";
 if(u_test(trimMean_y_acc_on_pd(:,1),trimMean_y_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_acc_on_t2";
 if(u_test(trimMean_y_acc_on_pd(:,2),trimMean_y_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_acc_on_t2";
 if(u_test(trimMean_y_acc_on_pd(:,3),trimMean_y_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_acc_on_t2";
 if(u_test(trimMean_y_acc_on_pd(:,4),trimMean_y_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_acc_on_t2";
 if(u_test(trimMean_y_acc_on_pd(:,5),trimMean_y_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_acc_on_t2";
 if(u_test(percentiles_y_acc_on_pd(:,2),percentiles_y_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_acc_on_t2";
 if(u_test(percentiles_y_acc_on_pd(:,3),percentiles_y_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_acc_on_t2";
 if(u_test(percentiles_y_acc_on_pd(:,4),percentiles_y_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_acc_on_t2";
 if(u_test(percentiles_y_acc_on_pd(:,5),percentiles_y_acc_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_acc_on_t2";
 if(u_test(percentiles_y_acc_on_pd(:,6),percentiles_y_acc_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_acc_on_t2";
 if(u_test(percentiles_y_acc_on_pd(:,7),percentiles_y_acc_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_acc_on_t2";
 if(u_test(percentiles_y_acc_on_pd(:,8),percentiles_y_acc_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_acc_on_t2";
 if(u_test(percentiles_y_acc_on_pd(:,9),percentiles_y_acc_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_acc_on_t2";
 if(u_test(moments_y_acc_on_pd(:,1),moments_y_acc_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_acc_on_t2";
 if(u_test(moments_y_acc_on_pd(:,2),moments_y_acc_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_acc_on_t2";
 if(u_test(moments_y_acc_on_pd(:,3),moments_y_acc_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_y_acc_on_t2";
 if(u_test(moments_y_acc_on_pd(:,4),moments_y_acc_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_y_acc_off_t2";
 if(u_test(trimMean_y_acc_off_pd(:,1),trimMean_y_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_acc_off_t2";
 if(u_test(trimMean_y_acc_off_pd(:,2),trimMean_y_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_acc_off_t2";
 if(u_test(trimMean_y_acc_off_pd(:,3),trimMean_y_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_acc_off_t2";
 if(u_test(trimMean_y_acc_off_pd(:,4),trimMean_y_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_acc_off_t2";
 if(u_test(trimMean_y_acc_off_pd(:,5),trimMean_y_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_acc_off_t2";
 if(u_test(percentiles_y_acc_off_pd(:,2),percentiles_y_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_acc_off_t2";
 if(u_test(percentiles_y_acc_off_pd(:,3),percentiles_y_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_acc_off_t2";
 if(u_test(percentiles_y_acc_off_pd(:,4),percentiles_y_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_acc_off_t2";
 if(u_test(percentiles_y_acc_off_pd(:,5),percentiles_y_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_acc_off_t2";
 if(u_test(percentiles_y_acc_off_pd(:,6),percentiles_y_acc_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_acc_off_t2";
 if(u_test(percentiles_y_acc_off_pd(:,7),percentiles_y_acc_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_acc_off_t2";
 if(u_test(percentiles_y_acc_off_pd(:,8),percentiles_y_acc_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_acc_off_t2";
 if(u_test(percentiles_y_acc_off_pd(:,9),percentiles_y_acc_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_acc_off_t2";
 if(u_test(moments_y_acc_off_pd(:,1),moments_y_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_acc_off_t2";
 if(u_test(moments_y_acc_off_pd(:,2),moments_y_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_acc_off_t2";
 if(u_test(moments_y_acc_off_pd(:,3),moments_y_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_y_acc_off_t2";
 if(u_test(moments_y_acc_off_pd(:,4),moments_y_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_y_jerk_on_t2";
 if(u_test(trimMean_y_jerk_on_pd(:,1),trimMean_y_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_jerk_on_t2";
 if(u_test(trimMean_y_jerk_on_pd(:,2),trimMean_y_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_jerk_on_t2";
 if(u_test(trimMean_y_jerk_on_pd(:,3),trimMean_y_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_jerk_on_t2";
 if(u_test(trimMean_y_jerk_on_pd(:,4),trimMean_y_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_jerk_on_t2";
 if(u_test(trimMean_y_jerk_on_pd(:,5),trimMean_y_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_y_jerk_off_t2";
 if(u_test(trimMean_y_jerk_off_pd(:,1),trimMean_y_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles5_y_jerk_on_t2";
 if(u_test(percentiles_y_jerk_on_pd(:,2),percentiles_y_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_jerk_on_t2";
 if(u_test(percentiles_y_jerk_on_pd(:,3),percentiles_y_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_jerk_on_t2";
 if(u_test(percentiles_y_jerk_on_pd(:,4),percentiles_y_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_jerk_on_t2";
 if(u_test(percentiles_y_jerk_on_pd(:,5),percentiles_y_jerk_on_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_jerk_on_t2";
 if(u_test(percentiles_y_jerk_on_pd(:,6),percentiles_y_jerk_on_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_jerk_on_t2";
 if(u_test(percentiles_y_jerk_on_pd(:,7),percentiles_y_jerk_on_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_jerk_on_t2";
 if(u_test(percentiles_y_jerk_on_pd(:,8),percentiles_y_jerk_on_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_jerk_on_t2";
 if(u_test(percentiles_y_jerk_on_pd(:,9),percentiles_y_jerk_on_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_jerk_on_t2";
 if(u_test(moments_y_jerk_on_pd(:,1),moments_y_jerk_on_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_jerk_on_t2";
 if(u_test(moments_y_jerk_on_pd(:,2),moments_y_jerk_on_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_jerk_on_t2";
 if(u_test(moments_y_jerk_on_pd(:,3),moments_y_jerk_on_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_y_jerk_on_t2";
 if(u_test(moments_y_jerk_on_pd(:,4),moments_y_jerk_on_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;

 feature_name="trimMean10_y_jerk_off_t2";
 if(u_test(trimMean_y_jerk_off_pd(:,2),trimMean_y_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_jerk_off_t2";
 if(u_test(trimMean_y_jerk_off_pd(:,3),trimMean_y_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_jerk_off_t2";
 if(u_test(trimMean_y_jerk_off_pd(:,4),trimMean_y_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_jerk_off_t2";
 if(u_test(trimMean_y_jerk_off_pd(:,5),trimMean_y_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_jerk_off_t2";
 if(u_test(percentiles_y_jerk_off_pd(:,2),percentiles_y_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_jerk_off_t2";
 if(u_test(percentiles_y_jerk_off_pd(:,3),percentiles_y_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_jerk_off_t2";
 if(u_test(percentiles_y_jerk_off_pd(:,4),percentiles_y_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_jerk_off_t2";
 if(u_test(percentiles_y_jerk_off_pd(:,5),percentiles_y_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_jerk_off_t2";
 if(u_test(percentiles_y_jerk_off_pd(:,6),percentiles_y_jerk_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_jerk_off_t2";
 if(u_test(percentiles_y_jerk_off_pd(:,7),percentiles_y_jerk_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_jerk_off_t2";
 if(u_test(percentiles_y_jerk_off_pd(:,8),percentiles_y_jerk_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_jerk_off_t2";
 if(u_test(percentiles_y_jerk_off_pd(:,9),percentiles_y_jerk_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_jerk_off_t2";
 if(u_test(moments_y_jerk_off_pd(:,1),moments_y_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_jerk_off_t2";
 if(u_test(moments_y_jerk_off_pd(:,2),moments_y_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_jerk_off_t2";
 if(u_test(moments_y_jerk_off_pd(:,3),moments_y_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_y_jerk_off_t2";
 if(u_test(moments_y_jerk_off_pd(:,4),moments_y_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
  
 
 %=--------------pressure rate-----%
 feature_name="trimMean5_pressure_rate_t2";
 if(u_test(trimMean_pressure_rate_pd(:,1),trimMean_pressure_rate_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_pressure_rate_t2";
 if(u_test(trimMean_pressure_rate_pd(:,2),trimMean_pressure_rate_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_pressure_rate_t2";
 if(u_test(trimMean_pressure_rate_pd(:,3),trimMean_pressure_rate_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_pressure_rate_t2";
 if(u_test(trimMean_pressure_rate_pd(:,4),trimMean_pressure_rate_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_pressure_rate_t2";
 if(u_test(trimMean_pressure_rate_pd(:,5),trimMean_pressure_rate_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_pressure_rate_t2";
 if(u_test(percentiles_pressure_rate_pd(:,1),trimMean_pressure_rate_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_pressure_rate_t2";
 if(u_test(percentiles_pressure_rate_pd(:,2),percentiles_pressure_rate_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_pressure_rate_t2";
 if(u_test(percentiles_pressure_rate_pd(:,3),percentiles_pressure_rate_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_pressure_rate_t2";
 if(u_test(percentiles_pressure_rate_pd(:,4),percentiles_pressure_rate_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_pressure_rate_t2";
 if(u_test(percentiles_pressure_rate_pd(:,5),percentiles_pressure_rate_hc(:,5))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_pressure_rate_t2";
 if(u_test(percentiles_pressure_rate_pd(:,6),percentiles_pressure_rate_hc(:,6))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_pressure_rate_t2";
 if(u_test(percentiles_pressure_rate_pd(:,7),percentiles_pressure_rate_hc(:,7))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_pressure_rate_t2";
 if(u_test(percentiles_pressure_rate_pd(:,8),percentiles_pressure_rate_hc(:,8))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_pressure_rate_t2";
 if(u_test(percentiles_pressure_rate_pd(:,9),percentiles_pressure_rate_hc(:,9))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 feature_name="moments3_pressure_rate_t2";
 if(u_test(moments_pressure_rate_pd(:,1),moments_pressure_rate_hc(:,1))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_pressure_rate_t2";
 if(u_test(moments_pressure_rate_pd(:,2),moments_pressure_rate_hc(:,2))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_pressure_rate_t2";
 if(u_test(moments_pressure_rate_pd(:,3),moments_pressure_rate_hc(:,3))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_pressure_rate_t2";
 if(u_test(moments_pressure_rate_pd(:,4),moments_pressure_rate_hc(:,4))<0.05)   %---condition for passing the test---%
 
  old_passed=[old_passed;feature_name];         %adding the name of the feature to the list of features which old_passed the test"
  
 else
  
  old_failed=[old_failed;feature_name];
  
 endif;
  
 disp("step4");     #--------------------------------------------------------------------------------------------------------
 
 
 
 save old_passed.txt old_passed;
 
 save old_failed.txt old_failed;