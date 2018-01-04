
library(shiny)

calc_bmi <- function(weight, height) weight/(height^2)


render_opinion <- function(input) {
        BMI <- calc_bmi(input$weight, input$height)
        if (BMI < 18.5) {
                BMI_result <- "Underweight"
        }
        else if ((BMI > 25) & (BMI < 29.9)) {
                BMI_result <- "Overweight"
        }
        else if (BMI > 29.9) {
                BMI_result <- "Obese"
        }
        else {
                BMI_result <- "Normal"
        }
        print(BMI_result)
}

shinyServer(function(input, output) {
        output$weight <- renderPrint({input$weight})
        output$height <- renderPrint({input$height})
        output$BMI <- renderPrint({calc_bmi(input$weight, input$height)})
        output$opinion <- renderPrint({render_opinion(input)})
})
