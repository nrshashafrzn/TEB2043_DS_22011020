#activity 1 - retirement age analysis (factors)
age <- c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)

factor_age<-factor(age)
print(levels(factor_age))

age_table<-table(factor_age)
print(age_table)

age_ranges <- cut(age, breaks=c(50, 52, 54, 56, 58, 60), include.lowest=TRUE, right=FALSE)
range_table <- table(age_ranges)
print(range_table)

#activity 2 - matrix operations
V1 <- c(2,3,1,5,4,6,8,7,9)
Matrix1 <- matrix(V1, nrow = 3, byrow = TRUE)
colnames(Matrix1) <- c("C1", "C2", "C3")
rownames(Matrix1) <- c("R1", "R2", "R3")

Matrix2 <- t(Matrix1)
colnames(Matrix2) <- c("TC1", "TC2", "TC3")
rownames(Matrix2) <- c("TR1", "TR2", "TR3")

add_res <- Matrix1 + Matrix2
sub_res <- Matrix1 - Matrix2
mul_res <- Matrix1 * Matrix2
div_res <- Matrix1 / Matrix2

print(add_res)

#activity 3 - array construction and accessing
Array1 <- array(1:24, dim = c(2, 4, 3))
Array2 <- array(25:54, dim = c(3, 2, 5))

print("The second row of the second matrix of the array:")
print(Array1[2, , 2])

print("The element in the 3rd row and 2nd column of the 1st matrix:")
print(Array2[3, 2, 1])
