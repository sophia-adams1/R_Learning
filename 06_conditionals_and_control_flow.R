# Conditionals and control flow.

#####################################################

# Relational Operators.

# Relational operators help us see how one thing relates to another thing.
# Equality ==
TRUE == TRUE
TRUE == FALSE
# We can also compare strings and numbers.
# Inequality != (is not equal to)
# We can also compare numericals, logicals and other R objects.
# < and > less than or greater than
3 < 5
3 > 5
# And for alphabetical order: the following will be true.
"Hello" > "Goodbye"
# TRUE is 1 and FALSE is 0 in R.
TRUE < FALSE
# Greater/less than or equal to: <= and >=

################################################

# Relational Operators and Vectors.
# I have a linkedin vector of my daily profile views across a week. I want to see which days exceeded 10 views.
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
linkedin > 10
# You can also compare across vectors. Suppose you also had your Facebook profile views in another vector.
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# When are the number of facebook views less than or equal to the number of linkedin views?
facebook <= linkedin

###################################################

# Equality. These will all evaluate to TRUE:
3 == (2 + 1)
TRUE != FALSE
# Case sensitive: R is not equal to r in equality.

# Comparison of logicals
TRUE == FALSE

# Comparison of numerics
-6 * 14 != 17 - 101

# Comparison of character strings
"useR" == "user"

# Compare a logical with a numeric
TRUE == 1

###############################################################

# Greater than and less than.
# These will evaluate to FALSE:
(1 + 2) > 4
"dog" < "Cats"
TRUE <= FALSE

# Comparison of numerics
-6 * 5 + 2 >= -10 + 1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE

######################################################

# Compare vectors.

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# On which days did the number of Linkedin profile views exceed 15?
linkedin > 15

# When was your Linkedin profile viewed only 5 times or fewer?
linkedin <= 5

# When was your Linkedin profile visited more often than your Facebook profile?
linkedin > facebook

####################################################################

# Compare matrices.
# Original vectors are still available.
# Matrix of the Linkedin and Facebook data:
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14

###################################################################

# Logical Operators.

# AND operator &
# OR operator |
# NOT operator !

# AND operator:
# FALSE & TRUE = FALSE
# FALSE & FALSE = FALSE
# TRUE & FALSE = FALSE
# TRUE & TRUE = TRUE
# Check that x is greater than 5 but less than 15:
x <- 12
x > 5 & x < 15
# Here it's TRUE & TRUE = TRUE.

# OR operator:
# TRUE | TRUE = TRUE
# FALSE | TRUE = TRUE
# TRUE | FALSE = TRUE
# FALSE | FALSE = FALSE
# See if y is less than 5 or greater than 15:
y <- 4
y < 5 | y > 15
# Here it's TRUE | FALSE = TRUE

# NOT operator:
# !TRUE = FALSE
# !FALSE = TRUE
# See if 5 is a numeric:
!is.numeric(5)

#######################################################

# Logical operators applied to vectors.
c(TRUE, TRUE, FALSE) & c(TRUE, FALSE, FALSE)
# 1A, 2B, 3C - element-wise.
# TRUE & TRUE = TRUE
# TRUE & FALSE = FALSE
# FALSE & FALSE = FALSE

# Convert it to the other way round:
!c(TRUE, TRUE, FALSE)

# Only examine the first element of each vector: double && and ||.
c(TRUE, TRUE, FALSE) && c(TRUE, FALSE, FALSE)

#############################################################

# Watch out: 3 < x < 7 to check if x is between 3 and 7 will not work; you'll need 3 < x & x < 7 for that.

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last <5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
15 < last & last <=20

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >= 12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14

###############################################################

# Conditional statements: if and else.

# if the condition is true, run the command.
x <- -3
if (x < 0) {
  print("x is a negative number")
}
# If the condition isn't true, it just prints FALSE.

# else is used with an if statement, when the if condition isn't satisfied.
x <- 6
if(x < 0) {
  print("x is a negative number")
} else {
  print("x is either a positive number or zero")
}

# what about the 'else if' statement? It goes inbetwwen else and if.
x <- 0
if(x < 0) {
  print("x is a negative number")
} else if(x == 0) {
  print("x is zero")
} else {
  print("x is either a positive number or zero")
}

# Another example: divisible by 2.
if(x %% 2 == 0) {
  print("divisible by two")
} else if(x %% 3 == 0) {
  print("divisible by three")
} else {
  print("not divisible by two or three")
}

########################################################

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if (num_views > 15) {
  print("You are popular!")
}

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}

# You can also add a whole other if code chunk inside an else if.
if (number < 10) {
  if (number < 5) {
    result <- "extra small"
  } else {
    result <- "small"
  }
} else if (number < 100) {
  result <- "medium"
} else {
  result <- "large"
}
print(result)

# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li >= 15 & fb >= 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}

# Print the resulting sms to the console
sms
