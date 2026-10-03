#RandomForest
#install.packages("randomForest")
# Importar el dataset
# El archivo del repositorio se llama Position_salaries.csv (s minuscula).
# Windows no distingue mayusculas en el nombre, asi que aqui funcionaba de
# casualidad; en Linux o macOS read.csv no lo encontraba.
dataset = read.csv('Position_salaries.csv')
dataset = dataset[, 2:3]
# Dividir los datos en conjunto de entrenamiento y conjunto de test
# install.packages("caTools")
# library(caTools)
# set.seed(123)
# split = sample.split(dataset$Purchased, SplitRatio = 0.8)
# training_set = subset(dataset, split == TRUE)
# testing_set = subset(dataset, split == FALSE)
# Ajustar Modelo de Random Forest con el Conjunto de Datos
# install.packages("randomForest")
library(randomForest)
## randomForest 4.6-14
## Type rfNews() to see new features/changes/bug fixes.
## 
## Attaching package: 'randomForest'
## The following object is masked from 'package:ggplot2':
## 
##     margin
set.seed(1234)
regression = randomForest(x = dataset[1],
                          y = dataset$Salary,
                          ntree = 500)
# Predicción de nuevos resultados con Regresión 
y_pred = predict(regression, newdata = data.frame(Level = 6.5))
# Visualización del modelo de Random Forest
#install.packages("ggplot2")
library(ggplot2)
x_grid = seq(min(dataset$Level), max(dataset$Level), 0.01)
ggplot() +
  geom_point(aes(x = dataset$Level , y = dataset$Salary),
             color = "red") +
  geom_line(aes(x = x_grid, y = predict(regression, 
                                        newdata = data.frame(Level = x_grid))),
            color = "blue") +
  ggtitle("Predicción (Random Forest)") +
  xlab("Nivel del empleado") +
  ylab("Sueldo (en $)")

y_pred
plot(regression)
summary(regression)
summary(y_pred)