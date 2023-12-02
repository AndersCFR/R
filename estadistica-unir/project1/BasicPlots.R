# install.packages("moments")
# install.packages("tidyverse")
library(dplyr)
library(tidyr)
library(ggplot2)
library(moments) #calculo de sesgo y otros estadísticos

# Ejemplo 1: Usando dataset iris

head(iris)

# Crear un gráfico de dispersión
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point() +
  labs(title = "Dispersión Longitud de sépalo Vs Ancho de sépalo",
       x = "Longitud de sépalo", y = "Ancho de sépalo")

# Crear gráfico de dispersión
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point() +
  ggtitle("Dispersión Longitud de sépalo Vs Ancho de sépalo") + 
  xlab("Longitud de sépalo")
  ylab("Ancho de sépalo")


# Crear un gráfico combinando un boxplot y puntos jitter 
# alpha => lo usamos para gestionar la transparencia de 
ggplot(data = iris, mapping = aes(x=Species, y = Sepal.Width)) +
  geom_boxplot(alpha = 0.8) + 
  geom_jitter(alpha = 0.3, color = "tomato") + 
    labs(title = "Species vs Ancho de sépalo con puntos jitter",
         x = "Especie", y = "Ancho de sépalo")

# Ejemplo 2: Usando dataset de vehículo y consumo (mpg)
head(mpg)

# Crear un gráfico de líneas con facet_wrap (creador de múltiples gráficos)
# y color por tipo de tracción 
ggplot(data = mpg, aes(x = cty, y = hwy, color = drv)) +
  geom_point() + 
  facet_wrap(~ cyl) + 
  labs(title = "Consumo de combustible en ciudad vs carretera por cantidad de cilindros",
       x = "Consumo en ciudad", y = "Consumo en carretera",
       subtitle = "Facetado por cantidad de cilindros") 
  
# Generador de histograma
ggplot(data = mpg, aes(x = cty)) + 
  geom_histogram(bins = 20, color = "white", fill = "green") + 
  ggtitle("Consumo en ciudad") + 
  xlab("Consumo en cuidad") + 
  ylab("Frecuencia")

  
  