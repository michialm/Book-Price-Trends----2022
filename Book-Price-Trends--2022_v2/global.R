
#Read in required libraries
library(dplyr)
library(tidyr)
library(readr)
library(ggplot2)
library(grid)
library(shiny)
library(shinydashboard)

#Read in file and list objects
prices <- readRDS("prices.RData")
category_list <- unique(prices$BISAC_Level_1)
