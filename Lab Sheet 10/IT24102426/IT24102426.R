#1.
# H0: Customers choose all four snack types (A, B, C, D) equally.
# That is, pA = pB = pC = pD = 0.25
# H1: Customers do not choose all four snack types equally.

#2.
observed <- c(120, 95, 85, 100) #observed frequencies

chisq_test <- chisq.test(observed, p = rep(1/4, 4))
chisq_test

#3.
#Significance level: 0.05
#p-value = 0.08966 > 0.05
#Fail to reject H₀.


