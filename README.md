# Modelos de regresión

Práctica de Inteligencia Artificial en R. Compara dos formas de predecir el
sueldo: un **Random Forest** y un **árbol de regresión**, sobre dos datasets
distintos.

## Los dos scripts

Son dos ejercicios separados, cada uno con su dataset.

### `P15.R` — Salary_Data.csv

Ajusta el mismo objetivo, `Salary ~ YearsExperience`, con los dos métodos:

```r
regression = randomForest(Salary ~ YearsExperience, data = dataset, ntree = 500)
regression1 = rpart(formula = Salary ~ ., data = dataset2,
                    control = rpart.control(minsplit = 10))
```

`rpart` se limita con `minsplit = 10` para que el árbol no se quede con un solo
nodo por hoja, que es el comportamiento por defecto cuando el dataset es
pequeño.

El gráfico se hace sobre una malla `x_grid` de 0.01 en 0.01, no sobre los datos
originales, para que la curva ajustada quede continua.

### `RandomForest.r` — Position_salaries.csv

Mismo modelo, otro dataset: aquí la variable independiente es el **nivel** del
empleado, no los años de experiencia. El script corta las columnas que no le
sirven:

```r
dataset = read.csv('Position_salaries.csv')
dataset = dataset[, 2:3]   # se queda con Level y Salary
```

Trae comentado el código de `caTools` para particionar en entrenamiento y test,
a propósito: con 30 observaciones, partir el dataset deja muy pocas filas con
las que entrenar.

## Comparar los dos

| | Random Forest | Árbol (`rpart`) |
|---|---|---|
| Modelo | conjunto de 500 árboles | un solo árbol |
| Interpretación | `importance()` | `rpart.plot()` |
| Con estos datos | ajusta con más exactitud | más fácil de explicar |

La conclusión del ejercicio es que, con tan pocas observaciones y una relación
casi lineal entre nivel y sueldo, el árbol de decisión ya resuelve el problema y
se entiende de un vistazo. El Random Forest no aporta nada aquí.

## Cómo ejecutarlo

```r
source("P15.R")
source("RandomForest.r")
```

## Paquetes

| Paquete | Para qué |
|---------|----------|
| `randomForest` | el bosque aleatorio |
| `rpart` | el árbol de regresión |
| `rpart.plot` | dibujar el árbol |
| `ggplot2` | los gráficos de la curva ajustada |

```r
install.packages(c("randomForest", "rpart", "rpart.plot", "ggplot2"))
```

## Correcciones aplicadas

- **`RandomForest.r` pedía `Position_Salaries.csv` con S mayúscula**, pero el
  archivo del repo se llama `Position_salaries.csv`. En Windows funcionaba
  porque el sistema no distingue mayúsculas; en Linux o macOS el `read.csv`
  fallaba. Ahora el nombre coincide.
- Se añadió un `.gitignore` para `Rhistory`, `.RData` y `.Rproj.user/`.
