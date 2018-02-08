
  %--------Mann Witney U_Test on the declared matrices---------%
  
  passed=[];      %features which passed the test
  failed=[];      %features which failed the test
 
 

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
 
 feature_name="NCV_on_t1";
 if(u_test(NCV_on_pd,NCV_on_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="NCA_on_t1";
 if(u_test(NCA_on_pd,NCA_on_hc)<0.05)   %---condition for passing the test---%
 
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
 
 feature_name="NCP_t1";
 if(u_test(NCP_pd,NCP_hc)<0.05)   %---condition for passing the test---%
 
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
 
 feature_name="NCV_off_t1";
 if(u_test(NCV_off_pd,NCV_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="NCA_off_t1";
 if(u_test(NCA_off_pd,NCA_off_hc)<0.05)   %---condition for passing the test---%
 
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
 
 
 feature_name="arithMean_x_vel_off_t1";
 if(u_test(arithMean_x_vel_off_pd,arithMean_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_vel_off_t1";
 if(u_test(geoMean_x_vel_off_pd,geoMean_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_vel_off _t1";
 if(u_test(kurto_x_vel_off_pd,kurto_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_vel_off_t1";
 if(u_test(ranges_x_vel_off_pd,ranges_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_x_vel_off_t1";
 if(u_test(medians_x_vel_off_pd,medians_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_x_vel_off_t1";
 if(u_test(modes_x_vel_off_pd,modes_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_vel_off_t1";
 if(u_test(stdDevs_x_vel_off_pd,stdDevs_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_vel_off_t1";
 if(u_test(robustRange_x_vel_off_pd,robustRange_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_vel_off_t1";
 if(u_test(interQuartiles_x_vel_off_pd,interQuartiles_x_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_acc_off_t1";
 if(u_test(arithMean_x_acc_off_pd,arithMean_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_acc_off_t1";
 if(u_test(geoMean_x_acc_off_pd,geoMean_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_acc_off _t1";
 if(u_test(kurto_x_acc_off_pd,kurto_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_acc_off_t1";
 if(u_test(ranges_x_acc_off_pd,ranges_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_x_acc_off_t1";
 if(u_test(medians_x_acc_off_pd,medians_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_x_acc_off_t1";
 if(u_test(modes_x_acc_off_pd,modes_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_acc_off_t1";
 if(u_test(stdDevs_x_acc_off_pd,stdDevs_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_acc_off_t1";
 if(u_test(robustRange_x_acc_off_pd,robustRange_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_acc_off_t1";
 if(u_test(interQuartiles_x_acc_off_pd,interQuartiles_x_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_x_jerk_off_t1";
 if(u_test(arithMean_x_jerk_off_pd,arithMean_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_x_jerk_off_t1";
 if(u_test(geoMean_x_jerk_off_pd,geoMean_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_x_jerk_off _t1";
 if(u_test(kurto_x_jerk_off_pd,kurto_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_x_jerk_off_t1";
 if(u_test(ranges_x_jerk_off_pd,ranges_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_x_jerk_off_t1";
 if(u_test(medians_x_jerk_off_pd,medians_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_x_jerk_off_t1";
 if(u_test(modes_x_jerk_off_pd,modes_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_x_jerk_off_t1";
 if(u_test(stdDevs_x_jerk_off_pd,stdDevs_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_x_jerk_off_t1";
 if(u_test(robustRange_x_jerk_off_pd,robustRange_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_x_jerk_off_t1";
 if(u_test(interQuartiles_x_jerk_off_pd,interQuartiles_x_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_vel_off_t1";
 if(u_test(arithMean_y_vel_off_pd,arithMean_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_vel_off_t1";
 if(u_test(geoMean_y_vel_off_pd,geoMean_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_vel_off _t1";
 if(u_test(kurto_y_vel_off_pd,kurto_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_vel_off_t1";
 if(u_test(ranges_y_vel_off_pd,ranges_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_y_vel_off_t1";
 if(u_test(medians_y_vel_off_pd,medians_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_y_vel_off_t1";
 if(u_test(modes_y_vel_off_pd,modes_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_vel_off_t1";
 if(u_test(stdDevs_y_vel_off_pd,stdDevs_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_vel_off_t1";
 if(u_test(robustRange_y_vel_off_pd,robustRange_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_vel_off_t1";
 if(u_test(interQuartiles_y_vel_off_pd,interQuartiles_y_vel_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_acc_off_t1";
 if(u_test(arithMean_y_acc_off_pd,arithMean_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_acc_off_t1";
 if(u_test(geoMean_y_acc_off_pd,geoMean_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_acc_off _t1";
 if(u_test(kurto_y_acc_off_pd,kurto_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_acc_off_t1";
 if(u_test(ranges_y_acc_off_pd,ranges_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_y_acc_off_t1";
 if(u_test(medians_y_acc_off_pd,medians_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_y_acc_off_t1";
 if(u_test(modes_y_acc_off_pd,modes_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_acc_off_t1";
 if(u_test(stdDevs_y_acc_off_pd,stdDevs_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_acc_off_t1";
 if(u_test(robustRange_y_acc_off_pd,robustRange_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_acc_off_t1";
 if(u_test(interQuartiles_y_acc_off_pd,interQuartiles_y_acc_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_y_jerk_off_t1";
 if(u_test(arithMean_y_jerk_off_pd,arithMean_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_y_jerk_off_t1";
 if(u_test(geoMean_y_jerk_off_pd,geoMean_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_y_jerk_off _t1";
 if(u_test(kurto_y_jerk_off_pd,kurto_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_y_jerk_off_t1";
 if(u_test(ranges_y_jerk_off_pd,ranges_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_y_jerk_off_t1";
 if(u_test(medians_y_jerk_off_pd,medians_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_y_jerk_off_t1";
 if(u_test(modes_y_jerk_off_pd,modes_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_y_jerk_off_t1";
 if(u_test(stdDevs_y_jerk_off_pd,stdDevs_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_y_jerk_off_t1";
 if(u_test(robustRange_y_jerk_off_pd,robustRange_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_y_jerk_off_t1";
 if(u_test(interQuartiles_y_jerk_off_pd,interQuartiles_y_jerk_off_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="arithMean_pressure_rate_t1";
 if(u_test(arithMean_pressure_rate_pd,arithMean_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="geoMean_pressure_rate_t1";
 if(u_test(geoMean_pressure_rate_pd,geoMean_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="kurto_pressure_rate _t1";
 if(u_test(kurto_pressure_rate_pd,kurto_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="ranges_pressure_rate_t1";
 if(u_test(ranges_pressure_rate_pd,ranges_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="medians_pressure_rate_t1";
 if(u_test(medians_pressure_rate_pd,medians_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="modes_pressure_rate_t1";
 if(u_test(modes_pressure_rate_pd,modes_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="stdDevs_pressure_rate_t1";
 if(u_test(stdDevs_pressure_rate_pd,stdDevs_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="robustRange_pressure_rate_t1";
 if(u_test(robustRange_pressure_rate_pd,robustRange_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="interQuartiles_pressure_rate_t1";
 if(u_test(interQuartiles_pressure_rate_pd,interQuartiles_pressure_rate_hc)<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 disp("step3");               #-------------------------------------------------------------------------------------------------#
 
 
 %---------------------------------------------------------------------------------------------------------------------------------------------------%
 
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
 
 feature_name="trimMean5_x_acc_off_t1";
 if(u_test(trimMean_x_acc_off_pd(:,1),trimMean_x_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_acc_off_t1";
 if(u_test(trimMean_x_acc_off_pd(:,2),trimMean_x_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_acc_off_t1";
 if(u_test(trimMean_x_acc_off_pd(:,3),trimMean_x_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_acc_off_t1";
 if(u_test(trimMean_x_acc_off_pd(:,4),trimMean_x_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_acc_off_t1";
 if(u_test(trimMean_x_acc_off_pd(:,5),trimMean_x_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,1),trimMean_x_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,2),trimMean_x_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,3),trimMean_x_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,4),trimMean_x_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,5),trimMean_x_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,6),trimMean_x_acc_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,7),trimMean_x_acc_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,8),trimMean_x_acc_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,9),trimMean_x_acc_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,1),trimMean_x_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,2),trimMean_x_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_acc_off_t1";
 if(u_test(percentiles_x_acc_off_pd(:,3),trimMean_x_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_x_jerk_off_t1";
 if(u_test(trimMean_x_jerk_off_pd(:,1),trimMean_x_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_x_jerk_off_t1";
 if(u_test(trimMean_x_jerk_off_pd(:,2),trimMean_x_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_x_jerk_off_t1";
 if(u_test(trimMean_x_jerk_off_pd(:,3),trimMean_x_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_x_jerk_off_t1";
 if(u_test(trimMean_x_jerk_off_pd(:,4),trimMean_x_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_x_jerk_off_t1";
 if(u_test(trimMean_x_jerk_off_pd(:,5),trimMean_x_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,1),trimMean_x_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,2),trimMean_x_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,3),trimMean_x_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,4),trimMean_x_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,5),trimMean_x_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,6),trimMean_x_jerk_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,7),trimMean_x_jerk_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,8),trimMean_x_jerk_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,9),trimMean_x_jerk_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,1),trimMean_x_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,2),trimMean_x_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_x_jerk_off_t1";
 if(u_test(percentiles_x_jerk_off_pd(:,3),trimMean_x_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_y_vel_off_t1";
 if(u_test(trimMean_y_vel_off_pd(:,1),trimMean_y_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_vel_off_t1";
 if(u_test(trimMean_y_vel_off_pd(:,2),trimMean_y_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_vel_off_t1";
 if(u_test(trimMean_y_vel_off_pd(:,3),trimMean_y_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_vel_off_t1";
 if(u_test(trimMean_y_vel_off_pd(:,4),trimMean_y_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_vel_off_t1";
 if(u_test(trimMean_y_vel_off_pd(:,5),trimMean_y_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,1),trimMean_y_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,2),trimMean_y_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,3),trimMean_y_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,4),trimMean_y_vel_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,5),trimMean_y_vel_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,6),trimMean_y_vel_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,7),trimMean_y_vel_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,8),trimMean_y_vel_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,9),trimMean_y_vel_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,1),trimMean_y_vel_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,2),trimMean_y_vel_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_vel_off_t1";
 if(u_test(percentiles_y_vel_off_pd(:,3),trimMean_y_vel_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_y_acc_off_t1";
 if(u_test(trimMean_y_acc_off_pd(:,1),trimMean_y_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_acc_off_t1";
 if(u_test(trimMean_y_acc_off_pd(:,2),trimMean_y_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_acc_off_t1";
 if(u_test(trimMean_y_acc_off_pd(:,3),trimMean_y_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_acc_off_t1";
 if(u_test(trimMean_y_acc_off_pd(:,4),trimMean_y_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_acc_off_t1";
 if(u_test(trimMean_y_acc_off_pd(:,5),trimMean_y_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,1),trimMean_y_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,2),trimMean_y_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,3),trimMean_y_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,4),trimMean_y_acc_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,5),trimMean_y_acc_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,6),trimMean_y_acc_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,7),trimMean_y_acc_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,8),trimMean_y_acc_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,9),trimMean_y_acc_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,1),trimMean_y_acc_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,2),trimMean_y_acc_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_acc_off_t1";
 if(u_test(percentiles_y_acc_off_pd(:,3),trimMean_y_acc_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean5_y_jerk_off_t1";
 if(u_test(trimMean_y_jerk_off_pd(:,1),trimMean_y_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_y_jerk_off_t1";
 if(u_test(trimMean_y_jerk_off_pd(:,2),trimMean_y_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_y_jerk_off_t1";
 if(u_test(trimMean_y_jerk_off_pd(:,3),trimMean_y_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_y_jerk_off_t1";
 if(u_test(trimMean_y_jerk_off_pd(:,4),trimMean_y_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_y_jerk_off_t1";
 if(u_test(trimMean_y_jerk_off_pd(:,5),trimMean_y_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,1),trimMean_y_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,2),trimMean_y_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,3),trimMean_y_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,4),trimMean_y_jerk_off_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,5),trimMean_y_jerk_off_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,6),trimMean_y_jerk_off_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,7),trimMean_y_jerk_off_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,8),trimMean_y_jerk_off_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,9),trimMean_y_jerk_off_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,1),trimMean_y_jerk_off_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,2),trimMean_y_jerk_off_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_y_jerk_off_t1";
 if(u_test(percentiles_y_jerk_off_pd(:,3),trimMean_y_jerk_off_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="trimMean5_pressure_rate_t1";
 if(u_test(trimMean_pressure_rate_pd(:,1),trimMean_pressure_rate_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean10_pressure_rate_t1";
 if(u_test(trimMean_pressure_rate_pd(:,2),trimMean_pressure_rate_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean20_pressure_rate_t1";
 if(u_test(trimMean_pressure_rate_pd(:,3),trimMean_pressure_rate_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean30_pressure_rate_t1";
 if(u_test(trimMean_pressure_rate_pd(:,4),trimMean_pressure_rate_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="trimMean40_pressure_rate_t1";
 if(u_test(trimMean_pressure_rate_pd(:,5),trimMean_pressure_rate_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles1_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,1),trimMean_pressure_rate_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="percentiles5_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,2),trimMean_pressure_rate_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles10_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,3),trimMean_pressure_rate_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles20_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,4),trimMean_pressure_rate_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles25_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,5),trimMean_pressure_rate_hc(:,5))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles30_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,6),trimMean_pressure_rate_hc(:,6))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles90_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,7),trimMean_pressure_rate_hc(:,7))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles95_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,8),trimMean_pressure_rate_hc(:,8))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="percentiles99_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,9),trimMean_pressure_rate_hc(:,9))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 feature_name="moments3_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,1),trimMean_pressure_rate_hc(:,1))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments4_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,2),trimMean_pressure_rate_hc(:,2))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments5_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,3),trimMean_pressure_rate_hc(:,3))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
 
 
 feature_name="moments6_pressure_rate_t1";
 if(u_test(percentiles_pressure_rate_pd(:,4),trimMean_pressure_rate_hc(:,4))<0.05)   %---condition for passing the test---%
 
  passed=[passed;feature_name];         %adding the name of the feature to the list of features which passed the test"
  
 else
  
  failed=[failed;feature_name];
  
 endif;
  
 disp("step4");     #--------------------------------------------------------------------------------------------------------
 
 
 
 save passed.txt passed;
 
 save failed.txt failed;
 
