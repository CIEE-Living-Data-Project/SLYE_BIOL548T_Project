#Sadie Lye 
#LDP Project BIOL 548 
#September 15 2022 

#########################################################################
#This Script Seup the repository structure 
#########################################################################

getwd() #my working directory is setup because I started a project


#Creating Files with READ ME Files
#READ ME Files created using menus
dir.create("data/")
dir.create("scripts/")
dir.create("literature/")
dir.create("outputs/")
dir.create("figures/")

#make a subfolder
dir.create("data/metadata")
dir.create("data/invertebrate_density")
dir.create("data/invertebrate_classification")

#download data from URL

meta_url <- "https://ftp.maps.canada.ca/pub//nrcan_rncan/Forests_Foret/TLW/TLW_invertebrate_metaEN.csv"
class_url <- "https://ftp.maps.canada.ca/pub//nrcan_rncan/Forests_Foret/TLW/TLW_invertebrateClassification.csv"
dens_url <- "https://ftp.maps.canada.ca/pub//nrcan_rncan/Forests_Foret/TLW/TLW_invertebrateDensity.csv"

meta.dest.file <- "/Users/sadie/Documents/Masters/2022-2023/BIOL548/T/SLYE_BIOL548T_Project/data/metadata/NRCA_1995_2005_TLW_metadata.csv"
clas.dest.file <- "/Users/sadie/Documents/Masters/2022-2023/BIOL548/T/SLYE_BIOL548T_Project/data/invertebrate_classification/NRCA_1995_2005_TLW_invertclassification.csv"
dens.dest.file <- "/Users/sadie/Documents/Masters/2022-2023/BIOL548/T/SLYE_BIOL548T_Project/data/invertebrate_density/NRCA_1995_2005_TLW_invertdensity.csv"

download.file(url = meta_url, destfile = meta.dest.file)
download.file(url = class_url, destfile = clas.dest.file)
download.file(url = dens_url, destfile = dens.dest.file)

#Read The files 

library("tidyverse")

invert_meta <- read_csv("data/metadata/NRCA_1995_2005_TLW_metadata.csv") #there is a character that cannot be read by R
invert_class <- read_csv("data/invertebrate_classification/NRCA_1995_2005_TLW_invertclassification.csv")
invert_density <- read_csv("data/invertebrate_density/NRCA_1995_2005_TLW_invertdensity.csv")

#getting a .csl file for markdown ! using Ecology letters

library("rmarkdown")
#tinytex::install_tinytex()
library("tinytex")

csl: "ecology-letters.csl "

####this is for reference later, but I downloaded from Zotero and added to my directory

##Using Github and generating PAT
usethis::create_github_token()
gitcreds::gitcreds_set()
#PAT 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





