import matplotlib.pyplot as plt

def plot(filename):
	f = open(filename)
	l = f.readlines()
	ylabel = "Accuracy"
	if(filename[5] == "p"):
		ylabel = "Precison"
	elif(filename[5] == "r"):
		ylabel = "Recall"
	l[0] = l[0][1:-2]
	l[1] = l[1][1:-2]
	# print l[2]
	random = map(float, l[0].split(","))
	desc = map(float, l[1].split(","))
	plt.xlabel("Number of features")
	plt.ylabel(ylabel)
	plt.plot(random, label = "Random order approach", linestyle = "-")
	plt.plot(desc, label = "Desc order approach", linestyle = "--")
	plt.legend()
	plt.title("Comparing Descending vs Random order approach on " + ylabel)
	plt.show()
	plt.clf()

plot("plot_acc_list.txt")
plot("plot_prec_list.txt")
plot("plot_rec_list.txt")