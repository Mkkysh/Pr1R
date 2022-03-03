A <- cbind(c(4,0),c(0,9))
f <- c(4,2)

matrix_oper <- function(A,f){
  rownames(A) <- paste0("eq",1:2)
  colnames(A) <- paste0("x",1:2)
  print(eigen(A,only.values = T)[1])
  B <- diag(1,2) - A
  u <- c(0.2,-0.3)
  u_result <- solve(A, f)
  print(paste("Метод решения функциями: ",toString(u_result)))
  u1 <- B %*% u + f
  for (i in 2:7) {
    assign(paste0("u",i), B %*% get(paste0("u",i-1)) + f)
  }
  print(paste("Метод решения функциями: ",toString(get(paste0("u",7)))))
}
A1 <- A / max(A)
f1 <- f / max(f)

matrix_oper(A,f)
matrix_oper(A1,f1)
