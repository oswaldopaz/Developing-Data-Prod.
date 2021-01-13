#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

shinyServer(function(input, output) {

    output$plot1 <- renderPlot({
        set.seed(1984)

        if(input$showHist1){
            dataX <- rnorm(input$sliderX)
            dataX=as.data.frame(dataX)
            #hist(dataX, main = "", xlab ="X", col = "lightblue")
            g <- ggplot(dataX,aes(dataX))+
                geom_histogram(aes(y = ..density..),fill="lightblue") + 
                stat_function(fun = dnorm, colour = "blue", lwd=1.5)+
                xlab("X")
            g
                
        }
        
    })
    
    output$plot2 <- renderPlot({
        set.seed(1984)

        if(input$showHist2){
            dataX <- sample(1:1000,input$sliderX,replace = T)
            hist(dataX, main = "", xlab ="X", col = "red")
            
        }     
        
    })   
    
})