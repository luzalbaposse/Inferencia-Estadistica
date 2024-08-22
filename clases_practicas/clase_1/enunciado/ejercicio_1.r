source("http://www.openintro.org/stat/data/arbuthnot.R")

nac <- arbuthnot

# a) Cuantas variables y cuantas observaciones tiene?

dim(nac)

## Tiene 82 observaciones y 3 variables

# b) Cuales son los nombres de las variables?

names(nac)

# year, boys y girls

#c) ¿Cuantos bautismos registr ́o el dr Arbuthnot? ¿Cu ́antos de ellos fueron de ni ̃nos?.

cant_ninos <- sum(nac$boys)
cant_ninos

# 484382

cant_ninas <- sum(nac$girls)
cant_ninas

# 453841

cant_total <- cant_ninas + cant_ninos
cant_total

#938223

#d) Hallar la proporción de niños bautizados

prop_ninos <- cant_ninos/cant_total
prop_ninos

# 0.516276