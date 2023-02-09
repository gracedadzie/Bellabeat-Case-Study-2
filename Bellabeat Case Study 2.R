library(janitor)
gitcreds::gitcreds_get()
library(gitcreds)
gitcreds_get() #create a github repository to track project changes

#title: "Bellabeat R Script"
#output: R Script

##Introduction and background
#The Bellabeat app provides users with health data related to their activity, sleep, stress, menstrual cycle and mindfulness habits
#This data helps users gain a better understanding of their health and make better choices to develop healthier habits
#The Bellabeat app connects to their line of smart wellness products such as the Leaf (wellness bracelet, necklace, or clip), Time (wellness watch), Spring (water bottle)
# Bellabeat also offers a subscription based membership program which gives users 24/7 access to personalized guidance on nutrition, activity, sleep, health and beauty, and mindfulness based on their personal goals.

#Business Task:
#1. Analyze a non-Bellabeat smart device: In this case we will use FitBit Fitness Tracker Data sourced from Kaggle user [Mobius](https://www.kaggle.com/datasets/arashnic/fitbit)

install.packages('tidyverse')
library(tidyverse) #instaling and loading common packages and libraries

#2. Select a Bellabeat product: Time (watch)
#3. Analyze the smart device usage data to gain insights on how people are already using their smart devices
#4. Produce high-level recommendations on how these trends can inform Bellabeat's marketing strategy moving forward

#1.What are some trends in smart device usage?
#2.How could these trends apply to Bellabeat customers?
#3.How could these trends help influence Bellabeat marketing strategy?


#Report contains the following deliverables:


# 2.A description of all data sources used
# 3.Documentation of any cleaning or manipulation of data can be viewed in GitHub
# 4.Summary of analysis
# 5.Supporting visualizations and key findings
# 6.Top high-level content recommendations based on your analysis
