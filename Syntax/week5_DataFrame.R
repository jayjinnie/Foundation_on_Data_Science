# Data Frame generation
name = c("John", "Lucy", "James")
age = c(25, 20, 22)
gender = factor(c("M", "F", "M"))
blood.type = factor(c("A", "O", "AB"))

patients = data.frame(name, age, gender, blood.type)
patients

# Access to elements
patients$name

patients[1,]
patients[,2]
patients[3,1]

patients[patients$name=="John",]
patients[patients$name=="John", c("name", "age")]

# Functions useful for Data Frame
head(cars) # The basic func of the head func, to extract '6' data from the front
speed # Occur Error because the Speed variable does not exist independently
attach(cars) # Each attribute of 'cars' is available as a variable
speed # can directly available to Speed variable
detach(cars) # car's attrivute as a variable is available to cancel
speed

# with func
mean(cars$speed)
max(cars$speed)
with(cars, mean(speed))
with(cars, max(speed))

# subset func
subset(cars, speed>20)
subset(cars, speed>20, select = -c(dist)) # Extract only speed, except dist
subset(cars, speed>20, select = c(dist)) # Extract only dist

# na.omit func - Remove NA
head(airquality)
head(na.omit(airquality))

# merge func
patients1 = data.frame(name, age, gender)
patients1

patients2 = data.frame(name, blood.type)
patients2

patients3 = merge(patients1, patients2, by = "name")
patients3
