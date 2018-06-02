import numpy as numpy
from sklearn import svm
import random
import math

def get_male(list, label):
    #index_pd = [8, 9, 10, 11, 13, 20, 21, 23, 24, 25, 27, 28, 29, 30, 31, 32, 33, 34]; #for task1
    #index_hc = [1, 4, 5, 7, 8, 9, 10, 13, 14, 17, 20, 21, 23, 24, 28, 29, 32, 33, 35]; #for task1
    index_pd = [8, 9, 10, 11, 13, 20, 21, 23, 24, 25, 27, 28, 29, 30, 31, 32, 33, 34, 35];
    index_hc = [1, 4, 5, 7, 8, 9, 10, 13, 14, 18, 21, 22, 24, 25, 29, 30, 31, 34, 35, 37];
    if (label == "pd"):
        temp = [list[i] for i in index_pd]
    else:
        temp = [list[i] for i in index_hc]
    return temp

def normalise(l):
    mean = numpy.mean(l, axis = 0)
    std = numpy.std(l,axis = 0)
    epsilon=numpy.array([numpy.exp(-10)])
    return (l - mean)/(std+epsilon)

def normaliseMS(list,mean,std):
    l = numpy.array(list)
    epsilon = numpy.array(numpy.exp(-10))
    return (l - mean)/(std+epsilon)

def normaliseMS(list,mean,std):
    l = numpy.array(list)
    epsilon = numpy.array(numpy.exp(-10))
    return (l - mean)/(std+epsilon)

def combine(X,y):
    temp = []
    for i in range(len(X)):
        temp_list = list(X[i])
        temp_list.append(y[i])
        temp.append(temp_list)
    return temp

def separate(list):
    X = []
    y = []
    for i in list:
        X.append(i[0])
        y.append(i[1])
    return (X, y)

def get_column(list, num_column):
    temp = []
    for i in list:
        temp.append(i[num_column])
    return temp


def getAccuracy(X, y,XTest,yTest):
    length = len(X)
    C_set = [0.001, 0.003, 0.01, 0.03, 0.1, 1, 3, 10, 30, 100, 300, 1000]
    max_score = 0
    for j in C_set:
        clf = svm.SVC(C=j)
        score = 0
        for i in range(10):
            # training sets
            alpha = int(i * length / 10)
            beta = int((i + 1) * length / 10)

            X_train = X[:alpha] + X[beta:]
            y_train = y[:alpha] + y[beta:]
            # test sets
            X_test = X[alpha:beta]
            y_test = y[alpha:beta]
            # X_test.reshape(-1,1)
            # reshape and form arrays
            X_test = normaliseMS(X_test,numpy.mean(numpy.array(X_train),axis=0),numpy.std(numpy.array(X_train),axis=0)).reshape(-1,1)
            X_train = normalise(X_train).reshape(-1,1)

            # X_test_set = numpy.asarray(X_test_set).reshape(-1,1)
            # reshape and form arrays
            y_train = numpy.asarray(y_train)
            y_test = numpy.asarray(y_test)
            # y_test = numpy.asarray(y_test_set)
            clf.fit(X_train, y_train)
            score = score + clf.score(X_test, y_test)

        if (score > max_score):
            max_score = score
            best_model = clf
    XTest=normaliseMS(XTest,numpy.mean(numpy.array(X),axis=0),numpy.std(numpy.array(X),axis=0)).reshape(-1,1)
    yTest=numpy.asarray(yTest)
    acc = best_model.score(XTest,yTest)
    return acc, max_score

