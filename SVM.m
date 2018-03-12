import numpy as numpy
import math

passed_vec = open("passed.txt", "r").readlines()
passed_vec = passed_vec[5:]
for i in range(len(passed_vec)):
    if (passed_vec[i][0] == "#"):
    # passed_vec.remove(passed_vec[i])
        passed_vec[i]=-100   #marking non-required
    else:
        passed_vec[i] = passed_vec[i].strip("\n")


passed_features = passed_vec

for i in range(len(passed_features)):
    if(passed_features[i]!=-100):
        temp = passed_features[i]
    #print(temp)
        temp=temp.strip()
        temp_str = temp[:-3]
    #print(temp_str)
        flag = 0

        if (len(temp_str) > 7 and temp_str[0:8] == "trimMean"):
            flag = 1
            if (temp_str[9] == "_"):
                column = int(temp_str[8])
                temp_str = temp_str[0:8] + temp_str[9:]
            else:
                column = int(temp_str[8:10])
                temp_str = temp_str[0:8] + temp_str[10:]

        if (len(temp_str) > 10 and temp_str[0:11] == "percentiles"):
            flag = 2
            if (temp_str[12] == "_"):
                column = int(temp_str[11])
                temp_str = temp_str[0:11] + temp_str[12:]
            else:
                column = int(temp_str[11:13])
                temp_str = temp_str[0:11] + temp_str[13:]

        if (len(temp_str) > 6 and temp_str[0:7] == "moments"):
            flag = 3
            column = int(temp_str[7])
            temp_str = temp_str[0:7] + temp_str[8:]

    #print(temp_str)
        temp_pd = temp_str + "_pd.txt"
        print(temp_pd)
        temp_hc=temp_str+ "_hc.txt"

        try:
            vec_pd = list(numpy.loadtxt(open(temp_pd, "rt"), delimiter="\n"))
            print(vec_pd)
        except:
            vec_pd = list(numpy.loadtxt(open(temp_pd, "rt"), delimiter=" "))
            print(vec_pd)


        try:
            vec_hc = list(numpy.loadtxt(open(temp_hc, "rt"), delimiter="\n"))
        except:
            vec_hc = list(numpy.loadtxt(open(temp_hc, "rt"), delimiter=" "))

        if (flag == 0):
            X = vec_pd + vec_hc

        elif (flag == 1):
            if (column == 5):
                X = vec_pd[:, 1] + vec_hc[:, 1]
            elif (column == 10):
                X = vec_pd[:, 2] + vec_hc[:, 2]
            elif (column == 20):
                X = vec_pd[:, 3] + vec_hc[:, 3]
            elif (column == 30):
                X = vec_pd[:, 4] + vec_hc[:, 4]
            elif (column == 40):
                X = vec_pd[:, 5] + vec_hc[:, 5]

        elif (flag == 2):
            if (column == 1):
                X = vec_pd[:, 1]+ vec_hc[:, 1]
            elif (column == 5):
                X = vec_pd[:, 2]+ vec_hc[:, 2]
            elif (column == 10):
                X = vec_pd[:, 3]+ vec_hc[:, 3]
            elif (column == 20):
                X = vec_pd[:, 4]+ vec_hc[:, 4]
            elif (column == 25):
                X = vec_pd[:, 5]+ vec_hc[:, 5]
            elif (column == 30):
                X = vec_pd[:, 6]+ vec_hc[:, 6]
            elif (column == 90):
                X = vec_pd[:, 7]+ vec_hc[:, 7]
            elif (column == 95):
                X = vec_pd[:, 8]+ vec_hc[:, 8]
            elif (column == 99):
                X = vec_pd[:, 9]+ vec_hc[:, 9]

        elif (flag == 3):
            if (column == 3):
                X = vec_pd[:, 1]+ vec_hc[:, 1]
            elif (column == 4):
                X = vec_pd[:, 2]+ vec_hc[:, 2]
            elif (column == 5):
                X = vec_pd[:, 3]+ vec_hc[:, 3]
            elif (column == 6):
                X = vec_pd[:, 4]+ vec_hc[:, 4]


        y = [0] * len(vec_pd) + [1] * len(vec_hc)

        print(y)
