# MATRICES
# Matrix = collection of elements of the same data type (numeric, character or logical) arranged into a fixed number of rows and columns.
# Two-dimensional matrix is 1) rows and 2) columns.

# Construct a matrix: matrix(x:y, byrow = TRUE/FALSE, nrow = x)
# row-wise: byrow = TRUE
# column-wise: byrow = FALSE
# number of rows: nrow = 3
matrix(1:9, byrow = TRUE, nrow = 3)

# Example: Star Wars box office numbers in first 3 movies. 1st element is the US revenue and 2nd element is non-US revenue (in millions).
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 427.900)
return_jedi <- c(309.306, 165.8)
# Combine all figures into a single vector: new_vector <- c(vector1, vector2)
box_office <- c(new_hope, empire_strikes, return_jedi)
# Construct the Star Wars box office matrix.
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)
# Add the names to remember what's in each row. rownames() colnames()
region <- c("US", "nonUS")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
# Name the columns with region:
colnames(star_wars_matrix) <- region
rownames(star_wars_matrix) <- titles
# Print out star wars matrix
star_wars_matrix

# Calculate the sum of each row (US + nonUS columns). rowSums(matrix). Then put these sums into a new vector.
worldwide_vector <- rowSums(star_wars_matrix)
# Add a column to the matrix. cbind(matrix, vectors). Combine it in 1 matrix.
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
# Add a row to the matrix. rbind(matrix, vectors). Combine it in 1 matrix.

# Select elements from a matrix. matrix[row, column]
