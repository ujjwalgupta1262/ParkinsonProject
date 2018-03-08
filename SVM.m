passed_vec = load("passed.txt");
passed_features = passed_vec.passed;

for i = 1:length(passed_features)
	temp = passed_features(i,:);
	temp = temp(temp ~= ' ');
	temp_str = temp(1:length(temp) - 3);
	flag = 0;

	if(length(temp_str) > 7 && temp_str(1:8) == "trimMean") 
		flag = 1;
		if(temp_str(10) == "_")
			column = str2num(temp_str(9));
			temp_str = strcat(temp_str(1:8),temp_str(10:end));
		else
			column = str2num(temp_str(9:10));
			temp_str = strcat(temp_str(1:8),temp_str(11:end));
		end;
	end;

	if(length(temp_str) > 10 && temp_str(1:11) == "percentiles")
		flag = 2;
		if(temp_str(13) == "_")
			column = str2num(temp_str(12));
			temp_str = strcat(temp_str(1:11),temp_str(13:end));
		else
			column = str2num(temp_str(12:13));
			temp_str = strcat(temp_str(1:11),temp_str(14:end));
		end;
	end;

	if(length(temp_str) > 6 && temp_str(1:7) == "moments") 
		flag = 3;
		column = str2num(temp_str(8));
		temp_str = strcat(temp_str(1:7),temp_str(9:end));
	end;

	temp_pd = strcat(temp_str,"_pd.txt");
	temp_hc = strcat(temp_str,"_hc.txt");

	try
		vec_pd = importdata(temp_pd).data;
	catch
		vec_pd = importdata(temp_pd," ",5).data;
	end_try_catch;

	try
		vec_hc = importdata(temp_hc).data;
	catch
		vec_hc = importdata(temp_hc," ",5).data;
	end_try_catch;

	if(flag == 0)
		X = [vec_pd;vec_hc];

	elseif (flag == 1)
		if(column == 5)
			X = [vec_pd(:,1);vec_hc(:,1)];
		elseif(column == 10)
			X = [vec_pd(:,2);vec_hc(:,2)];
		elseif(column == 20)
			X = [vec_pd(:,3);vec_hc(:,3)];
		elseif(column == 30)
			X = [vec_pd(:,4);vec_hc(:,4)];
		elseif(column == 40)
			X = [vec_pd(:,5);vec_hc(:,5)];
		end;

	elseif (flag == 2)
		if(column == 1)
			X = [vec_pd(:,1);vec_hc(:,1)];
		elseif(column == 5)
			X = [vec_pd(:,2);vec_hc(:,2)];
		elseif(column == 10)
			X = [vec_pd(:,3);vec_hc(:,3)];
		elseif(column == 20)
			X = [vec_pd(:,4);vec_hc(:,4)];
		elseif(column == 25)
			X = [vec_pd(:,5);vec_hc(:,5)];
		elseif(column == 30)
			X = [vec_pd(:,6);vec_hc(:,6)];
		elseif(column == 90)
			X = [vec_pd(:,7);vec_hc(:,7)];
		elseif(column == 95)
			X = [vec_pd(:,8);vec_hc(:,8)];
		elseif(column == 99)
			X = [vec_pd(:,9);vec_hc(:,9)];
		end;

	elseif (flag == 3)
		if(column == 3)
			X = [vec_pd(:,1);vec_hc(:,1)];
		elseif(column == 4)
			X = [vec_pd(:,2);vec_hc(:,2)];
		elseif(column == 5)
			X = [vec_pd(:,3);vec_hc(:,3)];
		elseif(column == 6)
			X = [vec_pd(:,4);vec_hc(:,4)];
		end;
	end;
	
	y = [zeros(length(vec_pd),1);ones(length(vec_hc),1)];

	model = svmtrain(X,y,0,gaussianKernel);

	pred = svmPredict(model,X);

	disp("Accuracy");

	disp(mean(pred == y)*100);
end;

