
# Goal: create 2 matrices to which we can apply Cholesky decomp.
rm(list=ls())

# Create matrix for 2x2 case:
data1      <- c(4, 2, 0, 5)
two_by_two <- matrix(data1, byrow=F, nrow=2)
print(two_by_two)
# Matrix multiply to create final matrix:
question1 <- two_by_two %*% t(two_by_two)
print(question1)

# Derive Cholesky:
result1 <- chol(question1, pivot=FALSE)
print(result1)
# Great!

# Create matrix for 3x3 case:
data2      <- c(8, 2, 1, 0, 7, 2, 0, 0, 9)
three_by_three <- matrix(data2, byrow=F, nrow=3)
print(three_by_three)
# Matrix multiply to create final matrix:
question2 <- three_by_three %*% t(three_by_three)
print(question2)

# Derive Cholesky:
result2 <- chol(question2, pivot=FALSE)
print(result2)
# Great!

