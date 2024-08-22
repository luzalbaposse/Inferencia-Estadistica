set.seed(6803)

# 1.a Generar la función X_dist(R)
X_dist <- function(R) {
  runif(R, min = 0, max = 18)
}

# 1.b Calcular la media y la varianza muestral para diferentes valores de R
R_values <- c(2, 30, 100, 104)
resultados <- data.frame(R = integer(), Media = numeric(), Varianza = numeric())

for (R in R_values) {
  muestras <- X_dist(R)
  media_muestral <- mean(muestras)
  varianza_muestral <- var(muestras)
  resultados <- rbind(resultados, data.frame(R = R, Media = media_muestral, Varianza = varianza_muestral))
}

print(resultados)

# 1.c Calcular el valor teórico de la esperanza y la varianza
a <- 0
b <- 18
E_X <- (a + b) / 2
V_X <- (b - a)^2 / 12

print(paste("Esperanza E(X):", E_X))
print(paste("Varianza V(X):", V_X))

# 1.d Generar histogramas para R = 100 y R = 104
par(mfrow = c(1, 1))  

# Histograma para R = 100
hist(X_dist(100), breaks = 30, main = "Histograma para R = 100", xlab = "Valores de X", col = "blue")

# Histograma para R = 104
hist(X_dist(104), breaks = 30, main = "Histograma para R = 104", xlab = "Valores de X", col = "green")
