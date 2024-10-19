Project Title: Restaurant Data Analysis  

Description:
This project analyzes a dataset containing information about
restaurants. It provides insights into the distribution of restaurants
across different cities, top-rated restaurants, and the popularity of
specific restaurant chains.  
**Data:**

- The dataset used for this analysis is named \"swiggy.csv\". You need to adjust the file path to match your own
  location.  
  **Libraries:**

<!-- -->

- **dplyr:** For data manipulation and transformation.

- **ggplot2:** For creating visualizations.  
  **Usage:**

1.  **Install required libraries:** Code
    snippet `install.packages(c("dplyr", "ggplot2"))`

2.      

3.  **Load libraries:** Code snippet `library(dplyr)`

4.  library(ggplot2)

5.      

6.  **Read the data:** Code
    snippet `restaurant_data <- read.csv("swiggy.csv")`

7.      

8.  **Run the analysis code:** Execute the rest of the code in the
    provided R script.  
    **Output:**

- The code generates several visualizations, including:

  - Bar plot of the top 10 cities with the highest number of
    restaurants.

  - Bar plot of the top 10 restaurants in Indore by rating.

  - Bar plot of the number of branches of specific restaurant chains.

  - Pie chart of the distribution of restaurants by health category.  
    **Additional Notes:**

<!-- -->

- Make sure the \"swiggy.csv\" file is in the correct directory before
  running the code.

- You may need to modify the file path if your data is located
  elsewhere.

  **Contributing:**  
  Contributions are welcome! Please feel free to fork this repository,
  make changes, and submit a pull request.
