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
library(dplyr) #Used for the pipeline function
library(factoextra) #Used to plot PCA biplot
library(ggfortify)
library(ggplot2)

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


#cleaning text
#Uses clean text function from Functions.R
tidy_Doc$text <- trim_fun(tidy_Doc)


#Principle Component Analysis
#uses sumarised data compiled from pca.R files
merged_t <- read.table("Datafiles/csvs/transv_summarised.txt", header = T)
mer.pca <- prcomp(merged_t[,c(3:7)], center = T, scale. = T)
#prcomp()       princomp()          Description
# sdev          sdev                the standard deviations of the principal components
# rotation      loadings            the matrix of variable loadings (columns are eigenvectors)
# center        center              the variable means (means that were substracted)
# scale         scale               the variable standard deviations (the scaling applied to each variable )
# x             scores              The coordinates of the individuals (observations) on the principal components

summary(mer.pca)
# Importance of components:
#                           PC1    PC2    PC3    PC4    PC5
# Standard deviation     1.2216 1.1044 0.9490 0.8709 0.7930
# Proportion of Variance 0.2985 0.2440 0.1801 0.1517 0.1258
# Cumulative Proportion  0.2985 0.5424 0.7225 0.8742 1.0000

autoplot(mer.pca, loadings = T, loadings.label = T)



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
cord.lm <- lm(cord$PC1 ~ cord$PC2 * cord$Document_Type)
summary.aov(cord.lm)


