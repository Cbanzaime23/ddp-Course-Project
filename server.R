library(shiny)

shinyServer(function(input, output) {
        data <- reactive({ 
                FUN <- switch(input$family,
                              "Normal" = rnorm,
                              "Uniform" = runif,
                              "Exponential" = rexp)
                FUN(input$n)
        })
        
        output$histogram <- renderPlot({
                hist(data(), breaks = input$bins,col = "darkred", main = "Histogram of Random Numbers", ylab = "Frequency", xlab = "Random Numbers", border = 0)
                
                #curve(dnorm(x = data(), mean = mean(data()), sd = sd(data()), col = "thistle4", lwd = 2, add = TRUE))
        
        })
        
})