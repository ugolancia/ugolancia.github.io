# BMI application

library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Body Mass Index calculation"),
  
  sidebarPanel(
        numericInput("weight", label = h3("Insert your weight in Kg"), 70,
               min = 25, max = 200, step = 1),
               submitButton("Submit"),
        numericInput("height", label = h3("Insert your height in Kg"), 160,
                     min = 25, max = 200, step = 1),
        submitButton("Submit")
  ),
  mainPanel(
    h3('Results of prediction'),
    h4('You entered as weight (Kg)'),
    verbatimTextOutput("inputWeight"),
    h4('You entered as height (cm)'),
    verbatimTextOutput("inputHeight"),
    h4('Which resulted in a Body Mass Index of '),
    verbatimTextOutput("bmi"),
    h3("Interpretation of the results"),
    h5("bmi < 19 means you are too much underweigth and could be at health risk"),
    h5("bmi < 23 means you are underweight"),
    h5("bmi between 23 and 27 are considered normal"),
    h5("bmi > 27 but < or = 30 means you are overweight and at moderate health risk"),
    h5("bmi > 30 means you are obese and you are at severe health risk")
  )
)
)
  
 
  



