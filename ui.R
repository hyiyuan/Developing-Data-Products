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
shinyUI(fluidPage(

    # Application title
    titlePanel("The book Won Texas Bluebonnet Award 1981-2020"),

    # Input year
   
       numericInput(inputId="year","Year:1981-2020", value=2020, 
                 min=1981, max=2020, step=1),

        # Show the winnder of the year
        mainPanel(
            h3("The Title of the Book:"),
            textOutput(outputId="title")
        )
        
   
    
))
