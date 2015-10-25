# Load the shiny package
library(shiny)

# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)
require(markdown)

# Define the overall UI
shinyUI(
        navbarPage("Developing Data Products (Course Project: Shiny Application)", 
        # multi-page user-interface that includes a navigation bar.
        tabPanel('Explore the Data',
		    fluidPage(
		    titlePanel("Basic DataTable"),
		          
		    # Create a new Row in the UI for selectInputs
		    fluidRow(
		      column(4, 
		          selectInput("man", 
		                      "Manufacturer:", 
		                      c("All", 
		                        unique(as.character(mpg$manufacturer))))
		      ),
		      column(4, 
		          selectInput("trans", 
		                      "Transmission:", 
		                      c("All", 
		                        unique(as.character(mpg$trans))))
		      ),
		      column(4, 
		          selectInput("cyl", 
		                      "Cylinders:", 
		                      c("All", 
		                        unique(as.character(mpg$cyl))))
		      )        
		    ),
		    # Create a new row for the table.
		    fluidRow(
		      dataTableOutput(outputId="table")
		    ))),
		  
		  tabPanel('Visualize the Data', fluidPage( verticalLayout(
		  titlePanel("Scatter Plot of the relationship between cty and hwy"),
		  fluidRow( column(6, plotOutput("plot1")), column(6, wellPanel(
		  sliderInput("n", "Number of points", 10, 200, value = 50, step = 10) ) ))
		  )), mainPanel ( h4 ('The correlation coefficent between cty and hwy is:
		  '), textOutput("calculation")

)),
                   
      tabPanel('Help',mainPanel(includeMarkdown("about.md")))

))
