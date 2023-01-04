# Book-Price-Trends----2022

# Executive Summary

  As prices change and vary greatly in the market, due to inflation, war, and greater market uncertainties, it can be difficult for business to know how to best price their products to be competitive in market segments. For book publishing, this is no different – the costs of supply chain, manufacturing, marketing campaigns, author royalties and stocked inventory must all factor in to the List Price of a title.


  So how do Publishers best price their titles to be competitive?


  This project will provide relevant book data and dynamic plots that will help publishers better understand the pricing trends in their specific market segments, taking into account format variations, page counts, and book categorization.

    •	Drop Down Menus for Book Category; Format; Page Count selection filtering

    •	Slider to determine count of bins displayed

    •	Dynamic histogram displaying distribution of List Prices across full dataset with        applied input filters

    •	Dynamic area chart that shows Top BISAC subcategory share for each Macro-Category        selected

    •	Mean and Median statistics displayed for interpreting takeaways and pricing action       in product comparison

  Because the market is always changing and pricing strategies can vary greatly for front list/backlist product offerings, the data will be limited to newly published titles with publication dates limited to 2022 and eliminate any titles that did not have >= 3 sales in the market, YTD.





# Motivation

  My motivation for this project centers around providing relevant trends in book data for publisher clients. 

  With so much pricing fluctuation this year, the question, “How do I price my book,” is one I often receive – unfortunately, I am unable to suggest list prices, as this would be outside legal bounds of doing business. 
How can I help my clients without breaking the law and running the risk of “price fixing” through a list price suggestion?

  By providing a clear picture of pricing trends within dynamic product filters a client can self-select, I can help answer the question indirectly by displaying a visualization of list price frequencies within product segments and associated statistics.
Data Question
What is the most competitive List Price Values for Books within specific format, genre, and page count buckets? 

# Minimum Viable Product (MVP)

  The app will display current frequency distributions of List Prices for front list books, selling at least 3 units YTD. Median and Mean values for each filtered selection will be displayed for greater interpretation of the distribution values. 

  Toggles (bin count slider/drop down menu for filtering) will be present to specify product/market category, to display the most relevant list price value distributions for product comparison.

  Observation Counts and Product/Category/Pricing Bucket labels will be included to ensure best interpretation of results. 

  Numbered walkthrough steps to ensure self-service functionality







#  Schedule (through 1/21/2023)

1.	Get the Data (1/2/2023)
2.	Clean & Explore the Data (1/4/2023)
3.	Create Presentation and Shiny App (1/17/2023)
4.	Internal Demos (1/17/2023)
5.	Midcourse Project Presentations (1/23/2023)

#  Data Sources

  Point of Sales data pulled from Ingram Book Company
Data includes book metadata – list price value, EAN (unique identifier), pub date, publisher, imprint, title, format, book category, page count, point of sales 2022, internal categorization, BISAC category (market categorization)

#  Known Issues and Challenges

  Anticipated Challenges include wrangling data into readable format, bucketing list prices appropriately, displaying clean histograms with relevant distributions, functional toggling for filtering and bin control, the area chart for BISAC categorization
