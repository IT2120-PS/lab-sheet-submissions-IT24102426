setwd("C:\\Users\\Victus\\OneDrive\\Desktop\\IT24102426")

#Example
#Importing the data set
data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

# Extract the weight column
laptop_bag_weights <- data$Weight

#Q1
# Question 1: Population Mean and Standard Deviation
popmn <- mean(Weight.kg.) 
popmn
popsd <- sd(Weight.kg.)   
popsd

#Q2
#create null vectors to store sample data sets.
samples<-c()
n<-c()
# Generate 25 random samples of size 6 (with replacement)
for (i in 1:25) {
  s <- sample(laptop_bag_weights, 6, replace = TRUE)  # one sample
  samples <- cbind(samples, s) # add column
  n <- c(n, paste('s', i)) 
}

colnames(samples) <- n  # assign column names

# Calculate sample means and variances column-wise
s.means <- apply(samples, 2, mean)
s.means
s.vars  <- apply(samples, 2, var)
s.vars
s.sds   <- apply(samples, 2, sd)
s.sds

#Make a table of results
samples_df<- data.frame(
  Sample = colnames(samples),
  Sample_Mean = round(s.means,3),
  Sample_SD   = round(s.sds,3)
)

print("=== Sample means, variances,standard deviation(25 samples) ===")
print(samples_df)

#Q3
# Calculate mean of the sample means
samplemean <- mean(s.means)
samplemean
# Calculate variance of the sample means
samplevars <- var(s.means)
samplevars
# Standard deviation of sample means
samplesd <- sd(s.means)
samplesd

## True population mean 
#compare the population mean and mean of the sample means
#sample means ≈ population mean (The sample mean is an unbiased estimator of the population mean)
popmn
samplemean

# Theoretical SD of sample means
popsd
theoretical_sd=popsd/sqrt(6)
theoretical_sd

# Population standard deviation (true σ)
popsd <- sqrt(popvar)
popsd   

#Relationship
print("Relationship:")
print("1. The mean of the sample means is approximately equal to the population mean (Law of Large Numbers).")
print("2. The standard deviation of the sample means is smaller than the population SD and approximately equals population SD divided by sqrt(sample size) (Central Limit Theorem).")
print(paste("Theoretical SD of sample means =", round(popsd/sqrt(6),3)))

