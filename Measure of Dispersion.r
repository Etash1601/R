# range = maximum value - minimum value
# inter-quantile range = Q3 - Q1
# outlier = (Q1 - 1.5*IQR) or (Q3 + 1.5*IQR)

# outlier 
# maximum (97%)
# 3rd quantile Q3 (75%)
# median Q2 (50%)
# 1st quantile Q1 (25%)
# minimum


rm(list=ls())

library(MASS)
newg = na.omit(geyser)
View(newg)

newf = na.omit(faithful)
View(newf)

# find mean eruption duration in data set faithful
newf = na.omit(faithful) # copying faithful data set
duration = faithful$eruptions
mean(duration)
median(duration)
quantile(duration, c(.32, .58))
var(duration)


# Central Moment
install.packages("e1071")
library(e1071)
duration = faithful$eruptions
moment(duration, order=3, center=TRUE)
kurtosis(duration)
