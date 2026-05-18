# New types of plots and adding a title to the graph.
# Line plot, bar plot, Histogram and Box plot.
# What's the point? To be able to view summary statistics (e.g. mean, median) over time and space.
library(dplyr)
library(gapminder)
library(ggplot2)

###################################################################################

# LINE PLOTS: Change geom_point() to: geom_line() to make it a line plot.
# Summarize the median gdpPercap by year, then save it as by_year
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianGdpPercap = median(gdpPercap))
# Create a line plot showing the change in medianGdpPercap over time
ggplot(by_year, aes(x = year, y = medianGdpPercap)) +
  geom_line() +
  expand_limits(y = 0)

# Summarize the median gdpPercap by year & continent, save as by_year_continent
by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))
# Create a line plot showing the change in medianGdpPercap by continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) +
  geom_line() +
  expand_limits(y = 0)

###################################################################################

# BAR PLOTS: Use geom_col(). The X axis is often the categorical variable such as continent. Y is often numerical and determines the height.
# Summarize the median gdpPercap by continent in 1952
by_continent <- gapminder %>%
  group_by(continent) %>%
  filter(year == 1952) %>%
  summarize(medianGdpPercap = median(gdpPercap))
# Create a bar plot showing medianGdp by continent
ggplot(by_continent, aes(x = continent, y = medianGdpPercap)) +
  geom_col()

# Filter for observations in the Oceania continent in 1952
oceania_1952 <- gapminder %>%
  filter(continent == "Oceania", year == 1952)
# Create a bar plot of gdpPercap by country
ggplot(oceania_1952, aes(x = country, y = gdpPercap)) +
  geom_col()

###################################################################################

# HISTOGRAMS: Use geom_histogram() and it only has an x axis aesthetic. The width of each column is automatic, but you can customise it using binwidth. You might also need to put the x axis on a log scale like you did in a scatter plot: scale_x_log10(). A histogram is useful for examining the distribution of a numeric variable, such as the life expactancy of each country.
# Create the dataset to create a histogram.
gapminder_1952 <- gapminder %>%
  filter(year == 1952) %>%
  mutate(pop_by_mil = pop / 1000000)
# Create a histogram of population (pop_by_mil) where the number of bins is 50.
ggplot(gapminder_1952, aes(x = pop_by_mil)) +
  geom_histogram(bins = 50)

# Now make a histogram less skewed.
gapminder_1952 <- gapminder %>%
  filter(year == 1952)
# Create a histogram of population (pop), with x on a log scale
ggplot(gapminder_1952, aes(x = pop)) +
  geom_histogram() +
  scale_x_log10()

###################################################################################

# BOX PLOTS: Think standard deviation. In the histograms, we looked at countries' life expactancies, but we can't tell what continent they're all in. What if we wanted to distinguish by continent? Use a box plot.
# Use geom_boxplot(). The x axis is often categorical.
# The black line in the middle of each plot is the median of the content's distribution.
# The top and bottom of each box represent the 75th percentile and 25th percentile, so half the distribution lies in that box.And the 'whiskers' (lines going up and down) cover additional countries.
# Any dots represent outliers.

# Get your dataset to make the box plot.
gapminder_1952 <- gapminder %>%
  filter(year == 1952)
# Create a boxplot comparing gdpPercap among continents
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap)) +
  geom_boxplot() +
  scale_y_log10()

###################################################################################

# ADDING A TITLE TO YOUR GRAPH (SCATTER, LINE, BAR, HISTOGRAM, BOX PLOT)
# it's just ggtitle("title name")

gapminder_1952 <- gapminder %>%
  filter(year == 1952)
# Create a boxplot comparing gdpPercap among continents
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap)) +
  geom_boxplot() +
  scale_y_log10() +
  ggtitle("Comparing GDP per capita across continents")








