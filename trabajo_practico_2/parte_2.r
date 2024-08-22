set.seed(6803)

# 2.a Generar la función Y_dist(R)
Y_dist <- function(R) {
  realizaciones <- replicate(R, mean(runif(15, min = 0, max = 18)))
  return(realizaciones)
}

# 2.b Calcular la media y la varianza muestral para diferentes valores de R
R_values <- c(2, 30, 100, 10^4)
resultados_Y <- data.frame(R = integer(), Media = numeric(), Varianza = numeric())

for (R in R_values) {
  muestras_Y <- Y_dist(R)
  media_muestral_Y <- mean(muestras_Y)
  varianza_muestral_Y <- var(muestras_Y)
  resultados_Y <- rbind(resultados_Y, data.frame(R = R, Media = media_muestral_Y, Varianza = varianza_muestral_Y))
}

print(resultados_Y)

# 2.c Cálculo teórico de E(Y) y V(Y)
a <- 0
b <- 18
E_Y <- (a + b) / 2  # Igual a E(X)
V_Y <- ((b - a)^2 / 12) / 15  # V(X)/15

print(paste("Esperanza E(Y):", E_Y))
print(paste("Varianza V(Y):", V_Y))

# 2.d Generar histogramas para R = 100 y R = 10^4
par(mfrow = c(1, 2))  # Configurar la ventana gráfica para dos gráficos lado a lado

# Histograma para R = 100
hist(Y_dist(100), breaks = 30, main = "Histograma de Y (R = 100)", xlab = "Y", col = "magenta")

# Histograma para R = 10^4
hist(Y_dist(10^4), breaks = 30, main = "Histograma de Y (R = 10^4)", xlab = "Y", col = "blue")
