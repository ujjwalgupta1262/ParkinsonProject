import matplotlib.pyplot as plt
import numpy as np

label = [ "Male", "Female", "Combined", "Old", "Young"]
accuracy = [
74.00000000000001,
83.75,
75.76000000000669,
79.55555555556,
70.62857142858
]
precision = [
72.33,
78.31,
76.73,
66.53,
77.04
]
recall = [
80.53,
81.64,
81.37,
65.83,
89.72
]

std_acc = [0.019311050377094116, 0.016355427233796113, 0.011787752589589987, 0.015838693049835685, 0.02784212049168843
]

std_prec = [0.02834798096322487, 0.009315551574300621, 0.026011146464955986, 0.03717968381912705, 0.02228968218644223
]

std_rec = [0.035155889786374406, 0.0564225361449529, 0.015138383623637178, 0.021307637585925236, 0.03117141547707663
]

index = np.arange(5)
fig, ax = plt.subplots() 
y = accuracy
ax.bar(index, y)
plt.xlabel("Classes", fontsize = 10)
plt.ylabel("Accuracy", fontsize = 10)
plt.xticks(index, label, fontsize=10)
plt.title("Accuracy bar graph across classes")
for i in range(5):
	ax.text(i - 0.5, y[i] + 1, "std = " + str(int(std_acc[i]*1000)/1000.0), color = "red")
plt.show()