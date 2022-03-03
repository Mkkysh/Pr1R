step <- 1 # Шаг сетки
dekart_begin <- -5 # Начало сетки
dekart_end <- 5 # Конец сетки
# Задание сеточной поверхности
x <- seq(from = dekart_begin, to = dekart_end, by = step)
y <- x
# Задание двумерной функции на координатной сетке
surface_matrix <- outer(X = x,
                        Y = y,
                        FUN = function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)
#View(surface_matrix)

write(paste("number of matrix elements:",
            nrow(surface_matrix)*ncol(surface_matrix)),"summary.txt")
write(paste("number of rows:",
            nrow(surface_matrix)),"summary.txt", append = T)
write(paste("number of cols:",
            ncol(surface_matrix)),"summary.txt", append = T)
write(paste("sum of main diag elements:",
            sum(diag(surface_matrix))),"summary.txt", append = T)
write(paste("sum of middle row elements:",
            sum(surface_matrix[,ncol(surface_matrix)/2+1])),"summary.txt", 
      append = T)
write(paste("sum of middle column elements:",
            sum(surface_matrix[nrow(surface_matrix)/2+1,])),"summary.txt", 
      append = T)
write(paste("row sums:",toString(as.vector(rowSums(surface_matrix)))),"summary.txt",
      append = T)
write(paste("col sums:",toString(as.vector(colSums(surface_matrix)))),"summary.txt",
      append = T)
#---------------------------------------------

dekart_begin <- as.numeric(readline(prompt = "Enter begin: "))
dekart_end <- as.numeric(readline(prompt = "Enter end: "))
step <- as.numeric(readline(prompt = "Enter step: "))
# Задание сеточной поверхности
x <- seq(from = dekart_begin, to = dekart_end, by = step)
y <- x
# Задание двумерной функции на координатной сетке
surface_matrix <- outer(X = x,
                        Y = y,
                        FUN = function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)
#View(surface_matrix)

write(paste("number of matrix elements:",
            nrow(surface_matrix)*ncol(surface_matrix)),"summary2.txt")
write(paste("number of rows:",
            nrow(surface_matrix)),"summary2.txt", append = T)
write(paste("number of cols:",
            ncol(surface_matrix)),"summary2.txt", append = T)
write(paste("sum of main diag elements:",
            sum(diag(surface_matrix))),"summary2.txt", append = T)
write(paste("row sums:",toString(as.vector(rowSums(surface_matrix)))),"summary2.txt",
      append = T)
write(paste("col sums:",toString(as.vector(colSums(surface_matrix)))),"summary2.txt",
      append = T)

#---------------------------------------------
data1 <- as.numeric(readLines("input.txt"))
dekart_begin_x <- data1[1]
dekart_end_x <- data1[2]
step_x <- data1[3]
dekart_begin_y <- data1[4]
dekart_end_y <- data1[5]
step_y <- data1[6]
# Задание сеточной поверхности
x <- seq(from = dekart_begin_x, to = dekart_end_x, by = step_x)
y <- seq(from = dekart_begin_y, to = dekart_end_y, by = step_y)
# Задание двумерной функции на координатной сетке
surface_matrix <- outer(X = x,
                        Y = y,
                        FUN = function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)
#View(surface_matrix)

write(paste("number of matrix elements:",
            nrow(surface_matrix)*ncol(surface_matrix)),"summary3.txt")
write(paste("number of rows:",
            nrow(surface_matrix)),"summary3.txt", append = T)
write(paste("number of cols:",
            ncol(surface_matrix)),"summary3.txt", append = T)
write(paste("sum of main diag elements:",
            sum(diag(surface_matrix))),"summary3.txt", append = T)
write(paste("row sums:",toString(as.vector(rowSums(surface_matrix)))),"summary3.txt",
      append = T)
write(paste("col sums:",toString(as.vector(colSums(surface_matrix)))),"summary3.txt",
      append = T)

