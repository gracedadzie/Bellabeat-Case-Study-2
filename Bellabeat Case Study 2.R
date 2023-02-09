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
#Bellabeat also offers a subscription based membership program which gives users 24/7 access to personalized guidance on nutrition, activity, sleep, health and beauty, and mindfulness based on their personal goals.

#Business Task:
#1. Analyze a non-Bellabeat smart device: In this case we will use FitBit Fitness Tracker Data sourced from Kaggle user [Mobius](https://www.kaggle.com/datasets/arashnic/fitbit)

install.packages('tidyverse')
library(tidyverse) #installing and loading common packages and libraries
daily_activity <-  read.csv("C:/Users/graci/Downloads/Fitabase Data 4.12.16-5.12.16/dailyActivity_merged.csv")
head(daily_activity) #shows the first 6 rows of data in the data frame
colnames(daily_activity) #provides the column names within the data frame
str(daily_activity) #check for the structure of data to make sure it is appropriate for the column

sleep_day <- read.csv("C:/Users/graci/Downloads/Fitabase Data 4.12.16-5.12.16/sleepDay_merged.csv")
head(sleep_day)
colnames(sleep_day)
str(sleep_day)

#We will merge the data using the ID field

library(dplyr) #load dplyr package in order to use n_distinct
n_distinct(daily_activity$Id)
n_distinct(sleep_day$Id)

#There's a difference between number of unique values in daily activity (33) vs. sleep day data frames (24). Users may not wear watch to sleep.

nrow(daily_activity)
nrow(sleep_day)

#There's a difference in the number of rows within the daily activity data frame and the sleep day data frame.

#Summary statistics for each data frame:
daily_activity %>% 
  select(TotalSteps,
         TotalDistance,
         SedentaryMinutes) %>% 
  summary()

sleep_day %>% 
  select(TotalSleepRecords,
         TotalMinutesAsleep,
         TotalTimeInBed) %>% 
  summary()


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
