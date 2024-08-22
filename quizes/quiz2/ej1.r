data(airquality)
?airquality

#tipos

str(airquality)

missing_data <- colSums(is.na(airquality))
missing_data

# Histograma de la variable Wind
hist(airquality$Wind, main = "Histograma de Wind", xlab = "Wind", col = "blue")

# Histograma de la variable Temp
hist(airquality$Temp, main = "Histograma de Temp", xlab = "Temp", col = "green")


# Filtrar los datos que tienen Temp entre 65 y 70 (sin incluir los extremos)
temp_filtered <- airquality$Temp > 65 & airquality$Temp < 70

# Calcular la proporción
proportion <- sum(temp_filtered, na.rm = TRUE) / sum(!is.na(airquality$Temp))
proportion


total_temp_filtered <- sum(temp_filtered, na.rm = TRUE)
total_temp_filtered

boxplot(airquality$Wind, main = "Boxplot de Wind", ylab="Wind",col="green")

boxplot(airquality$Temp, main = "Boxplot de Temp", ylab = "Temp", col = "green")

outliers_wind <- boxplot.stats(airquality$Wind)$out
outliers_wind_sorted <- sort(outliers_wind, decreasing = TRUE)

outliers_wind_sorted


summary_wind <- summary(airquality$Wind)
summary_wind

summary_temp <- summary(airquality$Temp)
summary_temp
# Graficar la variable Temp
plot(airquality$Temp, main = "Gráfico de Temp", xlab = "Índice", ylab = "Temp", col = "blue", pch = 19)

desvio <- sd(airquality$Wind, na.rm=FALSE)
desvio

iqr_wind <- IQR(airquality$Wind, na.rm = TRUE)
iqr_wind
