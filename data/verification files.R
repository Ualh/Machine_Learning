library(here)

#print(here)
setwd("/Users/admin/Desktop/A HEC/Master/Semestre 2/Machine Learning/Machine_Learning/data")

# Load the CSV file into a data frame
properties <- read.csv("properties.csv")

metrecarré <- read.csv("snb-data-plimoincha-fr-all-20240321_0900.csv")
# Assuming your data frame is named metrecarré
metrecarré <- metrecarré[-1, ]

split_data <- lapply(metrecarré, function(x) unlist(strsplit(as.character(x), ";")))

split_df <- do.call(rbind, split_data)





#install.packages("readxl")
library(readxl)

# Read the cpi file
cpi_data_excel <- read_excel("cpi.xlsx")
# Write the data to a CSV file
write.csv(cpi_data_excel, "cpi.csv", row.names = FALSE)
# Load the CSV file into a data frame
cpi <- read.csv("cpi.csv")



# Read the empty_dwellings file
empty_excel <- read_excel("empty_dwellings_by_canton_1999-2023.xlsx")
# Write the data to a CSV file
write.csv(empty_excel, "empty_dwellings.csv", row.names = FALSE)
# Load the CSV file into a data frame
empty_dwellings <- read.csv("empty_dwellings.csv")


