# Movie-Recommendation-System
This repository contains R code that performs association rule mining on the MovieLens dataset. The code uses the arules package to analyze user preferences and generate association rules based on the movies users have interacted with.

To run the code and replicate the analysis, follow these steps:
*Prerequisites:*  Make sure you have R and the arules package installed. You can install the package using the following command in your R console:
*Data:* Place the MovieLens dataset CSV file (data_movielens_hw1.csv) in the same directory as the R script.
*Running the Code:* Upon running the script, the script performs the following steps:
1. Reads the dataset and prepares it for association rule mining.
2. Generates frequent itemsets and association rules based on specified parameters.
3. Calculates various quality measures for the generated rules.
4. Computes standardized lift and sorts the rules based on it.

*Output:* The script generates a dataframe (rules_df) containing association rules along with their lift, support, confidence, standardized lift, and related metrics. The dataframe is also sorted to highlight rules with higher standardized lift.

*Result and Interpretation:*
The code's output offers valuable insights into movie relationships stemming from user interactions within the MovieLens dataset. The derived association rules furnish details about movie preferences and interconnections, serving potential uses in personalized recommendations and comprehending user behavior.
