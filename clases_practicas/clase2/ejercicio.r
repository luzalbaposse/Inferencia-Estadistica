estudiante_1 <- c(73,75,74,74)
estudiante_2 <- c(95,94,12,95)
estudiante_3 <- c(66,67,63,100)

media_estudiante_1 <- mean(estudiante_1)
mediana_estudiante_1 <- median(estudiante_1)

media_estudiante_2 <- mean(estudiante_2)
mediana_estudiante_2 <- median(estudiante_2)

media_estudiante_3 <- mean(estudiante_3)
mediana_estudiante_3 <- median(estudiante_3)

print(paste("Media de estudiante_1:", media_estudiante_1))
print(paste("Mediana de estudiante_1:", mediana_estudiante_1))

print(paste("Media de estudiante_2:", media_estudiante_2))
print(paste("Mediana de estudiante_2:", mediana_estudiante_2))

print(paste("Media de estudiante_3:", media_estudiante_3))
print(paste("Mediana de estudiante_3:", mediana_estudiante_3))
 

eficiencia_combustible <- c(31.0,27.8,38.3,27.0,23.4,30.0,30.1,21.5,25.4,34.5)

mean(eficiencia_combustible)
median(eficiencia_combustible)
diff(range(eficiencia_combustible))
sd(eficiencia_combustible)
