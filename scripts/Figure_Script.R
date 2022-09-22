#Created: September 22nd, 2022
#Owner: Sade Lye
# This Script creates figures for the manuscript

#load packages
library("tidyverse")
library("ggplot2")
library("cowplot")

#set theme
theme_set(theme_cowplot ())

#load the data

class <- read_csv("data/processed/NRCA_1995_2005_TLW_invertclassification_cleaned.csv")

density <- read_csv("data/processed/NRCA_1995_2005_TLW_invertdensity_cleaned.csv")

#bar plot to show the percentage of the total at which level we have taxonomic information for

bar <- ggplot(data = class, aes (x = level, y = count_percentoftotal)) + geom_bar(stat = "identity")
bar

# Making a scatterplot for the manuscript

scatter <- ggplot(data = density, aes ( x= month, y = abundance, colour = species )) + geom_point() + facet_wrap(~year)
scatter

#Saving Plots
ggsave(path = "figures/",
       device = "png", filename = "classification", plot = bar)

ggsave(path = "figures/",
       device = "png", filename = "density", plot = bar)

########### End of Script ##################

