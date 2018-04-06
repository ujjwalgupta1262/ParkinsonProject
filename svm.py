import numpy as numpy
from sklearn import svm

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
            X_train = X[:i * length / 10] + X[(i + 1) * length / 10:]
            y_train = y[:i * length / 10] + y[(i + 1) * length / 10:]
            # test sets
            X_test = X[i * length / 10:(i + 1) * length / 10]
            y_test = y[i * length / 10:(i + 1) * length / 10]
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
passed_vec = open("passed.txt", "r").readlines()
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
            # print(vec_pd)
        except:
            vec_pd = list(numpy.genfromtxt(open(temp_pd, "rt"), delimiter=" "))
            # print(len(vec_pd[0]))

        try:
            vec_hc = list(numpy.loadtxt(open(temp_hc, "rt"), delimiter="\n"))
        except:
            vec_hc = list(numpy.genfromtxt(open(temp_hc, "rt"), delimiter=" "))
            # print(len(vec_hc[0]))

        if (flag == 0):
            X = vec_pd + vec_hc

        elif (flag == 1):
            if (column == 5):
                X = get_column(vec_pd, 0) + get_column(vec_hc, 0)
            elif (column == 10):
                X = get_column(vec_pd, 1) + get_column(vec_hc, 1)
            elif (column == 20):
                X = get_column(vec_pd, 2) + get_column(vec_hc, 2)
            elif (column == 30):
                X = get_column(vec_pd, 3) + get_column(vec_hc, 3)
            elif (column == 40):
                X = get_column(vec_pd, 4) + get_column(vec_hc, 4)

        elif (flag == 2):
            if (column == 1):
                X = get_column(vec_pd, 0) + get_column(vec_hc, 0)
            elif (column == 5):
                X = get_column(vec_pd, 1) + get_column(vec_hc, 1)
            elif (column == 10):
                X = get_column(vec_pd, 2) + get_column(vec_hc, 2)
            elif (column == 20):
                X = get_column(vec_pd, 3) + get_column(vec_hc, 3)
            elif (column == 25):
                X = get_column(vec_pd, 4) + get_column(vec_hc, 4)
            elif (column == 30):
                X = get_column(vec_pd, 5) + get_column(vec_hc, 5)
            elif (column == 90):
                X = get_column(vec_pd, 6) + get_column(vec_hc, 6)
            elif (column == 95):
                X = get_column(vec_pd, 7) + get_column(vec_hc, 7)
            elif (column == 99):
                X = get_column(vec_pd, 8) + get_column(vec_hc, 8)

        elif (flag == 3):
            if (column == 3):
                X = get_column(vec_pd, 0) + get_column(vec_hc, 0)
            elif (column == 4):
                X = get_column(vec_pd, 1) + get_column(vec_hc, 1)
            elif (column == 5):
                X = get_column(vec_pd, 2) + get_column(vec_hc, 2)
            elif (column == 6):
                X = get_column(vec_pd, 3) + get_column(vec_hc, 3)

        y = [0] * len(vec_pd) + [1] * len(vec_hc)

        score = getAccuracy(X,y)
        accuracy_list.append([temp_str, score])

accuracy_list.sort(key=lambda x: x[1], reverse=True)
for i in accuracy_list:
    print(i)
