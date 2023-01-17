# Book-Pricing----2022

# Executive Summary

  As prices change and vary greatly in the market, due to inflation, war, and greater market uncertainties, it can be difficult for business to know how to best price their products to be competitive in market segments. For book publishing, this is no different – the costs of supply chain, manufacturing, marketing campaigns, author royalties and stocked inventory must all factor in to the List Price of a title.


  So how can Publishers best price their titles to be competitive?


  This project will provide relevant book data and dynamic plots that will help publishers better understand the trends in their specific market segments, taking into account format variations, page counts, and book categorization.

•	Drop Down Menus for Book Category; Format; Page Count selection filtering

•	Slider to determine count of bins displayed

•	Dynamic histogram displaying distribution of List Prices across full dataset with applied input filters -- Median values displayed

•	Dynamic bar charts that show Top BISAC Subcategory share for each Category selected and Top Categories by Sales-per-Title metrics.


  Because the market is always changing and pricing strategies can vary greatly for front list/backlist product offerings, the data will be limited to newly published titles with publication dates limited to 2022 and the data is limited to titles with  >= 3 sales in the market in 2022.



# Motivation

  My motivation for this project centers around providing relevant trends in book data for publisher clients. 

  With so much pricing fluctuation in the past year, the question, “How do I price my book,” is one I often receive – as a representative of a book wholesaler/distributor, I am legally prohibited from suggesting list prices to my clients.

  By providing relevant statistics, data visuals, and filters for title and category specifications, I can help client publishers answer this question (...and increase client data literacy).
  
  
#Data Question

  What is the most competitive List Price Values for Books within specific format, genre, and page count buckets? 

# Minimum Viable Product (MVP)

  The app displays current frequency distributions of List Prices for front list books, selling at least 3 units YTD. Median value for each filtered selection will be displayed for greater interpretation of the distribution values. 

  Toggles (bin count slider/drop down menu for filtering) are present to specify product/market category, displaying the most relevant list price value distributions for product comparison.

  Secondary bar charts display the top 10 Subcategories by title count and the top 20 Subcategories by sales-per-title according to the filtered Category. 

  User Notes provide direction and context for data interpretation. 







#  Schedule (through 1/21/2023)

1.	Get the Data (1/2/2023)
2.	Clean & Explore the Data (1/4/2023)
3.	Create Presentation and Shiny App (1/17/2023)
4.	Internal Demos (1/17/2023)
5.	Midcourse Project Presentations (1/23/2023)

#  Data Sources

  Original data pulled from Ingram Book Company and includes book metadata – list price value, EAN (unique identifier), pub date, publisher, imprint, title, format, book category, page count, point of sales 2022, internal categorization, BISAC category (market categorization)
  
  Data has been masked to eliminate unique identifiers, and the sales data has been randomized, so as to ensure privatization of data. This project is a demonstration of this data science apprentice's ability with RShiny, R Coding proficiencies, and an understanding of data visualization in the context of business analytics. 

#  Known Issues and Challenges

  Anticipated Challenges include wrangling data into readable format, bucketing list prices appropriately, displaying clean histograms with relevant distributions, functional toggling for filtering and bin control, and privatization of source dataset.
