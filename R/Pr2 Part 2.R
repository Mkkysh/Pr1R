A <- cbind(c(4,0),c(0,9))
rownames(A) <- paste0("eq",1:2)
colnames(A) <- paste0("x",1:2)
print(eigen(A,only.values = T)[1])
B <- diag(1,2) - A
print(B)
f <- c(4,2)
u <- c(0.2,-0.3)
u_result <- solve(A, f)
print(u_result)
u1 <- B %*% u + f
print(u1)
for (i in 2:7) {
  assign(paste0("u",i), B %*% get(paste0("u",i-1)) + f)
  print(get(paste0("u",i)))
}