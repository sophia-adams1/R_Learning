# Tidyverse_Data_visualisation
# This chapter = a graph, rather than a table.
# How to make a scatterplot using an X and Y axis.
# It's useful to assign the specific data you want (e.g. all the countries specifically in 2007) to a new variable.
# Aesthetics in this R script = x, y, colour and size.

library(gapminder)
library(dplyr)
gapminder
gapminder_2007 <- gapminder %>%
  filter(year == 2007)
gapminder_2007



# Say you want to compare GDP per Capita and Life Expectancy.
library(ggplot2)
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) +
  geom_point()



# Say you now want to do the same but for 1952, and population instead of life expectancy on the x axis.
gapminder_1952 <- gapminder %>%
  filter(year == 1952)
gapminder_1952
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point()



# Now for a graph with population on the x axis and life expectancy on the y axis.
ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) +
  geom_point()



# What if a lot of the data is clustered at one end and sparse at the other end?
# Useful to use a log scale to even everything out without altering the data.
# How to add a log scale: in this case, we want the x axis to be a bit more spread out.
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  scale_x_log10()




# How to put BOTH the x and y axes on a log scale:
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10()



# How to add aesthetics COLOUR and SIZE.
# Colour: A good way to represent categorical variables, like continent, is through colour. It'll add a colour code itself, and use the American spelling in the code.
# Size: You can change the size of each plot to be a big or small circle. This could change according to if the population is big or small.
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp, color = continent,
                          size = pop)) +
  geom_point() +
  scale_x_log10()




# Scatter plot comparing pop and lifeExp, with color representing continent, and the x axis on a log scale.
ggplot(gapminder_1952, aes(x = pop, y = lifeExp, color = continent,
                           size = pop)) +
  geom_point() +
  scale_x_log10()




# Faceting: You can divide your plot into sub-plots, for example where you have a separate plot for each continent's GDP per Capita. Split the plot by ~ condition.
ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  scale_x_log10() +
  facet_wrap(~ continent)




# Now do faceting of the gapminder dataset but by year.
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent, 
                      size = pop)) +
  geom_point() +
  scale_x_log10() +
  facet_wrap(~ year)

