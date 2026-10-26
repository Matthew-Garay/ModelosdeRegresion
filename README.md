# Modelos de Regresion Random Forest vs Arbol de Decision

## A. Titulo del Proyecto y Resumen Ejecutivo

Modelos de Regresion: Random Forest vs Arbol de Decision es una practica de Inteligencia Artificial en R que compara dos tecnicas para predecir el sueldo: un Random Forest y un arbol de regresion (rpart), cada uno con su propio dataset. El problema que resuelve es contrastar el comportamiento y la interpretabilidad de ambos algoritmos de ensamble y particion recursiva para la estimacion de sueldos. Su alcance tecnologico se limita al analisis predictivo local en R, sin componente de servidor ni persistencia de datos.

## B. Arquitectura del Sistema

El programa sigue una arquitectura de scripts independientes en R. Existen dos puntos de entrada separados: P15.R modela el sueldo segun los anos de experiencia utilizando el dataset Salary_Data.csv, aplicando Random Forest y arbol de decision; RandomForest.r modela el sueldo segun el nivel del empleado utilizando el dataset Position_salaries.csv, aplicando Random Forest. Cada script carga su dataset, entrena el modelo correspondiente, genera predicciones de ejemplo y visualiza los resultados con ggplot2 y rpart.plot. No existe comunicacion entre los scripts ni arquitectura cliente-servidor; todo el procesamiento ocurre de forma aislada en cada ejecucion.

## C. Caracteristicas Tecnicas Clave

- Random Forest con 500 arboles (ntree = 500) sobre dos datasets distintos.
- Arbol de regresion con rpart y visualizacion con rpart.plot.
- Predicciones de ejemplo, por ejemplo sueldo con 6.5 anos de experiencia.
- Visualizacion de curvas ajustadas con ggplot2 sobre una malla fina.
- Dos datasets: Salary_Data.csv (anos de experiencia) y Position_salaries.csv (nivel del empleado).
- No utiliza base de datos, ni concurrencia, ni procesamiento en tiempo real, ni protocolos de red.
- Seguridad limitada al ambito de ejecucion local; no maneja datos sensibles ni autenticacion.

## D. Especificacion del Stack Tecnologico

| Categoria | Tecnologia / Librería |
|-----------|----------------------|
| Lenguaje | R |
| Paquetes | randomForest, rpart, rpart.plot, ggplot2 |
| Datasets | Salary_Data.csv, Position_salaries.csv |
| Analisis | Random Forest, arbol de decision, regresion |

## E. Guia de Instalacion, Configuracion y Despliegue

### Requisitos previos del sistema

- R o RStudio instalado en el sistema operativo.
- Paquetes randomForest, rpart, rpart.plot y ggplot2 instalados en R.

### Secuencia de comandos para clonacion e instalacion

```bash
git clone https://github.com/Matthew-Garay/ModelosdeRegresion.git
cd ModelosdeRegresion
```

### Configuracion de variables de entorno

Este proyecto no requiere archivo .env ni variables de entorno.

### Comandos para ejecucion en entorno de Desarrollo

```r
install.packages(c("randomForest", "rpart", "rpart.plot", "ggplot2"))
```

```r
source("P15.R")
source("RandomForest.r")
```

### Comandos para ejecucion en entorno de Produccion

No aplica entorno de produccion separado; los scripts se ejecutan localmente con el mismo comando de desarrollo.

## F. Creditos de Autoría

Desarrollado por: Matthew Ilveneff Garay Pérez
Correo Electronico: 1911.garay.perez@gmail.com

