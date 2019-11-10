# From R projects for Dummies in R Refernces
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

# Define UI for application that draws a histogram
ui <- dashboardPage(
      dashboardHeader(title = "this is G's header"),
      dashboardSidebar(title="test"),
      dashboardBody(fluidRow(
          box(
              title = "Select a Number",
              sliderInput(inputId = "number",
                          label = "no label",
                          value = 500, min = 25, max = 1000)),
          box(
              title = "Histogram",
              plotOutput("hist", height = 250))
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$hist <- renderPlot({})
}

# Run the application 
shinyApp(ui = ui, server = server)
