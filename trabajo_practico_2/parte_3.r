set.seed(6803)

# 3.a Histogramas para X y X_40 con R = 10^6
R <- 10^6
n <- 40

# Generar R realizaciones de X ~ U(0, 18)
X <- runif(R, min = 0, max = 18)

# Generar R realizaciones de X_40 (media de 40 realizaciones de X)
X_40 <- replicate(R, mean(runif(n, min = 0, max = 18)))

# Crear histogramas
par(mfrow = c(1, 2))  # Dos gráficos lado a lado

# Histograma para X
hist(X, breaks = 50, probability = TRUE, main = "Histograma de X", xlab = "X", col = "lightblue")

# Superponer la densidad teórica de X (uniforme)
curve(dunif(x, min = 0, max = 18), col = "red", lwd = 2, add = TRUE)

# Histograma para X_40
hist(X_40, breaks = 50, probability = TRUE, main = "Histograma de X_40", xlab = "X_40", col = "lightgreen")

# Superponer la densidad teórica normal (esperada por el TCL)
mu <- 9  # Esperanza de X
sigma <- sqrt((18 - 0)^2 / 12) / sqrt(n)  

curve(dnorm(x, mean = mu, sd = sigma), col = "red", lwd = 2, add = TRUE)

# 3.b Generar los histogramas
n_values <- c(1, 2, 5, 15)
R_values <- c(10^2, 10^6)

par(mfrow = c(4, 2))  # 4 filas, 2 columnas

for (n in n_values) {
  for (R in R_values) {
    X_n <- replicate(R, mean(runif(n, min = 0, max = 18)))
    hist(X_n, breaks = 50, probability = TRUE,
         main = paste("n =", n, ", R =", R),
         xlab = "X_n", col = "lightgray")
    
    # Superponer la densidad teórica normal si n > 1
    if (n > 1) {
      mu <- 9  # Esperanza de X
      sigma <- sqrt((18 - 0)^2 / 12) / sqrt(n)  # Desviación estándar de X_n
      curve(dnorm(x, mean = mu, sd = sigma), col = "red", lwd = 2, add = TRUE)
    }
  }
}
