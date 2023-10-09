# List

vec1 = c(1,2,3)
vec2 = c(TRUE,FALSE)
listt = list(vec1,vec2)
print(listt)

print(listt[[2]])
print(listt[[2]][2])

# Defining a named list
lt = list(a = 1,
          let = letters[1:8],
          mt = matrix(1:6, nrow = 2))
print(lt)

# Modify
lt$a = -5
print(lt)

#Q1
data = list(regno = "22MIA1044",
            name = "Etash",
            courses = 5,
            mark = c(78,81,96,64,72))
print(data)

#
data$name

#
data$regno
data$mark
# OR
print(data[c(1,4)])

#
data$mark[1]

#
data$mark[5] = data$mark[5] + 5
data
