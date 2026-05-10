# Tidyverse: Data Wrangling.
# Gapminder dataset - looking at things like life expectancy vs. GDP.
# filter(), arrange(), mutate() and pipe %>% .

# Install the right packages.
install.packages("gapminder")
install.packages("dplyr")
library(gapminder)
library(dplyr)
gapminder
# Dataset has 1,704 observations/rows and 6 columns: country, continent, year, life expectancy, population, gdp per capita.




# Filter() function for when you want to look at a subset of the observations, based on a particular condition. Common first step in the analysis.
# You use a pipe: %>% : percent is greater than percent. It says: whatever is before it, you feed it into the next step.
# Use a logical equal == to compare 2 values. A single equals = means something else.
gapminder %>%
  filter(year == 2007)
# Here we can see there are now 142 rows, so there are 142 countries in the dataset.
# You can still use the whole gapminder object for further analysis.
# If you only wanted to  get observations from the United States:
gapminder %>%
  filter(country == "United States")
# You can also define multiple conditions inside the filter() function.
# This is useful for extracting a single observation you're looking for.
# You separate arguments (arguments are x == y) with a comma.
gapminder %>%
  filter(year == 2007, country == "United States")
gapminder %>%
  filter (year == 2002, country == "China")




# The arrange() function sorts a table based on a variable.
# In ascending or descending order, based on the variables.
# Good for finding the most extreme values in a dataset.
gapminder%>%
  arrange(gdpPercap)
# Here it starts with the lowest GDP per capita of Democratic Republic of Congo in 2002.
# To arrange in descending order:
gapminder%>%
  arrange(desc(gdpPercap))
# Here it starts with the highest GDP per capita of Kuwait in 1957.



# You can combines the 2 verbs filter() and arrange().
# For example, if you wanted to see the highest GDP per capita within one specific year.
# Add a pipe to tell it to then arrange.
gapminder%>%
  filter(year == 2007) %>%
  arrange(desc(gdpPercap))
# Note there is no ascending version, you'd just arrange as normal.
gapminder %>%
  filter(year == 1957) %>%
  arrange(desc(pop))


# The mutate() function. Change an original column, change the variables to help analyse.
gapminder %>%
  mutate(pop = pop / 1000000)
# Using mutate tO add a varibale. What if you wanted to have a column of GDP per capita x population?
gapminder %>%
  mutate(gdp = gdpPercap * pop)
# gdp is the new column here. You can't use spaces, hence lifeExp or gdpPercap.




# Suppose we want to know the countries with the highest gdp (gdpPercap x pop) in 2007?
gapminder %>%
  mutate(gdp = gdpPercap * pop) %>%
  filter(year == 2007) %>%
  arrange(desc(gdp))







