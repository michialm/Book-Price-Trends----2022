#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

dashboardPage(
  dashboardHeader(title = "Book Pricing 2022"),
  dashboardSidebar(
    
    selectInput("Category", label = h5("Category"), 
                choices = category_list, 
                selected = "JUVENILE FICTION"),
    hr(),
    selectInput("page_count_bucket", label = h5("Page Count"),
                choices = list("0 - 50" = "0 - 50",
                               "51 - 100" = "51 - 100",
                               "101 - 150" = "101 - 150",
                               "151 - 200" = "151 - 200",
                               "201 - 250" = "201 - 250",
                               "251 - 300" = "251 - 300",
                               "301 - 350" = "301 - 350",
                               "351 - 400" = "351 - 400",
                               "401 - 450" = "401 - 450",
                               "451 - 500" = "451 - 500", 
                               "501 - 550" = "501 - 550",
                               "551 - 600" = "551 - 600",
                               "601 - 650" = "601 - 650",
                               "651 - 700" = "651 - 700",
                               "701 - 750" = "701 - 750",
                               "751 - 800" = "751 - 800",
                               "801 - 850" = "801 - 850",
                               "851 - 900" = "851 - 900",
                               "901 - 950" = "901 - 950",
                               "951 - 1000" = "951 - 1000",
                               "1001 - 1050" = "1001 - 1050",
                               "1051 - 1100" = "1051 - 1100",
                               "1101 - 1150" = "1101 - 1150",
                               "1151 - 1200" = "1151 - 1200",
                               "1201 - 1250" = "1201 - 1250",
                               "1251 - 1300" = "1251 - 1300",
                               "1300+" = "1300+"),
                selected = "51 - 100"),
    hr(),
    
    selectInput("format", 
                label = h5("Format"),
                choices = list("Hardcover" = "Hardcover",
                               "Trade Paperback" = "Trade Paperback"),
                selected = "Hardcover"),
    hr(),
    
    sliderInput("bins",
                label = h5("Number of bins:"),
                min = 10,
                max = 50,
                value = 20),
    
    includeHTML("project_note.html")
    
  ),
  dashboardBody(
    fluidRow(
      column(12,
             box(
               plotOutput("priceplot")
             )
      )
    ),
    
    fluidRow(column(8,
                    box(
                      plotOutput("saturationplot")
                    ),
                    box(
                      plotOutput("opportunityplot")
                    )
    )
    )
  )
)