accuracy_list = []
passed_vec = open("male_passed_t8.txt", "r").readlines()
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
        #print(type(temp))
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
        temp_pd = temp_str + "_pd_t8.txt"
        # print(temp_pd)
        temp_hc = temp_str + "_hc_t8.txt"

        try:
            vec_pd = list(numpy.loadtxt(open(temp_pd, "rt"), delimiter="\n"))
            # vec_pd = [x for x in vec_pd if math.isnan(x)==False]

        except:
            vec_pd = list(numpy.genfromtxt(open(temp_pd, "rt"), delimiter=" "))
            # print(vec_pd)
            # vec_pd = [x for x in vec_pd if math.isnan(x)==False]
            # print(len(vec_pd[0]))
        # All the Nan values were considered as Zero as essentially their contribbution remains null and void
        try:
            vec_hc = list(numpy.loadtxt(open(temp_hc, "rt"), delimiter="\n"))
        # vec_hc = [x for x in vec_hc if math.isnan(x)==False]
        except:
            # print(temp_hc)
            vec_hc = list(numpy.genfromtxt(open(temp_hc, "rt"), delimiter=" "))
            # vec_hc = [x for x in vec_hc if math.isnan(x)==False]
            # print(len(vec_hc[0]))

        if (flag == 0):
            X = get_male(vec_pd, "pd") + get_male(vec_hc, "hc")

        elif (flag == 1):
            if (column == 5):
                X = get_male(get_column(vec_pd, 0), "pd") + get_male(get_column(vec_hc, 0), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 10):
                X = get_male(get_column(vec_pd, 1), "pd") + get_male(get_column(vec_hc, 1), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 20):
                X = get_male(get_column(vec_pd, 2), "pd") + get_male(get_column(vec_hc, 2), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 30):
                X = get_male(get_column(vec_pd, 3), "pd") + get_male(get_column(vec_hc, 3), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 40):
                X = get_male(get_column(vec_pd, 4), "pd") + get_male(get_column(vec_hc, 4), "hc")
                X = [x for x in X if math.isnan(x) == False]

        elif (flag == 2):
            if (column == 1):
                X = get_male(get_column(vec_pd, 0), "pd") + get_male(get_column(vec_hc, 0), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 5):
                X = get_male(get_column(vec_pd, 1), "pd") + get_male(get_column(vec_hc, 1), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 10):
                X = get_male(get_column(vec_pd, 2), "pd") + get_male(get_column(vec_hc, 2), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 20):
                X = get_male(get_column(vec_pd, 3), "pd") + get_male(get_column(vec_hc, 3), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 25):
                X = get_male(get_column(vec_pd, 4), "pd") + get_male(get_column(vec_hc, 4), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 30):
                X = get_male(get_column(vec_pd, 5), "pd") + get_male(get_column(vec_hc, 5), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 90):
                X = get_male(get_column(vec_pd, 6), "pd") + get_male(get_column(vec_hc, 6), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 95):
                X = get_male(get_column(vec_pd, 7), "pd") + get_male(get_column(vec_hc, 7), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 99):
                X = get_male(get_column(vec_pd, 8), "pd") + get_male(get_column(vec_hc, 8), "hc")
                X = [x for x in X if math.isnan(x) == False]

        elif (flag == 3):
            if (column == 3):
                X = get_male(get_column(vec_pd, 0), "pd") + get_male(get_column(vec_hc, 0), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 4):
                X = get_male(get_column(vec_pd, 1), "pd") + get_male(get_column(vec_hc, 1), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 5):
                X = get_male(get_column(vec_pd, 2), "pd") + get_male(get_column(vec_hc, 2), "hc")
                X = [x for x in X if math.isnan(x) == False]
            elif (column == 6):
                X = get_male(get_column(vec_pd, 3), "pd") + get_male(get_column(vec_hc, 3), "hc")
                X = [x for x in X if math.isnan(x) == False]

        y = [0] * len(get_male(vec_pd, "pd")) + [1] * len(get_male(vec_hc, "hc"))

        # print(X)
        # print(y)
        score = 0
        for i in range(50):
            X = [[i] for i in X]
            t = combine(X, y)
            random.shuffle(t)
            (X, y) = separate(t)
            end=(int)(4*len(X)/5)
            #print(end)
            score += getAccuracy(X[:end], y[:end],X[end:],y[end:])[0]
        accuracy_list.append([old_str + "_t8", score / 50])

accuracy_list.sort(key=lambda x: x[1], reverse=True)
file = open("male_accuracy_t8_new.txt", "w")
for i in accuracy_list:
    file.write(str(i))
    file.write("\n")
file.close()
