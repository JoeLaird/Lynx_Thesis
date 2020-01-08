#Lynx Reintroduction supplamentary material
#Author: Joe Laird
#Created: 2019.09.02
#Last edited 

#Document designed to atomatically run through the whole process of text analysis
# Converting PDF to Text
# Cleaning text files
# Analysing 

#Set Working Directory
setwd("c:/Users/user/Documents/Uni/Honours_Project/Text-Analysis/")

#Packages Used
library(tm) #Text mining package used to create and manipulate corpora
library(tidytext) #Text mining package used to tidy data 
library(stringr) #Used to clean and manipulate strings
library(dplyr) #Used for the pipeline function
library(factoextra) #Used to plot PCA biplot
library(ggplot2) #used for graphical parameters with PCA biplot
library(ggpubr) ##used for graphical parameters with PCA biplot

#Functions Loaded
source("Code/Functions.R")


# Data Gathering ####

source("Code/merge_tweets.R") #Imports Twitter text data
source("Code/web_sources.R") #Imports website text data

# word lists Imported
bio_words <- read.table("bio_words.txt", header = T)
formal_wrds <- read.table("Formality_words/formal_seeds_100.txt", col.names = "word") 
negative_wrds <- read.table("negative_wrds.txt", header = T)
positive_wrds <- read.table("positive_wrds.txt", header = T)
economic_wrds <- read.table("economic_wrds.txt", header = T)


# File destinations
dest <- "Datafiles/Reports/"                            # Folder location containing desired documents for PDF to text conversion
dest2 <- "C:/Users/user/twitterdata/better_query/text/" # Folder location containing twitter data


# PDF to Text
myfiles <- list.files(path = dest, pattern = "pdf",  full.names = TRUE)  #List of PDF files that are to be converted to text
lapply(myfiles, function(i) system(paste('C:/Users/user/PDFtoTEXT/pdftotext.exe',
                                          paste0('"', i, '"')), wait = FALSE) )  #Uses the program pdftotext.exe to convert


# Creating a corpus and converting to useable data
Doc_corp <- VCorpus(DirSource(dest, pattern = "txt")) # Importing all Reports converted to text
tidy_Doc <- tidy(Doc_corp)                            # converting corpus to a tidy document format


# cleaning text
tidy_Doc$text <- trim_fun(tidy_Doc) #Uses clean text function from Functions.R on all the reports

#Preparation for analysis
source("Code/PCA.R")
source("Code/wb_PCA.R")
source("Code/pca_tweets.R")
#each of these files need to be re-run but for the different word lists
#after each run the exported CSV's were imported into a summarised data frame and saved as a text file using Microsoft Excel
#This needs to be done after each word list otherwise data will be overwritten 
#this could be mitigated by changing the name of the exported files after every run

#summarised data imorted
sum_data <- read.table("Datafiles/csvs/transv_summarised.txt", header = T)  
str(sum_data)
#'data.frame':	110 obs. of  7 variables:
# $ wrd_list     : Factor w/ 110 levels "rp1","rp10","rp11",..: 91 102 104 105 106 107 108 109 110 92 ...
# $ Document_Type: Factor w/ 3 levels "Report","Tweet",..: 3 3 3 3 3 3 3 3 3 3 ...
# $ bio_wrds     : num  0.00917 0.0145 0.02792 0.04545 0.00437 ...
# $ negative_wrds: num  0.01 0.017 0.014 0.0227 0.0175 ...
# $ positive_wrds: num  0.0458 0.0277 0.0359 0.0568 0.0262 ...
# $ formal_wrds  : num  0.00333 0.00159 0.00698 0 0 ...
# $ economic_wrds: num  0.00583 0.00471 0.00299 0.01136 0 ...



# Analysis ####

# Principle Component Analysis ####
mer.pca <- prcomp(sum_data[,c(3:7)], center = T, scale. = T) # the function princomp() could also have been used
#These functions produce these outputs 
#prcomp()       princomp()          Description
# sdev          sdev                the standard deviations of the principal components
# rotation      loadings            the matrix of variable loadings (columns are eigenvectors)
# center        center              the variable means (means that were substracted)
# scale         scale               the variable standard deviations (the scaling applied to each variable )
# x             scores              The coordinates of the individuals (observations) on the principal components


