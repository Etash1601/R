# Array

vec1 = c(5,9,3)
vec2 = c(10,11,12,13,14,15)
result = array(c(vec1,vec2), dim=c(3,3,2))
print(result)

# Indexing
result[2,3,1]
result[2,3,2]

R = c("R1","R2","R3")
C = c("C1","C2","C3")
M = c("M1","M2")
result = array(c(vec1,vec2), dim=c(3,3,2), dimnames = list(R,C,M))
result

# Apply function
# apply(x(array or matrix), margin(dimension), func(fucntion name))

# margin = 1 ----- changes in row
# margin = 2 ----- changes in column
# margin = c(1,2) ---- chenges in both

vec1 = c(5,9,3)
vec2 = c(10,11,12,13,14,15)
result = array(c(vec1,vec2), dim=c(3,3,2))
print(result)

new.result = apply(result,1,sum)
new.result
