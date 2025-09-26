setwd("C:\\Users\\Victus\\OneDrive\\Desktop\\IT24102426")

#Example
#Importing the data set
data<-read.table("Data - Lab 8.txt", header=TRUE)
fix(data)
attach(data)

#Q1
#"mean" & "var" will compute the mean and variance for data.
popmn<-mean(Nicotine)
print(popmn)
popvar<-var(Nicotine)
print(popvar)


#Q2
#create null vectors to store sample data sets.
samples<-c()
n<-c()
print(samples)
print(n)
#"for" loop will be used to create and assign samples of size 5 for "samples" variable created above
#"sample" command we can draw a random sample either with replacement or without replacement.
#By making "replace" argument as TRUE we can create samples with replacement.
for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}
print(s)
print(samples)
print(n)
#Assign column names for each sample created. names have stored earlier under "n" variable
colnames(samples)=n
s.means<-apply(samples,2,mean)
print(s.means)
s.vars<-apply(samples,2,var)
print(s.vars)


#Q3
#"samplemean" & "samplevars" will compute the mean and variance of sample means stored in "s.means" variable.
samplemean<-mean(s.means)
print(samplemean)
samplevars<-var(s.means)
print(samplevars)

#Q4
#compare the population mean and mean of the sample means
popmn
samplemean

#Q5
#compare the population variance and variance of sample means
popvar
truevar=popvar/5
samplevars
