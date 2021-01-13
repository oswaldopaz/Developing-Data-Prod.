#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(ggplot2)

shinyUI(fluidPage(
    titlePanel("Center Limit Theory"),
    sidebarLayout(
        sidebarPanel(

            sliderInput("sliderX", "Pick an X Value",1,1000,500),
            checkboxInput("showHist1", "Show/Hide Random Histogram Graph", value = TRUE),
            checkboxInput("showHist2", "Show/Hide non-independent Histogram Graph", value = TRUE)     
           
        ),
        mainPanel(
            h3("Histogram Graph"),
            plotOutput("plot1"),
            h3("Histogram Graph"),            
            plotOutput("plot2")
        )
    )
))