#Obtain the proportion of variation on each PC 
summary(mer.pca)
# Importance of components:
#                           PC1    PC2    PC3    PC4    PC5
# Standard deviation     1.2216 1.1044 0.9490 0.8709 0.7930
# Proportion of Variance 0.2985 0.2440 0.1801 0.1517 0.1258
# Cumulative Proportion  0.2985 0.5424 0.7225 0.8742 1.0000




#Coordinates exported
write.csv(mer.pca[["x"]], "cord.csv")
#Then manipulated in Micosoft excel to assign each row its relative document type, uses the same order as data in sum_data$wrd_list and sum_data$Document_Type

#re-import coordinates
cord <- read.csv("cord.csv", header = T)
str(cord)
# 'data.frame':	110 obs. of  7 variables:
# $ wrd_list     : Factor w/ 110 levels "rp1","rp10","rp11",..: 91 102 104 105 106 107 108 109 110 92 ...
# $ Document_Type: Factor w/ 3 levels "Report","Tweet",..: 3 3 3 3 3 3 3 3 3 3 ...
# $ PC1          : num  0.0342 0.1101 2.8385 0.0643 -0.856 ...
# $ PC2          : num  -1.152 0.274 -0.513 -1.799 1.212 ...
# $ PC3          : num  0.1238 -0.4354 0.0863 -1.0365 0.5785 ...
# $ PC4          : num  0.143 0.0262 0.9934 3.3676 -0.6097 ...
# $ PC5          : num  -1.3022 0.0296 -1.678 1.6935 0.1843 ...

#individual document types extracted for ease of normality testing
rp <- subset(cord, Document_Type=="Report")
wb <- subset(cord, Document_Type=="Website")
tw <- subset(cord, Document_Type=="Tweet")

#Normality tested on each PC
#Changed after each run to check PC2 and PC3
shapiro.test(rp$PC1) 
shapiro.test(wb$PC1)
shapiro.test(tw$PC1)


# Statistics ####

#MANOVA performed on first 3 PC's
cord_man <- manova(cbind(PC1, PC2, PC3) ~ Document_Type, data = cord)
summary(cord_man)
#                 Df  Pillai approx F num Df den Df    Pr(>F)    
# Document_Type   2 0.68782   18.521      6    212 < 2.2e-16 ***
# Residuals     107                                             

#ANOVA of PC1 and PC2 with post hoc Tukey HSD used to identify groupings
cord.aov <- aov(PC1 ~ Document_Type, data = cord)
summary(cord.aov)
#                 Df Sum Sq Mean Sq F value Pr(>F)    
# Document_Type   2  85.65   42.82    59.5 <2e-16 ***
# Residuals     107  77.01    0.72                  
TukeyHSD(cord.aov)
# $Document_Type
#                   diff         lwr       upr     p adj
# Tweet-Report   -2.3456206 -2.85686212 -1.834379 0.0000000
# Website-Report -1.7627098 -2.40033999 -1.125080 0.0000000
# Website-Tweet   0.5829108  0.07166928  1.094152 0.0212238

cord_2.aov <- aov(PC2 ~ Document_Type, data = cord)
summary(cord_2.aov)
#                 Df Sum Sq Mean Sq F value  Pr(>F)    
# Document_Type   2  18.03   9.017   8.396 0.00041 ***
# Residuals     107 114.92   1.074   
TukeyHSD(cord_2.aov)
# $Document_Type
#                   diff        lwr        upr     p adj
# Tweet-Report    0.1278520 -0.4966684  0.7523723 0.8778287
# Website-Report -0.9429487 -1.7218625 -0.1640350 0.0133274
# Website-Tweet  -1.0708007 -1.6953211 -0.4462804 0.0002594


#ANOVA's on each word word list
bio.aov <- aov(bio_wrds ~ Document_Type, data = sum_data)
summary(bio.aov)
#               Df   Sum Sq   Mean Sq F value   Pr(>F)    
# Document_Type   2 0.003677 0.0018387   24.97 1.26e-09 ***
# Residuals     107 0.007879 0.0000736                     
TukeyHSD(bio.aov)
# $Document_Type
#                   diff          lwr          upr     p adj
# Tweet-Report   -0.014834968 -0.020006189 -0.009663746 0.0000000
# Website-Report -0.007598624 -0.014048271 -0.001148978 0.0165616
# Website-Tweet   0.007236343  0.002065122  0.012407565 0.0034354

