from sklearn.model_selection import train_test_split
from sklearn import metrics
import pandas as pd
from sklearn.neighbors import KNeighborsClassifier

# url = "https://raw.githubusercontent.com/adrianonna/p6/master/Topicos/Mini-projeto/Letter-recognition-adjusted.data"
# url = "Letter-recognition-adjusted.data"

#Letter
# col_names = ['label', 'x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7', 'x8', 'x9', 'x10', 'x11', 'x12', 'x13', 'x14', 'x15', 'x16']
# feature_cols = ['x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7', 'x8', 'x9', 'x10', 'x11', 'x12', 'x13', 'x14', 'x15', 'x16']


# url = "https://raw.githubusercontent.com/adrianonna/p6/master/Topicos/Mini-projeto/Segmentation-adjusted.data"
url = "Segmentation-adjusted.data"

#Segmentation
col_names = ['label', 'x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7', 'x8', 'x9', 'x10', 'x11', 'x12', 'x13', 'x14', 'x15', 'x16', 'x17', 'x18', 'x19']
feature_cols = ['x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7', 'x8', 'x9', 'x10', 'x11', 'x12', 'x13', 'x14', 'x15', 'x16', 'x17', 'x18', 'x19']

# Carregar base de dados
dataset = pd.read_csv(url, header=None, names=col_names)

X = dataset[feature_cols] # Atributos (Features)
y = dataset.label # Saída

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=None, stratify=y) # 80% treino e 20% teste

n = 5

model = KNeighborsClassifier(n_neighbors=n, metric='euclidean', algorithm='brute')
model = model.fit(X_train, y_train)

result = model.predict(X_test)
acc = metrics.accuracy_score(result, y_test)
show = round(acc * 100)
print("{}%".format(show))

print(list(result))
print(list(y_test))