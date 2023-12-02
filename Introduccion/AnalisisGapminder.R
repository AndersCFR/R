# Operador pipe %>%, permite concatenar multiples operaciones
# Se puede invocar con cmd + shift + m

# 1. Instalación de paquetes
#install.packages('tidyverse')
#install.packages('gapminder')

# 2. Carga y análisis de datos
library(tidyverse) #Carga de paquete
library(gapminder)

data(gapminder) #Carga de datos
head(gapminder)

# 3. Explorar valores únicos
distinct(gapminder, year)
distinct(gapminder, country)
# si necesito mnostrar n numero de columnas
print(distinct(gapminder, country), n=2)

# Como está la esperanza de vida para portugal en 2007
gapminder %>% 
  filter(country == 'Portugal',
         year == 2007)


# Pregunta esperanza en España en 2007
gapminder %>% 
  filter(country == 'Spain', year==2007)

# Ahora una gráfica
gapminder %>% 
  filter(continent == 'Americas',
         year == 2007) %>% 
  ggplot(aes(x=lifeExp, y=country)) + 
  geom_point()

# Calcular el país con la mínima esperanza de vida (EDV) en Europa
gapminder %>% 
  filter(continent == 'Europe', 
         year == 2007) %>% 
  ggplot(aes(x=lifeExp, y=country)) + 
  geom_point()

# Calcular esperanza de vida para tu país
gapminder %>% 
  filter(country == 'Ecuador') %>% 
  ggplot(aes(x=year, y=lifeExp)) + 
  geom_point()

# Tidyverse = dplyr, readr, ggplot2, purr, tidyr, tibble
# Dplyr: Permite realziar selección y manipulación de datos
# Verbos: mutate, select, filter, summarise, arrange(cambia orden), group_by
# Usa el operador %>% (pipe) para agrupar varias operaciones de dplyr

  

