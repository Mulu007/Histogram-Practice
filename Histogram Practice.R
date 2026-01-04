# Using the employees data,  plot the salary frequencies. Limit the salaries under consideration to only those above 45,000 per year.

# Choose an appropriate binwidth, and appearance.

# Title the x axis as "Salary", and the y axis as "Number of employees in the salary bracket".

# Title the plot as "Title distribution in the employee data".

# Install the ggthemes package and chose a theme from there. Look at the descriptions of each and choose one that has modifiable size and font family. Increase the size and set the font family to serif.

library(tidyverse)
install.packages("ggthemes")
library(ggthemes)


employee <- read.csv("employee-data.csv", header = TRUE)
employee <- as_tibble(employee)
employee
employee$gender <- as.factor(employee$gender)
employee$title <- as.factor(employee$title)

employee.filtered <- filter(employee, salary > 45000)

hist <- ggplot(data = employee.filtered, aes(x = salary))
hist + geom_histogram(binwidth = 5000, fill = "steelblue", color = "white", alpha = 0.6) +
    labs(y = "Number of employees in the salary bracket",
       x = "Salary",
       title = "Salary distribution in the employee data") +
  theme_few(base_size = 14, base_family = "serif")
 # theme_solarized_2(light = FALSE, base_size = 15, base_family = "serif")

