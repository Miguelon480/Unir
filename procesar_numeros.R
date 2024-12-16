leer_numeros <- function(fichero) {
  if (!file.exists(fichero)) {
    stop("El fichero no existe.")
  }
  numeros <- as.integer(readLines(fichero))
  return(numeros)
}

# Leer los números desde el archivo
numeros <- leer_numeros("numeros.txt")

media <- mean(numeros)
mediana <- median(numeros)
desviacion_estandar <- sd(numeros)

if (desviacion_estandar > 10) {
  message("Alta variabilidad en los datos.")
}

cuadrados <- sapply(numeros, function(x) x^2)

                    # Crear el archivo de resultados
archivo_resultados <- "resultados.txt"
fileConn <- file(archivo_resultados)

# Escribir los resultados en el archivo
writeLines(c(
  paste("Media:", media),
  paste("Mediana:", mediana),
  paste("Desviación Estándar:", desviacion_estandar),
  "Cuadrados de los números:"
), fileConn)

# Escribir los cuadrados de los números
writeLines(as.character(cuadrados), fileConn)

# Cerrar la conexión del archivo
close(fileConn)
