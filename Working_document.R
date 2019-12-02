##Working Text mining Document
#Created 2019.09.02
#Modified 

#Document designed to atomatically run through the  whole process of text analysis
# Converting PDF to Text
# Cleaning text files
# Analysing 



#Packages Used
library(tm) #Text mining package used to create and manipulate corpora
library(tidytext) #Text mining package used to tidy data 
library(stringr) #Used to clean and manipulate strings
library(dplyr)

#Functions Loaded
source("Code/Functions.R")
source("Code/merge_tweets.R")

#word lists loaded
bio_words <- read.table("bio_words.txt", header = T)
formal_wrds <- read.table("Formality_words/formal_seeds_100.txt", col.names = "word")
negative_wrds <- read.table("negative_wrds.txt", header = T)
positive_wrds <- read.table("positive_wrds.txt", header = T)
economic_wrds <- read.table("economic_wrds.txt", header = T)




#File destinations
dest <- "Datafiles/Reports/"  #Folder location containing desired documents for PDFtoTEXT
dest2 <- "C:/Users/user/twitterdata/better_query/text/" #Folder location containing twitter data



#PDF to Text
myfiles <- list.files(path = dest, pattern = "pdf",  full.names = TRUE)  #List of PDF files that are to be converted to text
lapply(myfiles, function(i) system(paste('C:/Users/user/PDFtoTEXT/pdftotext.exe',
                                          paste0('"', i, '"')), wait = FALSE) )  #Uses the program pdftotext.exe to convert


#Creating a corpus and converting to useable data
Doc_corp <- VCorpus(DirSource(dest, pattern = "txt"))
tidy_Doc <- tidy(Doc_corp)

tweet_corp <- VCorpus(DirSource(dest2, pattern = "txt"))
tidy_tweet <- tidy(tweet_corp)


#cleaning text
#Uses clean text function from Functions.R
tidy_Doc$text <- trim_fun(tidy_Doc)



rp_values <- read.table("datafiles/csvs/rp_values.txt", header = T)
rp.pca <- prcomp(rp_values[,c(2:11)], center = T, scale. = T)
summary(rp.pca)
install.packages("ggfortify")
library(ggfortify)
library(ggplot2)
autoplot(rp.pca, loadings = T, loadings.label = T)

tw_data <- read.table("datafiles/csvs/tw_data_adj.txt", header = T)
tw_data[,3] <- as.numeric(tw_data[,3])
tw.pca <- prcomp(tw_data[,c(2:71)], center = T, scale. = T)
summary(tw.pca)
autoplot(tw.pca)

b <- merge(tw_data, rp_values)
b.pca <- princomp(b[,c(2:81)], center = T, scale. = T)
summary(b.pca)
autoplot(b.pca)

merged_t <- read.table("Datafiles/csvs/transv_summarised.txt", header = T)
mer.pca <- prcomp(merged_t[,c(3:7)], center = T, scale. = T)
summary(mer.pca)
#prcomp()       princomp()          Description
# sdev          sdev                the standard deviations of the principal components
# rotation      loadings            the matrix of variable loadings (columns are eigenvectors)
# center        center              the variable means (means that were substracted)
# scale         scale               the variable standard deviations (the scaling applied to each variable )
# x             scores              The coordinates of the individuals (observations) on the principal components
autoplot(mer.pca, loadings = T, loadings.label = T)

#install.packages("factoextra")
library("factoextra")
fviz_pca_biplot(mer.pca, geom = "point", pointshape = 21, 
             pointsize = 2, 
             fill.ind = merged_t$Document_Type, 
             col.ind = "black",
             palette = "jco", 
             addEllipses = TRUE,
             label = "var",
             col.var = "black",
             repel = TRUE,
             legend.title = "Document") +
  ggtitle("PCA-plot of Document Language Use") +
  theme(plot.title = element_text(hjust = 0.5))

write.csv(mer.pca[["x"]], "cord.csv")

cord <- read.csv("cord.csv", header = T)
cord.lm <- lm(cord$Document_Type=="Tweet" ~ cord$Document_Type=="Report")
summary.aov(cord.lm)


