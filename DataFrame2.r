
survey = data.frame(Id = c(1,2,3),
                   Name = c("Ramu","Raju","Ravi"),
                   Marks = c(50,40,25))
View(survey)

# Operations on dataframe

str(survey)  # shows structure of dataframe
class(survey)
typeof(survey)
nrow(survey)
ncol(survey) # no. of attributes
dim(survey) # no. of rows and columns
summary(survey)
colnames(survey) # display column names
head(survey,3) # by default it would display first 6 records
tail(survey,2) # displays records from bottom

survey[2] # or
survey$Name

survey[c(1,2),] # if second comma isn't used, that means c(1,2) means 1st and 2nd column

# Add column "age"
survey$Age = c(19,20,18)
View(survey)
# Add new row
survey1 = rbind(survey,c(4,"xyz",50,20))
View(survey1)

# Read/Write csv files
write(df,)
Df = read.csv("People.csv")


#Q1

record = data.frame(Name = c("Ramu","Raju","Ravi","Varun","Jeevan"),
                    Event1 = c(5,2,3,7,9),
                    Event2 = c(4,6,2,2,0),
                    Event3 = c(8,4,8,5,6),
                    Event4 = c(0,3,5,0,2))
View(record)

# Extract the stud2 and stud3 scores
record[c(2,3),]

# Extract the scores in Event4.
record[5]

# Find total score in each events and append them in new column
record$Total = record$Event1 + record$Event2 + record$Event3 + record$Event4
View(record)

# Find the maximum score and display the name of the participant who scored it
print(record$Name[record$Total == max(record$Total)])

# Compute the average score of each events and append it as a new row in the data frame
avg1 = sum(record$Event1)/5
avg2 = sum(record$Event2)/5
avg3 = sum(record$Event3)/5
avg4 = sum(record$Event4)/5
avg5 = sum(record$Total)/5
record1 = rbind(record,c("Avg_score",avg1,avg2,avg3,avg4,avg5))
View(record1)

# Store the details in a comma separated values (csv) file. Also suppress the row numbers
write.csv(record1,"Eventsfile.csv",row.names=FALSE)
