
library(shiny)

shinyUI(fluidPage(


  titlePanel("Simple Bady Mass Index (BMI) Calculator"),
  sidebarLayout(
    sidebarPanel(
            numericInput('weight', 'Enter Weight (in kilograms)',
                         100, min = 1, step = 1),
            numericInput('height', 'Enter height (in meters)',
                         20, min = 20, step = 1)
    ),

    mainPanel(
        h3('Body Mass Index Calculated as follows'),
        h4('For weight, you entered'),
        verbatimTextOutput("weight"),
        h4('For height, you entered'),
        verbatimTextOutput("height"),
        h4('BMI is calculated to be'),
        verbatimTextOutput("BMI"),
        h4('This is considered to be'),
        verbatimTextOutput("opinion"),
        h5('BMI is a person’s weight in kilograms divided by the square of height in meters.
           BMI does not measure body fat directly, but research has shown that BMI is
           moderately correlated with more direct measures of body fat obtained from
           skinfold thickness measurements, bioelectrical impedance,
           densitometry (underwater weighing), dual energy x-ray absorptiometry (DXA) and
           other methods 1,2,3. Furthermore, BMI appears to be as strongly correlated with
           various metabolic and disease outcome as are these more direct measures of body
           fatness 4,5,6,7,8,9. In general, BMI is an inexpensive and easy-to-perform method
           of screening for weight category, for example underweight, normal or healthy
           weight, overweight, and obesity.*'),
        h5('https://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/index.html')
    )
    )
))
