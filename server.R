# Load the shiny package
library(shiny)

# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Filter data based on selections
  output$table <- renderDataTable({
    data <- mpg
    if (input$man != "All"){
      data <- data[data$manufacturer == input$man,]
    }
    if (input$cyl != "All"){
      data <- data[data$cyl == input$cyl,]
    }
    if (input$trans != "All"){
      data <- data[data$trans == input$trans,]
    }
    data
  })
  
  output$plot1 <- renderPlot({
    d1 <- mpg[1:input$n,]
    with(d1, plot(hwy ~ cty, pch=19, col=4))
    abline(lm(hwy ~ cty, data=d1), col=2, lwd=2)
  })
  
   output$calculation <- renderPrint ({
    d1 <- mpg[1:input$n,]
    with(d1, cor(hwy, cty))  
   })
  
})
