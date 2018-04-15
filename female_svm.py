import numpy as numpy
from sklearn import svm
import random
import math

def get_female(list,label):
    index_pd = [0, 1, 2, 3, 4, 5, 6, 7, 12, 14, 15, 16, 17, 18, 19, 22, 26, 36];
    index_hc = [0, 2, 3, 6, 11, 12, 15, 16, 17, 19, 20, 23, 26, 27, 28, 32, 33, 36];
    if (label == "pd"):
        temp = [list[i] for i in index_pd]
    else:
        temp = [list[i] for i in index_hc]
    return temp

def combine(X,y):
    temp = []
    for i in range(len(X)):
        temp.append([X[i],y[i]])
    return temp

def separate(list):
    X = []
    y = []
    for i in list:
        X.append(i[0])
        y.append(i[1])
    return (X,y)

def get_column(list, num_column):
    temp = []
    for i in list:
        temp.append(i[num_column])
    return temp


def getAccuracy(X, y):
    length = len(X)
    C_set = [0.001, 0.003, 0.01, 0.03, 0.1, 1, 3, 10, 30, 100, 300, 1000]
    max_score=0
    for j in C_set:
        clf = svm.SVC(C=j)
        score=0
        for i in range(10):
            # training sets
            alpha=int(i * length / 10)
            beta=int((i + 1) * length / 10)

            X_train = X[:alpha] + X[beta:]
            y_train = y[:alpha] + y[beta:]
            # test sets
            X_test = X[alpha:beta]
            y_test = y[alpha:beta]
            # reshape and form arrays
            X_train = numpy.asarray(X_train).reshape(-1, 1)
            X_test = numpy.asarray(X_test).reshape(-1, 1)
            # X_test_set = numpy.asarray(X_test_set).reshape(-1,1)
            # reshape and form arrays
            y_train = numpy.asarray(y_train)
            y_test = numpy.asarray(y_test)
            # y_test = numpy.asarray(y_test_set)
            clf.fit(X_train, y_train)
            score = score+clf.score(X_test, y_test)

        if (score > max_score):
            max_score = score
            best_model = clf

    acc=max_score/10.0
    return acc, max_score


accuracy_list = []
passed_vec = open("female_passed.txt", "r").readlines()
passed_vec = passed_vec[5:]
for i in range(len(passed_vec)):
    if (passed_vec[i][0] == "#"):
        # passed_vec.remove(passed_vec[i])
        passed_vec[i] = -100  # marking non-required
    else:
        passed_vec[i] = passed_vec[i].strip("\n")

passed_features = passed_vec
dict_scores = {}
for i in range(len(passed_features)):
    if (passed_features[i] != -100):
        temp = passed_features[i]
        # print(temp)
        temp = temp.strip()
        temp_str = temp[:-3]
        if (temp_str == ""):
            break
        # print(temp_str)
        flag = 0
        old_str = temp_str
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

        # print(temp_str)
        temp_pd = temp_str + "_pd.txt"
        # print(temp_pd)
        temp_hc = temp_str + "_hc.txt"

        try:
            vec_pd = list(numpy.loadtxt(open(temp_pd, "rt"), delimiter="\n"))
            #vec_pd = [x for x in vec_pd if math.isnan(x)==False]

        except:
            vec_pd = list(numpy.genfromtxt(open(temp_pd, "rt"), delimiter=" "))
            #print(vec_pd)
            #vec_pd = [x for x in vec_pd if math.isnan(x)==False]
            # print(len(vec_pd[0]))
# All the Nan values were considered as Zero as essentially their contribbution remains null and void
        try:
            vec_hc = list(numpy.loadtxt(open(temp_hc, "rt"), delimiter="\n"))
           # vec_hc = [x for x in vec_hc if math.isnan(x)==False]
        except:
            #print(temp_hc)
            vec_hc = list(numpy.genfromtxt(open(temp_hc, "rt"), delimiter=" "))
            #vec_hc = [x for x in vec_hc if math.isnan(x)==False]
            # print(len(vec_hc[0]))

        if (flag == 0):
            X = get_female(vec_pd,"pd") + get_female(vec_hc,"hc")

        elif (flag == 1):
            if (column == 5):
                X = get_female(get_column(vec_pd, 0),"pd") + get_female(get_column(vec_hc, 0),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 10):
                X = get_female(get_column(vec_pd, 1),"pd") + get_female(get_column(vec_hc, 1),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 20):
                X = get_female(get_column(vec_pd, 2),"pd") + get_female(get_column(vec_hc, 2),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 30):
                X = get_female(get_column(vec_pd, 3),"pd") + get_female(get_column(vec_hc, 3),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 40):
                X = get_female(get_column(vec_pd, 4),"pd") + get_female(get_column(vec_hc, 4),"hc")
                X = [x for x in X if math.isnan(x)==False]

        elif (flag == 2):
            if (column == 1):
                X = get_female(get_column(vec_pd, 0),"pd") + get_female(get_column(vec_hc, 0),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 5):
                X = get_female(get_column(vec_pd, 1),"pd") + get_female(get_column(vec_hc, 1),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 10):
                X = get_female(get_column(vec_pd, 2),"pd") + get_female(get_column(vec_hc, 2),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 20):
                X = get_female(get_column(vec_pd, 3),"pd") + get_female(get_column(vec_hc, 3),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 25):
                X = get_female(get_column(vec_pd, 4),"pd") + get_female(get_column(vec_hc, 4),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 30):
                X = get_female(get_column(vec_pd, 5),"pd") + get_female(get_column(vec_hc, 5),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 90):
                X = get_female(get_column(vec_pd, 6),"pd") + get_female(get_column(vec_hc, 6),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 95):
                X = get_female(get_column(vec_pd, 7),"pd") + get_female(get_column(vec_hc, 7),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 99):
                X = get_female(get_column(vec_pd, 8),"pd") + get_female(get_column(vec_hc, 8),"hc")
                X = [x for x in X if math.isnan(x)==False]

        elif (flag == 3):
            if (column == 3):
                X = get_female(get_column(vec_pd, 0),"pd") + get_female(get_column(vec_hc, 0),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 4):
                X = get_female(get_column(vec_pd, 1),"pd") + get_female(get_column(vec_hc, 1),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 5):
                X = get_female(get_column(vec_pd, 2),"pd") + get_female(get_column(vec_hc, 2),"hc")
                X = [x for x in X if math.isnan(x)==False]
            elif (column == 6):
                X = get_female(get_column(vec_pd, 3),"pd") + get_female(get_column(vec_hc, 3),"hc")
                X = [x for x in X if math.isnan(x)==False]

        y = [0] * len(get_female(vec_pd,"pd")) + [1] * len(get_female(vec_hc,"hc"))

        #print(X)
        #print(y)
        score = 0
        for i in range(50):
            t = combine(X,y)
            random.shuffle(t)
            (X,y) = separate(t)
            l = getAccuracy(X,y)[0]
            print(l)
            score += l
        accuracy_list.append([old_str + "_t2", score/50])

accuracy_list.sort(key=lambda x: x[1], reverse=True)
file = open ("female_accuracy.txt","w")
for i in accuracy_list:
    file.write(str(i))
    file.write("\n")
file.close()

