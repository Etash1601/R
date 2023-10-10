# Dataframe ---- data.frame()
my_df = data.frame(Id = c(1,2,3),
                   Name = c("Ramu","Raju","Ravi"),
                   Marks = c(50,40,25))
print(my_df)

# Indexing
my_df[2,2]
my_df$Marks
my_df$Marks[2]
my_df$Marks[c(1,3)]

# Adding column
my_df$Age = c(20,21,20)
my_df

# Adding dataframes
df1 = data.frame(Id = c(1,2,3),
                 Name = c("Ramu","Raju","Ravi"),
                 Marks = c(50,40,25))
df2 = data.frame(Id = c(4,5,6),
                 Name = c("Varun","Jeevan","Kash"),
                 Marks = c(55,44,05))
df = rbind(df1,df2)
df

total = sum(df$Marks)
total

max_marks = max(df$Marks)
max_marks

# Name of student having maximum mark
df$Name[df$Marks == max_marks]

