# N-dimensional Array Generating

x = array(1:5, c(2,4))
x

x[1, ]
x[, 2]


# Generating 2-dimensional array
x = 1:12
x

matrix(x, nrow=3)
matrix(x, ncol=3)
matrix(x, nrow=3, byrow=T)


# Generating an array by binding vector
v1 = c(1,2,3,4)
v2 = c(5,6,7,8)
v3 = c(9,10,11,12)

cbind(v1, v2, v3)
rbind(v1, v2, v3)


# Various matrix operations using operators of [Figure 3-7]
x = array(1:4, dim=c(2,2))
y = array(5:8, dim=c(2,2))
x
y
x+y
x-y
x*y # Multiplication for each column
x %*% y # Mathematical matrix multiplication
t(x) # Transposed matrix of x
solve(x) # Inverse matrix of x, 역행렬
det(x) # A determinant of x, 행렬식


# apply function: Appying functions by row or columns in an array
x = array(1:12, c(3,4))
x
apply(x, 1, mean) # If middle value is 1, apply the func by row
apply(x, 2, mean) # If middle value is 2, apply the func by col


# dim function: Size of the array (number of dimensions)
dim(x)


# sample function: Sampling from a vector or array
sample(x) # Extract by randomly mixing array elements
sample(x, 10) # Extract 10 of the array elements
sample(10)
sample(x, 10, prob=c(1:12)/24) # Extraction probability of each element is available to set differently
# 배열 x의 모든 원소를 24로 나눔
# {1/24, 2/24, 3/24, ... 12/24} -> 1이 추출될 확률은 매우 낮아지게 되며, 12/24가 결과값 2로 추출될 확률이 가장 높아짐

A <- array(c(1,3,5,2), c(2,4,1,3))
A

A = array(1:5, c(2,4))
A
A[4]
A[2,2]
A[2,]
A[which(A==4)]
A[which(A==5)]

apply(A, 1, sum)
