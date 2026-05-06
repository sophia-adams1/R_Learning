# Data Frames basics.

# All the elements you put in a matrix should be of the same type.
# But, when doing a market research survey, you might have questions such as:
# Are you married (yes/no)? Logical.
# How old are you (number)? Numerical.
# What is your opinion on this product (open-ended)? Character.
# Here you'd have a dataset containing different types of data.

# Printing a data frame where you see differenr ows and columns:
mtcars

# First task with a big dataset is to understand the structure and main elements.
# So it's useful to show only a small part of a dataset: head()
# It's also useful to show ther last few observations: tail()
# Both head() anf tail() print a top line called the 'header' which contains names of the different variables in the dataset.
head(mtcars)

# Also to get a rapid overview of the dataset: str() to show sturcture of dataset.
# str() shows you: total number of observations, total number of variables, full list of variable names, data type of each variable, first observations.
str(mtcars)

# Now for creating your own dataframe.
# Planet-themed dataframe - example.
# Main features of a planet are: type of planet (terrestrial or gas giant), diameter relative to Earth's diameter, rotation across the sun relative to that of Earth, if the planet has rings or not (TRUE/FALSE).
# We create these vectors: name, type, diameter, rotation, rings.
# The first element in each of these vectors correspond to the first observation.
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial Planet", "Terrestrial Planet", "Terrestrial Planet", "Terrestrial Planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Then create a daatframe from the vectors: data.frame()
planets_dataframe <- data.frame(name, type, diameter, rotation, rings)
planets_dataframe
str(planets_dataframe)

# You select elements of a dataframe using [x,y] a.k.a [row, column].
# For example: planets_dataframe[1,2] selects the value in the first row and second column.
# planets_dataframe[1:3, 2:4] selects rows 1-3 and columsn 2-4 (multiple).
# Select all of the elements in a first row: [1, ]
# Select all of the elemnts in the 3rd column: [ ,3]

# Select the diameter of Mercury:
planets_dataframe[1,3]
# Select all the data on Mars:
planets_dataframe[4, ]


# You don't need to know what number the column is. You can just use the name.
# Select the first 5 values from the diameter column using the column name:
planets_dataframe[1:5, "diameter"]
# Or you can use the $ shortcut:
planets_dataframe$diameter

# Look at the rings variable and store it as a vector.
rings_vector <- planets_dataframe$rings
rings_vector
# But we can't see the names of ringed planets.
# Use the subset() function as a shortcut to see the names of ringed planets (the ones with TRUE).
# It's subset(dataframe, subset = some condition)
subset(planets_dataframe, subset = rings)
# Another example: select planets with diameter < 1.
subset(planets_dataframe, subset = diameter < 1)


# You can also make rankings out of things in the dataset. order() gives you the ranked position of each element when it's applied to a variable.
a <- c(100, 10, 1000)
order(a)
# Then you can rearrange stuff to match the ranking.
a[order(a)]

# So with the planets example we can now sort the planets from smallest to largest diameter.
positions <- order(planets_dataframe$diameter)
planets_dataframe[positions, ]



