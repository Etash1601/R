# Dee-ply-er
install.packages("dplyr")
library("dplyr")


air_quality = airquality
dim(air_quality)
str(air_quality)

head(airquality)

glimpse(airquality)

# filter()  select rows where temp is more than 90 degree and month is 9
filter(air_quality, Month==9, Temp>90)

# get only those rows where ozone is not missing
head(filter(air_quality, !is.na(Ozone)), 5)


# arrange() 
arrange(air_quality, Day, desc(Month))

# mutate()
mutate(air_quality, temp_celcius=(Temp-32)*5/9)

# select() select column by name
head(select(air_quality, Ozone, Day, Month),3)

# summarise() 
summarise(air_quality, max_temp=max(Temp), min_temp=min(Temp), std=sd(Temp))

# pipe %>%

# compute mean temp of month from May to August
air_quality %>%
  group_by(Month) %>%
  filter(Month>4 & Month<=8) %>%
  summarise(mean=mean(Temp, na.rm=TRUE))



# Q1
data=mtcars
head(data)

# Q2
mtcars

# Q3
head(mtcars,5)

# Q4
sample_frac(data,0.1)

# Q5
mtcars$mpg

# Q6


# Q10
summarise(mtcars, max_hp=max(hp), min_hp=min(hp))

# Q11
mtcars %>% filter(hp>125) %>% arrange(mpg)

# Q12
mtcars %>% filter(hp>125) %>% group_by(am) %>% summarise(average=mean(wt))
