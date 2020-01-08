#Functions created 


#Clean text function
#removes metadata from the top and bottom of text files 
#data must be in the form of a tidy data frame
library(stringr)

trim_fun <- function(a){
  a$text <- tolower(a$text)
  loc1 <- str_locate(a$text, pattern = "abstract") #Identifies location of "abstract" within a report
  loc2 <- str_locate(a$text, pattern = "\nreferences|literature cited") #Identifies location of either "\nreferences" or "literature cited"
  a$text <- substring(a$text, loc1[,1], loc2[,2]) #uses the locations to extraxt text inbetween 
  a$text <- gsub("\\d", " ", a$text) #removes digits
  a$text <- gsub("\n", " ", a$text)
  a$text <- gsub("\f", " ", a$text)
}


#Web Scraping function
#saves the desired text from a website
#(a) is the vector where the link to the desired page is read by read_html
#(b) is the html path where the text appears on  the web page
library(rvest)
library(dplyr)
library(stringr)

web_scrape <-function(a,b){
  text <- a %>%
    html_nodes(b) %>%
    html_text
  w_doc <- data.frame(text, stringsAsFactors = F)
}

trim_web <- function(a){
  a$text <- tolower(a$text)
  a$text <- gsub("\\d", " ", a$text)
  a$text <- gsub("\n", " ", a$text)
  a$text <- gsub("\r", " ", a$text)
  a <- data.frame(a, stringsAsFactors = F)
}

