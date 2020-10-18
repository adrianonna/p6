from sklearn import tree
from sklearn.model_selection import train_test_split
from sklearn import metrics
import pandas as pd

# url = "https://raw.githubusercontent.com/adrianonna/p6/master/Topicos/Mini-projeto/ajustado.data"
url = "ajustado.data"

#Letter
col_names = ['label', 'x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7', 'x8', 'x9', 'x10', 'x11', 'x12', 'x13', 'x14', 'x15', 'x16']
feature_cols = ['x1', 'x2', 'x3', 'x4', 'x5', 'x6', 'x7', 'x8', 'x9', 'x10', 'x11', 'x12', 'x13', 'x14', 'x15', 'x16']

#PARKINSONS
# col_names = ['label']
# feature_cols = []

# for i in range(22):
#   col_names.append("x{}".format(i+1))
#   feature_cols.append("x{}".format(i+1))


# Carregar base de dados
# DataFrame
dataset = pd.read_csv(url, header=None, names=col_names)

X = dataset[feature_cols] # Atributos (Features)
y = dataset.label # Saída

# X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=None, stratify=y) # 80% treino e 20% teste

#Letter
X_train = pd.concat([X[0:6000],X[7000:12000],X[13000:18000]])
y_train = pd.concat([y[0:6000],y[7000:12000],y[13000:18000]])

X_test = pd.concat([X[6000:7000],X[12000:13000],X[18000:20000]])
y_test = pd.concat([y[6000:7000],y[12000:13000],y[18000:20000]])

print(y_test)

# Treinamendo da Árvore de Decisão
model = tree.DecisionTreeClassifier(criterion="entropy")
model = model.fit(X_train, y_train)

# Predição e Resultados

result = model.predict(X_test)
acc = metrics.accuracy_score(result, y_test)
show = round(acc * 100)
print("{}%".format(show))

print(list(result))
print(list(y_test))







