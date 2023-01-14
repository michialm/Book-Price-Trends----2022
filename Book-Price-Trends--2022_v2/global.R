
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
pcb_list <- unique(prices$page_count_bucket)
format_list <-  unique(prices$Format)
