library(shiny)

data <- women

shinyServer(
    function(input, output) {
        
        output$dataPlot <- renderPlot({
            plot(data$height, data$weight)
            height <- input$height
            lines(c(height, height), c(0, 200),col="red",lwd=5)
            weight <- input$weight
            abline(h = weight, col ="blue", lwd=5)
        })
        
        output$text1 <- renderText({
            height <- input$height
            weight <- input$weight
            paste0("Your predicated BMI is ",(703*weight/(height^2)))
        })
        
        output$info <- renderText({
            paste0("Hover over graph to see values:","\nx=", input$plot_click$x, "\ny=", input$plot_click$y)
        })
        
    }
)
