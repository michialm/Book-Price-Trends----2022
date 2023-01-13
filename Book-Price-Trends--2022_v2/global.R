
library(dplyr)
library(tidyr)
library(readr)
library(ggplot2)
library(grid)
library(shiny)
library(shinydashboard)

prices <- readRDS("prices.RData")
category_list <- unique(prices$BISAC_Level_1)
pcb_list <- unique(prices$page_count_bucket)
