# Modelos de regresion

Practica de IA en R. Compara dos formas de predecir el sueldo: un Random Forest y un arbol de regresion, cada uno en su script con su dataset.

`P15.R` usa `Salary_Data.csv` y ajusta `Salary ~ YearsExperience` con ambos metodos. `RandomForest.r` usa `Position_salaries.csv`, donde lo que predice es el nivel del empleado, no los anos de experiencia. Con tan pocos datos y una relacion casi lineal, el arbol solo ya resuelve y se explica de un vistazo.

## Requisitos

R o RStudio con randomForest, rpart, rpart.plot y ggplot2.

## Uso

```r
source("P15.R")
source("RandomForest.r")
```
