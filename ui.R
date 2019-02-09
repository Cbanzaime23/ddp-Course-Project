library(shiny)
#UserGuide <- h3("How to use this app?", align = "center"),<br>,<p>(Hello)</p>
shinyUI(pageWithSidebar(
        titlePanel(title = h1("Histogram Simulator", align="center")),
        sidebarPanel(
                selectInput("n", "Choose how many random numbers", 
                             choices = c(10,100,1000,10000,100000,1000000),
                             selected = 1000),
                selectInput("family", "Choose which type of distribution",
                            choices = c("Normal",
                                        "Uniform",
                                        "Exponential"),
                            selected = "normal"),
                sliderInput("bins", "Choose a number of bins", 
                            min = 1, max = 50, value = 25)
        ),
        mainPanel(
                
                
                tabsetPanel(type = "tab",
                            tabPanel("Plot",plotOutput("histogram")),
                        tabPanel("User Guide",h3("How to use this histogram simulator?", align = "center"),
                                 br(),
                                 h4("The aim of this histogram simulator is to have a view of the general shape of the distribution of random numbers"),
                                 br(),
                                 strong("Step 1"),
                                 p("Use the 'Choose how many random numbers' dropdown for setting up how many random number do you prefer"), 
                                 p("Note: the only preferences for the number of random numbers are 10, 100, 1000, 10000, 100000, and 1000000"),
                                 br(),
                                 strong("Step 2"),
                                 p("Use the 'Choose which type of distribution' dropdown for setting up what type of distribution you prefer for the random number"),
                                 p("Note: the only preferences for the type of distribution are Uniform, Normal, and Exponential"),
                                 br(),
                                 strong("Step 3"),
                                 p("Use the 'Choose a number of bins' slider to adjust the number of bins depending on which you prefer")
                                 )
                        
                        
                        )
        )
))



