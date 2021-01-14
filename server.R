#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$title <- renderText({
        
        master_list<-read.csv("reading_list.csv")

        winner<-master_list%>%filter(Year==input$year)
        as.character(winner$Title)

    })

})
