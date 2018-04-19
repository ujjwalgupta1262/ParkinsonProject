total_male = []
total_female = []
total_overall = []

f = open("male_accuracy_t1.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_male.append(l[i])
f.close()

f = open("male_accuracyT2.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_male.append(l[i])
f.close()

f = open("male_accuracyT3.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_male.append(l[i])
f.close()

f = open("male_accuracyT4.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_male.append(l[i])
f.close()

f = open("male_accuracyT5.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
f.close()

f = open("male_accuracy_t6.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_male.append(l[i])
f.close()

f = open("male_accuracy_t7.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_male.append(l[i])
f.close()

f = open("male_accuracy_t8.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_male.append(l[i])
f.close()

f = open("female_accuracy_t1.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_female.append(l[i])
f.close()

f = open("female_accuracyT2.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_female.append(l[i])
f.close()

f = open("female_accuracyT3.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_female.append(l[i])
f.close()

f = open("female_accuracyT4.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_female.append(l[i])
f.close()

f = open("female_accuracyT5.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
f.close()

f = open("female_accuracy_t6.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_female.append(l[i])
f.close()

f = open("female_accuracy_t7.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_female.append(l[i])
f.close()

f = open("female_accuracy_t8.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_female.append(l[i])
f.close()

f = open("overall_accuracy_t1.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_overall.append(l[i])
f.close()

f = open("overall_accuracyT2.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_overall.append(l[i])
f.close()

f = open("overall_accuracyT3.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_overall.append(l[i])
f.close()

f = open("overall_accuracyT4.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_overall.append(l[i])
f.close()

f = open("overall_accuracyT5.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
f.close()

f = open("overall_accuracy_t6.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_overall.append(l[i])
f.close()

f = open("overall_accuracy_t7.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_overall.append(l[i])
f.close()

f = open("overall_accuracy_t8.txt","r")
l = f.readlines()
for i in range(len(l)):
	l[i] = l[i].strip()
	l[i] = l[i][1:-1]
	l[i] = l[i].split(",")
	l[i][1] = float(l[i][1])
	total_overall.append(l[i])
f.close()

total_male.sort(key=lambda x: x[1], reverse=True)
total_female.sort(key=lambda x: x[1], reverse=True)
total_overall.sort(key=lambda x: x[1], reverse=True)

file = open ("male_total_accuracy.txt","w")
for i in total_male:
    file.write(str(i))
    file.write("\n")
file.close()

file = open ("female_total_accuracy.txt","w")
for i in total_female:
    file.write(str(i))
    file.write("\n")
file.close()

file = open ("overall_total_accuracy.txt","w")
for i in total_overall:
    file.write(str(i))
    file.write("\n")
file.close()
