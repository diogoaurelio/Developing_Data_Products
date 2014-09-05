
library(shiny)
#shinyUI(
#	pageWithSidebar(
#		headerPanel("Diabetes prediction"),
#		sidebarPanel(
#			numericInput('glucose', 'Glucose mg/dl', 90, min = 50, max = 200, step = 5), 
#			submitButton('Submit')
#			),
#		mainPanel(
#			h3('Results of prediction'),
#			h4('You entered'),
#			verbatimTextOutput("inputValue"),
#			h4('Which reulted in a prediction of '),
#			verbatimTextOutput("prediction"),
#			)
#))

shinyUI( pageWithSidebar(
# Application title headerPanel("Diabetes prediction"),
	sidebarPanel(
		numericInput('glucose', 'Glucose mg/dl', 90, min = 50, max = 200, step = 5), submitButton('Submit')
		), 
	mainPanel(
		h3('Results of prediction'),
		h4('You entered'), verbatimTextOutput("inputValue"), 
		h4('Which resulted in a prediction of '), 
		verbatimTextOutput("prediction")
		) 
		)
)

#Have server.R with the following code:
#library(shiny)
#diabetesRisk <- function(glucose) glucose / 200
#shinyServer(
#	function(input, output) {
#		output$inputValue <- renderPrint({input$glucose})
#		output$prediction <- renderPrint({diabetesRisk(input$glucose)})
#	}
#)
