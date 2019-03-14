---
title: "data-dictionary.md"
author: "Thomas Hoversen"
date: "3/11/2019"
output: github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```
# This is a data dictionary for the data files.

- team_name: The name of the team the data is based on.
***
- game_date: The date when the game the data represents occurred. 
***
- season: The season year the game occurred. 
***
- period: An NBA game is divided in 4 periods of 12 mins each. For example, a value for period = 1 refers to the first period (the first 12 mins of the game).
***
- minutes_remaining: The amount of time in minutes, respectively, that remained to be played in a given period.
***
- seconds_remaining: The amount of time in seconds, respectively, that remained to be played in a given period.
***
- shot_made_flag: Indicates whether a shot was made (shot_yes) or missed (shot_no).
***
- action_type: The basketball moves used by players to either pass by defenders to gain access to the basket or to get a clean pass to a teammate to score a two pointer or three pointer.
***
- shot_type: Indicates whether a shot is a 2-point field goal, or a 3-point field goal.
***
- shot_distance: Distance to the basket (measured in feet).
***
- opponent: The opponent who played against the main team ("team_name") played against.
***
- x: Refers to the court coordinate "x" of (x,y), measured in inches, where a shot occurred.
***
- y: Refers to the court coordinate "y" of (x,y), measured in inches, where a shot occurred.
***









