#Created: September 22nd, 2022
#Owner: Sade Lye
# This Script details the data cleaning Process aka subsetting datasets such that
#they are able to be used for graph making 

#load packages
library("tidyverse")

#checkworking directory
getwd()

#read in data 

class <- read_csv("data/invertebrate_classification/NRCA_1995_2005_TLW_invertclassification.csv")

density <- read_csv("data/invertebrate_density/NRCA_1995_2005_TLW_invertdensity.csv")

#select just the relevant columns from classification

class_selected <- class %>% select("ID", "level" ,"count" , "count_percentoftotal") 

#create new folder within data folder for processed data

dir.create("data/processed/")

write_csv(class_selected, "data/processed/NRCA_1995_2005_TLW_invertclassification_cleaned.csv", )

#repeat with the invert density  data
#selected columns were randomly chosen just to demonstrate some cleaning activity 

density_selected <- density %>% select("year", "month", "Alloperla",  "Ameletus",         
                                        "Antocha" , "Baetis", "Ceratopogonidae", "Chelifera",
                                       "Chironomidae" , "Chloroperlidae","Chloroperlinae",  "Clinocera",
                                       "Dicranota", "Diptera", "Dixidae" , "Dolichopodidae" ) 

write_csv(density_selected, "data/processed/NRCA_1995_2005_TLW_invertdensity_cleaned.csv")

###########END OF SCRIPT ############
