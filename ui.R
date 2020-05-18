library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Women: Height vs. Weight"),
    #display inputs
    sidebarPanel(
        sliderInput('height', 'What is your height (in inches)?',value = 65, min = 58, max = 72, step = 0.5),
        sliderInput('weight', 'What is your weight (in lbs)?',value = 140, min = 110, max = 170, step = 0.5)
    ), 
    #display outputs
    mainPanel(
        verbatimTextOutput("text1"),
        plotOutput('dataPlot', click = "plot_click"),
        verbatimTextOutput("info")
    ) 
    )
)
