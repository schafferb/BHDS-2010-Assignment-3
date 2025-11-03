#setwd("D/Colleges/Brown University/BHDS 2010/Module 8/Assignment 3/BHDS-2010-Assignment-3")
TextMessages<-read.csv("TextMessages.csv")
head(TextMessages)

#First, we install the reshape package 

install.packages("reshape2")

#Load the package

library(reshape2)
library(ggplot2)
#===============================================================================

#Converting Data to Long Format:

TextMessages_long<- melt(TextMessages, id = c("Participant","Group"),
                         measured =c(Baseline,Six_months))

#===============================================================================


