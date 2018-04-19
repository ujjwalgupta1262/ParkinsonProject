

function [retval] = normalise (input)
    
  %normalising the data before feature selection
  mean_data=mean(input);
  
  stdev_data=std(input);
  
  retval=(input.-mean_data)./(stdev_data);

endfunction
