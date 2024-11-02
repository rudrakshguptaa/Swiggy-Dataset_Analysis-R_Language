#libraries
library(dplyr)
library(ggplot2)

restaurant_data <- read.csv("swiggy.csv") #Import CSV File

# Top 15 cities with most restaurants
top_15_cities <- restaurant_data %>%
  group_by(city) %>%
  summarize(Count = n()) %>%
  arrange(desc(Count)) %>%
  head(15)

# top 15 cities
cat("Top 15 Cities with the Highest Number of Restaurants Listed:\n")
print(top_15_cities)

# Bar plot
ggplot(top_15_cities, aes(x = reorder(city, -Count), y = Count)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(
    title = "Top 15 Cities with the Highest Number of Restaurants Listed",x = "City", y = "Number of Restaurants" ) +
  theme_minimal() + theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Check the data type of the rating column
str(restaurant_data$rating)

# Convert the rating column to numeric (if necessary)
restaurant_data$rating <- as.numeric(restaurant_data$rating)

# Top 10 restaurants in Indore by rating
d <- restaurant_data[restaurant_data$city == 'Sarafa,Indore', ]
top_10 <- head(d[order(-d$rating), ], 10)

# Bar plot 
ggplot(data = top_10, aes(x = name, y = rating, fill = name)) +
  geom_bar(stat = "identity", width = 1, position = "dodge", color = "red") +
  coord_flip() +  
  labs(x = "Restaurant Name", y = "Ratings") +
  theme_minimal() +
  theme(legend.position = "none") +
  scale_fill_brewer(palette = "Set3") +
  ggtitle("Top 10 Restaurants with Maximum Ratings in Indore") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))  

# Count occurrences of specific restaurants
data <- restaurant_data %>%
  filter(name %in% c("Domino's Pizza", "KFC", "McDonald's", "Subway")) %>%
  group_by(name) %>%
  summarize(count = n()) %>%
  arrange(desc(count))

# Bar plot for specific restaurant counts
ggplot(data, aes(x = reorder(name, -count), y = count, fill = name)) + geom_bar(stat = "identity") +
  geom_text(aes(label = count), hjust = 0.4, vjust = -0.3, size = 3) +
  labs(
    title = "Number of Branches of KFC, McDonald's, Domino's, and Subway", x = "Restaurant", y = "Number of Branches"
  ) + theme_minimal() + theme(axis.text.x = element_text(angle = 90, hjust = 1))
