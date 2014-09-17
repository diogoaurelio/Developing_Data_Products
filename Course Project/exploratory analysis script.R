#exploratory analysis script.R

#setwd("./Documents/Developer/R/Developing_Data_Products/Course Project/")

trainingFile <- "./data/pml-training.csv"

read.csv(trainingFile, header=TRUE, )

#run the following command to reproduce this code, 
#if you do not have shiny packages locally installed yet: install.packages("shiny") 
library(shiny)
library(shinyapps)
