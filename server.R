
bmi<- function(weight, height) {
  height<- height/100
  weight/(height^2)
}

shinyServer(function(input, output) {
  output$inputWeight <- renderPrint({input$weight})
  output$inputHeight <- renderPrint({input$height})
  output$bmi <- renderPrint({bmi(input$weight, input$height)})
})
