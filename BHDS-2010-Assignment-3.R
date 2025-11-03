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

TextMessages_long <- TextMessages %>%
  pivot_longer(
    cols = c(Baseline, Six_months),
    names_to = "Time",
    values_to = "Messages"
  )
#===============================================================================


barplot_d_by_Group_and_Time<-ggplot(TextMessages_long,aes(x = Time,
                                                  y = Messages, fill = Group))
barplot_d_by_Group_and_Time+ 
  stat_summary(fun.data = mean_cl_normal,geom = "bar", colour = "blue" ,
               fill="lightblue") +
  labs(title="Text Messages by Group and Time Period",
       x="Average Number of Text Messages",
       y="Time") +
  facet_wrap(.~Group, nrow = 1)


