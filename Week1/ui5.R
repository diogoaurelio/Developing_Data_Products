
#Example Histogram

library(shiny)
shinyUI(pageWithSidebar(
	headerPanel("Example plot"),
	sidebarPanel(sliderInput('mu', 'Guess at the mean', value=70, min = 62, max=74, step = 0.05)),
	mainPanel(plotOutput('newHist'))
))

#Have server.R with the following code:

#library(shiny)
#library(UsingR)
#data(galton)

#shinyServer(
#	function(input, output) {
#		output$newHist <- renderPlot({
#			hist(galton$child, xlab='child height', col='lightblue', main='Histogram')
#			mu <- input$mu
#			lines(c(mu,mu), c(0,200), col="red", lwd=5)
#			mse <- mean((galton$child -mu)^2)
#			text(63, 150, paste("mu = ", mu))
#			text(63, 140, paste("MSE = ", round(mse,2)))
#		})
#	}
#)