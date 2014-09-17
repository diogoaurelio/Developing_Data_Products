library(slidify)
author("first_deck")
slidify('index.Rmd')
library(knitr)
browseURL("index.html")


author("quizz_deck")
slidify('index.Rmd')
#library(knitr)
browseURL("index.html")