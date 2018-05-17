import numpy as numpy
from sklearn import svm
import random
import math

epochs = 50

def normalise(list):
    l = numpy.array(list)
    mean = numpy.mean(l, axis = 0)
    std = numpy.std(l,axis = 0)
    return (l - mean)/std

def getList(l,indices):
    return [l[i] for i in indices]

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
        X.append(i[:-1])
        y.append(i[-1])
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
            X_train = normalise(X_train)
            X_test = normalise(X_test)
            # reshape and form arrays
            #X_train = numpy.asarray(X_train).reshape(-1, 1)
            #X_test = numpy.asarray(X_test).reshape(-1, 1)
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

#!/usr/bin/python
# -*- coding: utf-8 -*-


def getData(filename):
    X_list = [[]]*75
    y_list = []
    l = open(filename, 'r').readlines()
    for i in range(len(l)):
        l[i] = l[i].split(',')
        l[i][0] = (l[i][0])[3:-2]
        temp_str = l[i][0]
        flag = 0
        if len(temp_str) > 7 and temp_str[0:8] == 'trimMean':
            flag = 1
            if temp_str[9] == '_':
                column = int(temp_str[8])
                temp_str = temp_str[0:8] + temp_str[9:]
            else:
                column = int(temp_str[8:10])
                temp_str = temp_str[0:8] + temp_str[10:]

        if len(temp_str) > 10 and temp_str[0:11] == 'percentiles':
            flag = 2
            if temp_str[12] == '_':
                column = int(temp_str[11])
                temp_str = temp_str[0:11] + temp_str[12:]
            else:
                column = int(temp_str[11:13])
                temp_str = temp_str[0:11] + temp_str[13:]

        if len(temp_str) > 6 and temp_str[0:7] == 'moments':
            flag = 3
            column = int(temp_str[7])
            temp_str = temp_str[0:7] + temp_str[8:]

             # print(temp_str)

        temp_pd = temp_str[:-3] + '_pd' + temp_str[-3:] + ".txt"

            # print(temp_pd)

        temp_hc = temp_str[:-3] + '_hc' + temp_str[-3:] + ".txt"

        try:
            vec_pd = list(numpy.loadtxt(open(temp_pd, 'rt'), delimiter='\n'
                          ))
        except:

                # vec_pd = [x for x in vec_pd if math.isnan(x)==False]

            vec_pd = list(numpy.genfromtxt(open(temp_pd, 'rt'),
                          delimiter=' '))

                # print(vec_pd)
                # vec_pd = [x for x in vec_pd if math.isnan(x)==False]
                # print(len(vec_pd[0]))
    # All the Nan values were considered as Zero as essentially their contribbution remains null and void

        try:
            vec_hc = list(numpy.loadtxt(open(temp_hc, 'rt'), delimiter='\n'
                          ))
        except:

               # vec_hc = [x for x in vec_hc if math.isnan(x)==False]
                # print(temp_hc)

            vec_hc = list(numpy.genfromtxt(open(temp_hc, 'rt'),
                          delimiter=' '))

                # vec_hc = [x for x in vec_hc if math.isnan(x)==False]
                # print(len(vec_hc[0]))

        if flag == 0:
            X = vec_pd + vec_hc
        elif flag == 1:

            if column == 5:
                X = get_column(vec_pd, 0) + get_column(vec_hc, 0)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 10:
                X = get_column(vec_pd, 1) + get_column(vec_hc, 1)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 20:
                X = get_column(vec_pd, 2) + get_column(vec_hc, 2)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 30:
                X = get_column(vec_pd, 3) + get_column(vec_hc, 3)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 40:
                X = get_column(vec_pd, 4) + get_column(vec_hc, 4)
                X = [x for x in X if math.isnan(x) == False]
        elif flag == 2:

            if column == 1:
                X = get_column(vec_pd, 0) + get_column(vec_hc, 0)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 5:
                X = get_column(vec_pd, 1) + get_column(vec_hc, 1)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 10:
                X = get_column(vec_pd, 2) + get_column(vec_hc, 2)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 20:
                X = get_column(vec_pd, 3) + get_column(vec_hc, 3)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 25:
                X = get_column(vec_pd, 4) + get_column(vec_hc, 4)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 30:
                X = get_column(vec_pd, 5) + get_column(vec_hc, 5)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 90:
                X = get_column(vec_pd, 6) + get_column(vec_hc, 6)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 95:
                X = get_column(vec_pd, 7) + get_column(vec_hc, 7)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 99:
                X = get_column(vec_pd, 8) + get_column(vec_hc, 8)
                X = [x for x in X if math.isnan(x) == False]
        elif flag == 3:

            if column == 3:
                X = get_column(vec_pd, 0) + get_column(vec_hc, 0)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 4:
                X = get_column(vec_pd, 1) + get_column(vec_hc, 1)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 5:
                X = get_column(vec_pd, 2) + get_column(vec_hc, 2)
                X = [x for x in X if math.isnan(x) == False]
            elif column == 6:
                X = get_column(vec_pd, 3) + get_column(vec_hc, 3)
                X = [x for x in X if math.isnan(x) == False]

        y = [0] * len(vec_pd) + [1] * len(vec_hc)
        X_list = combine(X_list,X)

    return (X_list, y)


