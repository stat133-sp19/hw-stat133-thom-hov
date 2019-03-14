#
#title: make-shots-data-script.R
#description: 
#input(s): 
#output(s):
#
library(dplyr)
library(readr)

#Objects for easy import of data frame.
curry <- "/Users/thomashoversen-juckett/Desktop/workout01/data/stephen-curry.csv"
iguodala <- "/Users/thomashoversen-juckett/Desktop/workout01/data/andre-iguodala.csv"
green <- "/Users/thomashoversen-juckett/Desktop/workout01/data/draymond-green.csv"
durant <- "/Users/thomashoversen-juckett/Desktop/workout01/data/kevin-durant.csv"
thompson <- "/Users/thomashoversen-juckett/Desktop/workout01/data/klay-thompson.csv"
#Data frames by player
Curry <- read.csv(curry, stringsAsFactors = FALSE)
Iguodala <- read.csv(iguodala, stringsAsFactors = FALSE)
Green <- read.csv(green, stringsAsFactors = FALSE)
Durant <- read.csv(durant, stringsAsFactors = FALSE)
Thompson <- read.csv(thompson, stringsAsFactors = FALSE)
#Add column "name"
Curry <- mutate(Curry, name = "Stephen Curry")
Iguodala <- mutate(Iguodala, name = "Andre Iguodala")
Green <- mutate(Green, name = "Draymond Green")
Durant <- mutate(Durant, name = "Kevin Durant")
Thompson <- mutate(Thompson, name = "Klay Thompson")
#Change n and y to shot_no and shot_yes
Curry$shot_made_flag[Curry$shot_made_flag=="n"] <- "shot_no"
Curry$shot_made_flag[Curry$shot_made_flag=="y"] <- "shot_yes"

Iguodala$shot_made_flag[Iguodala$shot_made_flag=="n"] <- "shot_no"
Iguodala$shot_made_flag[Iguodala$shot_made_flag=="y"] <- "shot_yes"

Green$shot_made_flag[Green$shot_made_flag=="n"] <- "shot_no"
Green$shot_made_flag[Green$shot_made_flag=="y"] <- "shot_yes"

Durant$shot_made_flag[Durant$shot_made_flag=="n"] <- "shot_no"
Durant$shot_made_flag[Durant$shot_made_flag=="y"] <- "shot_yes"

Thompson$shot_made_flag[Thompson$shot_made_flag=="n"] <- "shot_no"
Thompson$shot_made_flag[Thompson$shot_made_flag=="y"] <- "shot_yes"
#Add a minute column.
Curry <- mutate(Curry, minute = (period*12) - minutes_remaining)
Iguodala <- mutate(Iguodala, minute = (period*12) - minutes_remaining)
Green <- mutate(Green, minute = (period*12) - minutes_remaining)
Thompson <- mutate(Thompson, minute = (period*12) - minutes_remaining)
Durant <- mutate(Durant, minute = (period*12) - minutes_remaining)

#Sink them
#Curry
sink("/Users/thomashoversen-juckett/Desktop/workout01/output/stephen-curry-summary.txt")
summary(Curry)
sink()
#Iguodala
sink("/Users/thomashoversen-juckett/Desktop/workout01/output/andre-iguodala-summary.txt")
summary(Iguodala)
sink()
#Green
sink("/Users/thomashoversen-juckett/Desktop/workout01/output/draymond-green-summary.txt")
summary(Green)
sink()
#Thompson
sink("/Users/thomashoversen-juckett/Desktop/workout01/output/klay-thompson-summary.txt")
summary(Thompson)
sink()
#Durant
sink("/Users/thomashoversen-juckett/Desktop/workout01/output/kevin-durant-summary.txt")
summary(Durant)
sink()

shots_data <- rbind(Curry, Iguodala, Green, Thompson, Durant)

write.csv(shots_data, file = "/Users/thomashoversen-juckett/Desktop/workout01/data/shots-data.csv")




