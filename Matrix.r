# Matrix - matrix(data, rows, cols)
# you give data as a vector

A = matrix(c(2,3,-2,1,2,2),3,2)
A

is.matrix(A)
is.vector(A)

A = matrix(c(2,3,-2,1,2,2), 3, 2, byrow=TRUE)
A

y = matrix(1:20, nrow=4, ncol=5)
print(y)

# Giving names to the indexes
rownames = c("R1","R2","R3")
colnames = c("C1","C2","C3")
y = matrix(20:9, nrow=3, ncol=3, dimnames = list(rownames,colnames))
y

# Scalar Multiplication
c=3
c*A

# Matrix Multiplication
B = matrix(c(2,3,-2,1,2,2),2,3)
C = A%*%B
C

# Transpose
AT = t(A)
AT

# Unit Matrix
U = matrix(1,3,2)
U

# Zero Matrix
Z = matrix(0,3,2)
Z

# Identity Matrix
I = diag(c(1,1,1))
I

# Computing column and row sums and means
A = matrix(c(2,3,-2,1,2,2),3,2)

c = colSums(A)
c

r = rowSums(A)
r

a = sum(A)
a

cm = colMeans(A)
cm

rm = rowMeans(A)
rm

m = mean(A)
m

# Row and Column Bind
A = matrix(c(2,3,-2,1,2,2),3,2)
B = matrix(c(2,3,-2,1,2,2),3,2)

C = cbind(A,B)
C

C = rbind(A,B)
C

#Q1
a = matrix(161:172,nrow=4,ncol=3,byrow=TRUE)
a

#
a[3,2]

#
a[2,]

#
a[,3]

#
a[,c(1,3)]

#
t(a)

#
cbind(a,c(173,174,175,176))

#
colMeans(a)
rowMeans(a)

#
mean(a[2,2])
