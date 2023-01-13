#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Book Price Trends -- 2022"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
                 selectInput("Category", label = h3("Category"), 
                             choices = category_list, 
                             selected = "JUVENILE FICTION"),
                 hr(),
                 
                 fluidRow(column(4, verbatimTextOutput("Category"))),
                 
                 selectInput("page_count_bucket", label = h3("Page Count"),
                             choices = pcb_list, 
                             selected = "51 - 100"),
                 hr(),
                 
                 fluidRow(column(4, verbatimTextOutput("51 - 100"))),
                 
                 sliderInput("bins",
                        "Number of bins:",
                        min = 20,
                        max = 60,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
)
