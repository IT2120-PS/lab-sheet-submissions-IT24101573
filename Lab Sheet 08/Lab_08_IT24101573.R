getwd()
setwd("C:\\Users\\IT24101573\\Desktop\\Lab 8")
getwd()

data <-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popmn
popsd<-sd(Weight.kg.)
popsd

samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}

colnames(samples)=n
s.mean<-apply(samples,2,mean)
s.mean
s.sds<-apply(samples,2,var)
s.sds



samplemean<-mean(s.mean)
samplemean
samplesd<-sd(s.mean)
samplesd

true_se <- popsd / sqrt(6)
true_se
