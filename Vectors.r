# variable name can start from . provided that next character is not a number
# Vector
# V = 10
# V = c(10,20,30,40)
# Index starts from 1

v = c("red","yellow","green")
print(v)
print(class(v))

data1 = c(10,20)
datatext = c("Mon","Tues")
datatext = c(datatext,"Thrus","Fri")
data2 = c(data1,datatext)
print(data2)

v = vector("numeric", length=10)  # numeric is data type
v

x = 1:10
x

y = seq(1,10,2)  # or seq(1,10, by=2)
y

z = seq(1,10,length.out=4)  # length.out give no. of sample between 1 & 10
z

v3 = c(x,y,z)
v3


# Access the vector elements
# Position Indexing
t = c("a","b","c","d")
u = t[c(1,4)]
u

# Logical Indexing
v = t[c(TRUE,FALSE,FALSE,TRUE)]
v

# Negative Indexing
w = t[c(-2,-3)]
w

# 0/1 Indexing


# Operations
v1 = c(3,8,4,5,0,11)
v2 = c(4,11,0,8,1,2)

add.result = v1+v2
sub.result = v1-v2
mul.result = v1*v2
div.result = v1/v2

# Sorting
v = c(3,8,4,5,0,11,-9,304)
a = sort(v)
a
revsort.b = sort(v, decreasing=TRUE)
revsort.b


# Repeating
v = c(3,8,4,5,0,11,-9,304)
m = rep(v, each=2)
print(m)
print(min(v))
print(max(v))
print(sum(v))
print(mean(v))
print(sd(v))
print(which.min(v))  # gives index where element was minimum