negative.aov <- aov(negative_wrds ~ Document_Type, data = sum_data)
summary(negative.aov)
#                Df   Sum Sq   Mean Sq F value Pr(>F)  
# Document_Type   2 0.000398 1.988e-04    2.85 0.0623 .
# Residuals     107 0.007465 6.976e-05  
TukeyHSD(negative.aov)
# $Document_Type
#                   diff           lwr         upr     p adj
# Tweet-Report    0.004808459 -0.0002249143 0.009841832 0.0643898
# Website-Report  0.002216531 -0.0040611882 0.008494251 0.6795748
# Website-Tweet  -0.002591928 -0.0076253011 0.002441446 0.4417430

positive.aov <- aov(positive_wrds ~ Document_Type, data = sum_data)
summary(positive.aov)
#                Df  Sum Sq   Mean Sq F value   Pr(>F)    
# Document_Type   2 0.00481 0.0024049   20.72 2.47e-08 ***
# Residuals     107 0.01242 0.0001161  
TukeyHSD(positive.aov)
# $Document_Type
#                 diff         lwr        upr     p adj
# Tweet-Report   0.013466439 0.006974572 0.01995831 0.0000090
# Website-Report 0.021498281 0.013401501 0.02959506 0.0000000
# Website-Tweet  0.008031843 0.001539976 0.01452371 0.0111119

formal.aov <- aov(formal_wrds ~ Document_Type, data = sum_data)
summary(formal.aov)
#                Df    Sum Sq   Mean Sq F value  Pr(>F)    
# Document_Type   2 0.0001052 5.262e-05    25.6 8.2e-10 ***
# Residuals     107 0.0002199 2.060e-06   
TukeyHSD(formal.aov)
# $Document_Type
#                     diff           lwr           upr     p adj
# Tweet-Report   -0.002517064 -0.0033809833 -0.0016531451 0.0000000
# Website-Report -0.001318732 -0.0023962288 -0.0002412359 0.0121758
# Website-Tweet   0.001198332  0.0003344128  0.0020622510 0.0037690

economic.aov <- aov(economic_wrds ~ Document_Type, data = sum_data)
summary(economic.aov)
#                Df    Sum Sq   Mean Sq F value Pr(>F)  
# Document_Type   2 0.0001382 6.912e-05   4.796 0.0101 *
# Residuals     107 0.0015420 1.441e-05  
TukeyHSD(economic.aov)
# $Document_Type
#                     diff           lwr         upr     p adj
# Tweet-Report   0.0002166101 -0.0020710515 0.002504272 0.9724735
# Website-Report 0.0030673245  0.0002141092 0.005920540 0.0319790
# Website-Tweet  0.0028507144  0.0005630527 0.005138376 0.0104486


# Graphs ####

#PCA biplot produced,  displayes loadings and individuals
fviz_pca_biplot(mer.pca, geom = "point", pointshape = 21, 
                pointsize = 2, 
                fill.ind = sum_data$Document_Type, 
                col.ind = "black",
                palette = "jco", 
                addEllipses = TRUE,
                ellipses.type = "convex",
                label = "var",
                col.var = "black",
                repel = TRUE,
                xlab = "PC1 (29.9%)", ylab = "PC2 (24.4%)",  #proportion of varience as a percentage
                legend.title = "Document",
                ggtheme = theme_classic2()) +
  ggtitle("") +
  theme(plot.title = element_text(hjust = 0.5))

#Boxplots of PC1 and PC2
par(mfrow = c(1,2))
boxplot(cord$PC1 ~ cord$Document_Type, xlab = NA, ylab = "PC1", col = c("gray56", "gray82", "white"))
boxplot(cord$PC2 ~ cord$Document_Type, xlab = NA, ylab = "PC2", col = c("white", "white", "gray56"))



#Boxplots of each word list against document type
#Results form Tukey HSD's used for shading
par(mfrow = c(2,3))
boxplot(sum_data$bio_wrds ~ sum_data$Document_Type, xlab = NA, ylab = NA, col = c("gray56", "gray82", "white")) 
title("Biological")
boxplot(sum_data$negative_wrds ~ sum_data$Document_Type, xlab = NA, ylab = NA)
title("Negative")
boxplot(sum_data$positive_wrds ~ sum_data$Document_Type, xlab = NA, ylab = NA, col = c("gray56", "gray82", "white"))
title("Positive")
boxplot(sum_data$formal_wrds ~ sum_data$Document_Type, xlab = NA, ylab = NA, col = c("gray56", "gray82", "white"))
title("Formal")
boxplot(sum_data$economic_wrds ~ sum_data$Document_Type, xlab = NA, ylab = NA, col = c("white", "white", "gray56"))
title("Economic")
