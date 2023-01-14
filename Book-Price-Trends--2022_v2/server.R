#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


# Define server logic required to draw a histogram
function(input, output) { 
  
  output$Category <- renderPrint({ input$Category })
  
  output$page_count_bucket <- renderPrint({ input$page_count_bucket })
  
  output$format <- renderPrint({ input$format })
  
  output$priceplot <- renderPlot({
    p <- prices %>% 
      filter(Format == input$format & 
               BISAC_Level_1 == input$Category & 
               page_count_bucket == input$page_count_bucket)
    
    median <- median(p$List_Price_Value, na.rm = TRUE) %>% 
      format(round(2), nsmall = 2)
    
    price_plot <- p %>% 
      ggplot(aes(x = List_Price_Value)) + 
      geom_histogram(color = 1,  fill = 'skyblue', bins = input$bins) + 
      geom_vline(xintercept = median(p$List_Price_Value, na.rm = TRUE), 
                 linetype="dotted", 
                 color = 'red',
                 lwd = 1) +
      coord_cartesian(expand = TRUE, clip = 'off') +
      scale_x_continuous(breaks = seq(0,1000, by = 10))
    
    xlim <- layer_scales(price_plot)$x$range$range
    ylim <- layer_scales(price_plot)$y$range$range
    
    price_plot + 
      annotate("text",
               x = xlim[2] /2 + 2,
               y = ylim[2] /2 + 5,
               label = paste("Median (---) = $", median),
               color = "red",
               size = 4) +
      labs(x = 'List Price ($)', y = 'Frequency') +
      labs(title = "2022 List Price Frequency Distribution") +
      labs(caption = "Data: limited to 2022 pub dates w/ >= 3 reported sales (Ingram Book Company)")
  })
  
  output$saturationplot <- renderPlot({
    
    p2 <- prices %>% 
      filter(Format == input$format & BISAC_Level_1 == input$Category) %>%
      group_by(BISAC_Level_1, BISAC_Level_2) %>% 
      summarize(count = n()) %>%
      arrange(desc(count))
    
    p3 <- p2[1:10, ] %>% 
      mutate(relative_frequency = count/sum(count))
    
    p3 %>%   
      ggplot(aes(x = reorder(BISAC_Level_2, -relative_frequency), y = relative_frequency)) +
      geom_bar(stat = "identity", color = 1, fill = 'skyblue') +
      labs(x = "Category", y = "Top 10 Frequency") +
      labs(title = "Top 10 Subcategories by Title Count") +
      labs(caption = "Data: limited to 2022 pub dates w/ >= 3 reported sales (Ingram Book Company)") +
      labs(legend.position = 'none') +
      guides(x = guide_axis(angle = -45))
  })
  
  output$opportunityplot <- renderPlot({
    
    p4 <- prices %>% 
      filter(Format == input$format & BISAC_Level_1 == input$Category) %>%
      group_by(BISAC_Level_2) %>% 
      transmute(sales_per_title = Sales_2022/n_distinct(ISBN)) %>%
      arrange(desc(sales_per_title)) %>% 
      filter(duplicated(BISAC_Level_2) == FALSE)
    
    p5 <- p4[1:20, ]
    
    p5 %>% 
      ggplot(aes(x = sales_per_title, 
                 y = reorder(BISAC_Level_2, sales_per_title))) +
      geom_col(color = 1, fill = 'skyblue') +
      labs(x = "Sales per Title", y = "Category") +
      labs(title = "Top 20 Subcategories -- Sales per Title") +
      labs(caption = "Data: limited to 2022 pub dates w/ >= 3 reported sales (Ingram Book Company)") +
      theme(legend.position='none')
  })
  
}
