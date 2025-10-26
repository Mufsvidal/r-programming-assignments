install.packages("AER")
library(AER)
library(lattice)
library(ggplot2)

data("Fatalities", package = "AER")
head(Fatalities)
names(Fatalities)

# Scatter plot
plot(Fatalities$spirits, Fatalities$fatal,
     main   = "spirits vs. fatal",
     xlab   = "spirits",
     ylab   = "fatal")

# Histogram
hist(Fatalities$beertax,
     main   = "Distribution of beertax",
     xlab   = "beertax")

# Conditional scatter plot (small multiples)
xyplot(fatal ~ breath | factor(year),
       data = Fatalities,
       main = "Lattice: fatal vs. breath by year")

# Box-and-whisker plot
bwplot(fatal ~ factor(state),
       data = Fatalities,
       main = "Lattice: fatal by state")

# Scatter plot with smoothing
ggplot(Fatalities, aes(x = fatal, y = miles, color = factor(jail))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: fatal vs. miles with trend by group")

# Faceted histogram
ggplot(Fatalities, aes(youngdrivers)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ service) +
  labs(title = "ggplot2: young drivers distribution by category")