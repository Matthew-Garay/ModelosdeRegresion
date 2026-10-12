<div align="center">

# Modelos de Regresión: Random Forest vs. Árbol de Decisión

**Práctica de Inteligencia Artificial en R** — comparación de dos algoritmos para la predicción de sueldos.

[![R](https://img.shields.io/badge/R-4.x-276DC3?style=flat-square)](https://www.r-project.org/)
[![RandomForest](https://img.shields.io/badge/RandomForest-4.6-6f42c1?style=flat-square)]()
[![rpart](https://img.shields.io/badge/rpart-%C3%81rbol%20de%20Decisi%C3%B3n-2ea44f?style=flat-square)]()

</div>

---

## Descripción

Compara dos técnicas para predecir el **sueldo**: un **Random Forest** y un **árbol de regresión (rpart)**, cada una en su propio script con su dataset. `P15.R` modela el sueldo según los años de experiencia; `RandomForest.r` lo hace según el nivel del empleado.

Es una práctica académica de Inteligencia Artificial para contrastar el comportamiento y la interpretabilidad de ambos algoritmos de ensamble y partición recursiva.

## Características

- **Random Forest** con 500 árboles (`ntree = 500`) sobre dos datasets distintos.
- **Árbol de regresión** con `rpart` y visualización con `rpart.plot`.
- **Predicciones de ejemplo** (e.g., sueldo con 6.5 años de experiencia).
- **Visualización** de curvas ajustadas con ggplot2 sobre una malla fina.

## Tecnologías utilizadas

- **Lenguaje:** R
- **Paquetes:** randomForest, rpart, rpart.plot, ggplot2
- **Datasets:** `Salary_Data.csv` (años de experiencia) y `Position_salaries.csv` (nivel)

## Requisitos previos

- [R](https://www.r-project.org/) o [RStudio](https://posit.co/download/rstudio-desktop/).
- Paquetes `randomForest`, `rpart`, `rpart.plot` y `ggplot2`.

## Instalación

```bash
git clone https://github.com/Matthew-Garay/ModelosdeRegresion.git
cd ModelosdeRegresion
```

Instala los paquetes si no los tienes:

```r
install.packages(c("randomForest", "rpart", "rpart.plot", "ggplot2"))
```

## Uso

```r
source("P15.R")          # Random Forest y árbol sobre Salary_Data.csv
source("RandomForest.r") # Random Forest sobre Position_salaries.csv
```

## Estructura del proyecto

```
ModelosdeRegresion/
├── P15.R                          # Random Forest + árbol (Salary_Data.csv)
├── RandomForest.r                 # Random Forest (Position_salaries.csv)
├── Salary_Data.csv                # Dataset de años de experiencia
├── Position_salaries.csv          # Dataset de nivel del empleado
├── Practica 15. Random Forest y RPART.pdf   # Memoria de la práctica
└── README.md
```

## Licencia

Proyecto académico y educativo; puedes usarlo libremente con fines de aprendizaje.

## Autor

**Matthew Garay** — [GitHub](https://github.com/Matthew-Garay)

