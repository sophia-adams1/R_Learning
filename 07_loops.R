# Loops.
# While loop - similar to if statement.
# Executes it over and over. For example: variable is less than 7 so it's set to TRUE and you add 1. Then it's still under 7 after adding 1 so it sets to TRUE repeatedly and adds 1.
# After it becomes false? Sets to FALSE.
# If you set a while loop that doesn't have an end point, you'll need to stop the whole R console.
# Make sure the while loop ends at some point.

# Break statement: when R finds it, it abandons the current while loop.

# Code a while loop with the following characteristics: The condition of the while loop should check if speed is higher than 30. Inside the body of the while loop, print out "Slow down!". Inside the body of the while loop, decrease the speed by 7 units and assign this new value to speed again. 

# Initialize the speed variable
speed <- 64
# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed <- speed -7
}
# Print out the speed variable
speed

# In the previous exercise, you simulated the interaction between a driver and a driver's assistant: When the speed was too high, "Slow down!" got printed out to the console, resulting in a decrease of your speed by 7 units. There are several ways in which you could make your driver's assistant more advanced. For example, the assistant could give you different messages based on your speed or provide you with a current speed at a given moment. A while loop similar to the one you've coded in the previous exercise is already available for you to use. It prints out your current speed, but there's no code that decreases the speed variable yet, which is pretty dangerous. Can you make the appropriate changes?

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is", speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

# There are some very rare situations in which severe speeding is necessary: what if a hurricane is approaching and you have to get away as quickly as possible? You don't want the driver's assistant sending you speeding notifications in that scenario, right? This seems like a great opportunity to include the break statement in the while loop you've been working on. Remember that the break statement is a control statement. When R encounters it, the while loop is abandoned completely.
# Adapt the while loop such that it is abandoned when the speed of the vehicle is greater than 80. This time, the speed variable has been initialized to 88; keep it that way.

# Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  # Break the while loop when speed exceeds 80
  if (speed > 80) {
    break
  }
  
# Finish the while loop so that it: prints out the triple of i, so 3 * i, at each run. is abandoned with a break if the triple of i is divisible by 8.
  
# Initialize i as 1 
  i <- 1
  
# Code the while loop
  while (i <= 10) {
    print(3 * i)
    if ((3 * i) %% 8 == 0) {
      break
    }
    i <- i + 1
  }
  
  ###########################################################################
  
  # The for loop.
  # Get a separate printout for all the elements inside a vector or a list. Same format.
  # break stops the execution of the for loop when you encounter an element with a certain condition e.g. 6 characters.
  # next skips the element that meets a certain condition.
  
  # 2 versions of the for loop:
  
  # The linkedin vector has already been defined for you
  linkedin <- c(16, 9, 13, 5, 2, 17, 14)
  # Loop version 1
  for (l in linkedin) {
    print(l)
  }
  # Loop version 2
  for (i in 1:length(linkedin)) {
    print(linkedin[i])
  }
  
  # Notice that you need double square brackets - [[ ]] - to select the list elements in loop version 2 (vector uses [] single square brackets).
  
  # The nyc list is already specified
  nyc <- list(pop = 8405837, 
              boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
              capital = FALSE)
  
  # Loop version 1
  for (n in nyc) {
    print(n)
  }
  # Loop version 2
  for (n in 1:length(nyc)) {
    print(nyc[[n]])
  }