#9 вариант n = 16, p = 3.36
data<-read.table("coords.txt")
p<-3.36
write(sum(abs(data)^p)^(1/p),"result.txt")