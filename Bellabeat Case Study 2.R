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

991/60
420/60
# This tells us that that the average fitbit user takes around 7638 steps, covering 5.5 mi and is sedentary for 991 minutes (16 hours) a day
# Also tells us that most users sleep once a day for approx 7 hours a day, average spend approx 7 hours in bed give or take the time (40 mins or so) it takes for them to sleep/wake up.
# Need to check for possible outliers

# Relationship between steps taken a day and number of sedentary minutes
library('tidyverse')
ggplot(data=daily_activity, aes(x=TotalSteps, y=SedentaryMinutes)) + geom_point() +
  labs(title="Activity and Sedentary Minutes",  subtitle = "FitBit 2016 Data", x= "Total Steps", y="Sedentary Minutes")+
  geom_point(aes(color = SedentaryMinutes)) +
  scale_color_viridis_c()
# The higher the sedentary minutes, the lower the total steps taken. Market this as a way for people to walk more and decrease the amount of sedentary minutes.
# Can market the watch as a way to minimize sedentary minutes
# Watch can help increase your level of activity by sending reminders
# Check whether this contributes to amount of calories burned?

# Relationship between minutes asleep and time in bed

ggplot(data = sleep_day, aes(x=TotalMinutesAsleep, y=TotalTimeInBed)) +
  geom_point(aes(color = TotalTimeInBed)) + 
  labs(title = "Relationship between Sleep and Time in Bed", x= "Total Minutes Asleep", y= "Total Time in Bed")

# Increase of time in bed leads to an increase in sleep time. 
# Can market the watch as an alarm to help improve activity by reminding users to get out of bed
# Can look into BMI

library(tidyverse)
weight_info <- read.csv("C:/Users/graci/Downloads/Fitabase Data 4.12.16-5.12.16/weightLogInfo_merged.csv")

ggplot(data = weight_info, aes(x=WeightKg, y=BMI)) +
  geom_point(aes(color= BMI)) +
  labs(title = "Weight Vs. BMI")

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

