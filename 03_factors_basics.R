# Factors
# Factor = a statistical data type used to store categorical variables.

#Assign "factors" to the variable theory:
theory <- "factors"

# Create factor: factor().

# First you have to make a vector containing all the observations that belong to a limited number of categories. for example:
sex_vector <- c("Male", "Female", "Female", "Male", "Male")
# Then you convert the vector to a factor:
sex_factor <- factor(sex_vector)
# Then you can print out the new factor.
sex_factor

# Two types of categorical variables: nominal categorical (without an implied order), ordinal categorical variable (has an implied order).
# Example of nominal categorical could be different animals.
# Example of ordinal categorical could be low, medium, high temperatures.

# All of the different observations within a factor are called factor levels. 
# Say you are looking at F and M, you might want to change it to male and female to make the data easier to analyse. So: changing the name of the categorical variables within the factor.For example:
first_vector <- c("M", "F", "F", "M", "M")
first_factor <- factor(first_vector)

# Then specify the new names of first_factor: levels()

levels(first_factor) <- c("Female", "Male")
first_factor

# The command: summary() gives you a quick overview of the contents of a variable.
# How to compare Male vs Female quantities in the dataset:
summary(first_vector)
summary(first_factor)

#########################################################
# ABOVE = NOMINAL CATEGORICAL EXAMPLE (SEXES).
# BELOW = ORDINAL CATEGORICAL EXAMPLE (SPEED).
#########################################################

# Now create ordinal categorical vector, for speed.
speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# You can't just make a factor out of these because it's ordinal and when you use factor(), it just makes an unordered factor. But there is a natural order here of slow, medium, fast.
# You need two additional arguments: ordered and levels.
# ordered - you want to set this to TRUE to show there's an order.
# levels - give the values of the factor c(1, 2, 3) in the correct order.
# So:

# Convert speed_vector to an ordered factor vector:
speed_factor <- factor(speed_vector,
                       ordered = TRUE,
                       levels = c("slow", "medium", "fast"))
# Then you can print the new ordered factor and summarise it.
speed_factor
summary(speed_factor)

# And you can check if one element is higher/lower than the other, in an ordered factor.
#Compare speeds of 2nd and 5th cars:
car2 <- speed_factor[2]
car5 <- speed_factor[5]
# Is care 2 faster than car 5?
car2 > car5













