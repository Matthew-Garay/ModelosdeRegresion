
# Importar el dataset
dataset = read.csv("Salary_Data.csv")

library(randomForest)
library(ggplot2)

set.seed(1234)

regression = randomForest(Salary ~ YearsExperience,
                          data = dataset,  # Especificar el dataset completo
                          ntree = 500)

y_pred_single = predict(regression, newdata = data.frame(YearsExperience = 6.5))

x_grid = seq(min(dataset$YearsExperience), max(dataset$YearsExperience), 0.01)
predictions_grid = predict(regression, newdata = data.frame(YearsExperience = x_grid))

plot_data = data.frame(YearsExperience = x_grid, Salary_Predicted = predictions_grid)

# VisualizaciÃ³n del modelo con ggplot2
ggplot() +
  geom_point(aes(x = YearsExperience , y = Salary),
             data = dataset,  # Especificar el data para geom_point
             color = "#2C3E50") +
  geom_line(aes(x = YearsExperience, y = Salary_Predicted),
            data = plot_data, # Especificar el data para geom_line
            color = "#7F8C8D") +
  ggtitle("PredicciÃ³n de Sueldo vs AÃ±os de Experiencia (Random Forest)") +
  xlab("AÃ±os de experiencia") +
  ylab("Sueldo (en $)") 
summary(regression)
plot(regression)

#Con Arboles es mas eficiente


# Segundo Ejercicio: Ãrbol de RegresiÃ³n

library(rpart)
library(ggplot2)
library(rpart.plot) # Para visualizar el Ã¡rbol

# Importar el dataset
dataset2 = read.csv("Salary_Data.csv")
regression1 = rpart(formula = Salary ~ .,
                    data = dataset2,
                    control = rpart.control(minsplit = 10))
y_pred = predict(regression1, newdata = data.frame(YearsExperience = 6.5))

ggplot() +
  geom_point(aes(x = YearsExperience , y = Salary),
             data = dataset2, # Especificar el data para geom_point
             color = "#2C3E50") +
  geom_line(aes(x = YearsExperience, y = Salary_Predicted),
            data = plot_data, # Especificar el data para geom_line
            color = "#7F8C8D") +
  ggtitle("PredicciÃ³n de Sueldo vs AÃ±os de Experiencia (Ãrbol de RegresiÃ³n)") +
  xlab("AÃ±os de Experiencia") +
  ylab("Sueldo (en $)")

rpart.plot(regression1)


