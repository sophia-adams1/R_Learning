# Lists - basics.
# A list in R is similar to your work/school list. Items on the list might differ in length, characteristic, type of activity etc.
# A list in R allows you to gather a variety of different objects under 1 name in an ordered way.
# Objects in the list could be matrices, vectors, data frames, even other lists.
# Objects don't have to be related to each other at all; you can store practically any data type in it.

# First we could make the stuff that goes in the list:
my_vector <- 1:10
my_matrix <- matrix(1:9, ncol =3)
my_dataframe <- mtcars[1:10, ]
# Then use the list() function to make a list: mylist <- list(comp1, comp2...)
my_list <- list(my_vector, my_matrix, my_dataframe)

# Creating a named list:
# Just like on a to-do list, you want to avoid not knowing what the components on the list actually stand for. So you should give them names.
# For example: my_list <- list(name1 = your_comp1, name 2 = your_comp2).
# This creates a list with components names name1, name2 etc.
# If you want to name your lists after you've made them, use the names() function.

# Add names to the components in the list:
names(my_list) <- c("vector", "matrix", "dataframe")
my_list

# Now we can make a named list for the movie The Shining.
# This movie contains 3 elements:
# 1: moviename: a character string with the movie title stored in mov
# 2: actors: a vector with the main actors' names stored in act
# 3: reviews: a dataframe that contains some reviews stored in rev
mov <- "The Shining"
act <- c("Jack Nicholson", "Shelley Duvall", "Danny Lloyd", "Scatman Crothers", "Barry Nelson")
shining_list <- list(moviename = mov, actors = act, reviews = rev)

# Not always straightforward to get a single element, multiple elements, component out of a list.
# 2 ways of selecting a component: [[]] or $.
shining_list[["reviews"]]
shining_list$reviews

# Say you wanted to select the first element out of all of the actors (actors in the 2nd position):
shining_list[[2]][1]

# Making a new list:
# We want to collect together all the pieces of information about the movie (title, actors, reviews etc) into a single variable.
# We combine them into a list variable which houses different kinds of data.
# Make the bits in the list first:
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot")
avg_review <- mean(scores)
reviews_dataframe <- data.frame(scores, comments)
departed_list <- list(reviews_dataframe, avg_review)
departed_list














