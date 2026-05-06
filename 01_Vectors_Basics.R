# VECTORS
# A vector is a sequence of the SMAE TYPE of data elements.

# Create a vector using the combine, c() function.
numeric_vector1 <- c(1, 2, 3)
numeric_vector2 <- c(4, 5, 6)
character_vector <- c("a", "b", "c")

#Give each element inside a vector a name using names()
names(numeric_vector1) <- c("Mon", "Tue", "Wed")

#Make a variable containing the names so you can assign the names to multiple vectors at once.
days_variable <- c("Mon", "Tue", "Wed")

#Assign the names contained in days_variable to multiple vectors: names()
names(numeric_vector1) <- days_variable
names(numeric_vector2) <- days_variable

#ARITHMETIC WITH VECTORS.
#Sum things up across the SAME NAME (e.g. Mon), but DIFFERENT VECTORS.
total_vectors <- numeric_vector1 + numeric_vector2
total_vectors

# Add up all the elements in the SAME vector.
total_num1 <- sum(numeric_vector1)
total_num2 <- sum(numeric_vector2)
total_num1
total_num2

# Check if the sum of vector 1 is higher/lower than vector 2.
total_num1 < total_num2
total_num1 > total_num2

# Create a new variable based on 1 element inside a vector. [element order or name]
third_element_order <- numeric_vector2[3]
third_element_name <- numeric_vector2["Wed"]
# Create a new variable based on more than 1 element inside a vector. [c(element, element)]
two_elements_order <- numeric_vector2[c(1, 2)]
two_elements_name <- numeric_vector2[c("Mon", "Tue")]
# OR simplify to a ratio 2:8 which is 2, 3, 4, 5, 6, 7, 8. No [c()] here.
three_elements <- numeric_vector2[1:3]

# Calculate the mean of elements in a vector. mean(vector)
mean(numeric_vector2)

# Create a new variable only with values less than/greater than. vector > 4
bigger_than_4 <- numeric_vector2 > 4

# See the actual values of an element selection inside a vector. vector[selection]
bigger_than_4_values <- numeric_vector2[bigger_than_4]