def getMaxAccuracyTotal(filename):
    data = getData(filename)
    X_list = data[0]
    features_X = [[]]*len(X_list)
    y = data[1]
    max_score = 0
    for i in range(len(X_list[0])):
        feature = get_column(X_list,i)
        features_X = combine(features_X,feature)
        tot_score = 0
        for i in range(epochs):
            t = combine(features_X,y)
            random.shuffle(t)
            (features_X,y) = separate(t)
            tot_score += getAccuracy(features_X,y)[0]
        score = tot_score/epochs
        if(score > max_score):
            max_score = score
    return max_score

def getMaxAccuracyMale(filename):
    data = getData(filename)
    index_pd = [8, 9, 10, 11, 13, 20, 21, 23, 24, 25, 27, 28, 29, 30, 31, 32, 33, 34, 35]
    index_hc = [1, 4, 5, 7, 8, 9, 10, 13, 14, 18, 21, 22, 24, 25, 29, 30, 31, 34, 35, 37]
    X_list = getList(data[0],index_hc) + getList(data[0],index_pd)
    features_X = [[]]*len(X_list)
    y = [0]*len(index_hc) + [1]*len(index_pd)
    #print(y)
    max_score = 0
    for i in range(len(X_list[0])):
        feature = get_column(X_list,i)
        features_X = combine(features_X,feature)
        tot_score = 0
        for i in range(epochs):
            t = combine(features_X,y)
            random.shuffle(t)
            (features_X,y) = separate(t)
            tot_score += getAccuracy(features_X,y)[0]
        score = tot_score/epochs
        score = getAccuracy(features_X,y)[0]
        if(score > max_score):
            max_score = score
    return max_score  

def getMaxAccuracyFemale(filename):
    data = getData(filename)
    index_pd = [0, 1, 2, 3, 4, 5, 6, 7, 12, 14, 15, 16, 17, 18, 19, 22, 26, 36]
    index_hc = [0, 2, 3, 6, 11, 12, 15, 16, 17, 19, 20, 23, 26, 27, 28, 32, 33, 36]
    X_list = getList(data[0],index_hc) + getList(data[0],index_pd)
    features_X = [[]]*len(X_list)
    y = [0]*len(index_hc) + [1]*len(index_pd)
    #print(y)
    max_score = 0
    for i in range(len(X_list[0])):
        feature = get_column(X_list,i)
        features_X = combine(features_X,feature)
        tot_score = 0
        for i in range(epochs):
            t = combine(features_X,y)
            random.shuffle(t)
            (features_X,y) = separate(t)
            tot_score += getAccuracy(features_X,y)[0]
        score = tot_score/epochs
        if(score > max_score):
            max_score = score
    return max_score 


print(getMaxAccuracyFemale("test.txt"))








