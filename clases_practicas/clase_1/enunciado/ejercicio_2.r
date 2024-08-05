install.packages("dslabs")
library(dslabs)
data("murders")

# a) Usando la función str() examine la estructura del objeto. ¿cuántos estados (observaciones) tiene? ¿c ́uantas variables? ¿de qu ́e tipo son?
mur <- murders
str(mur)

# 51 observaciones y 5 variables
# state que es un chr
# abb que es chr
# region que es un int (Factor)
# populaton q es num
# total q es num 

# b) Use el operador $ para extraer el n ́umero total de habitantes por estado y asignarlo a la variable pop. ¿Cu ́al es la clase de este objeto?

pop <- mur$population
class(pop)

#Es de tipo numerico

# c) La variable region es un variable factor. ¿Cu ́antos niveles tiene? En este conjunto de datos, las regiones se ordenan de este a oeste. Usando la funci ́on reorder(), ordenar los levels seg ́un el n ́umero total de asesinatos.

levels(mur$region)

# Tiene 4 niveles que son Northeast, South, North Central y West

mur$region <- reorder(mur$region, mur$total)

# d) Hallar la tasa de asesinatos (murder rate) por estado (nro de asesinatos/total de habitantes * 100000) y averig ̈ue cu ́al es el estado con menor tasa.

murder_rate <- (mur$total/mur$population * 100000)
murder_rate

rate_mas_bajo <- mur$state[which.min(murder_rate)]
rate_mas_bajo

#Es Vermont