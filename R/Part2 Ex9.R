data<-readLines("coords.txt", n=16)
data<-as.numeric(data)
for(i in 1:(length(data))){
  x1[i]<-data[i+1]-data[i]
  if(i==length(data))
  {
    x1[i]<-NA
  }
}
for(i in 1:(length(x1))){
  x2[i]<-x1[i+1]-x1[i]
  if(i==length(x1))
  {
    x2[i]<-NA
  }
}
x<-cbind(data,x1,x2)
x
write.table(x,file = "diff_vectors.txt")

