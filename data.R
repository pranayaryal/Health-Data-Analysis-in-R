## import the health data file downloaded from data.gov
library(dplyr)
library(ggvis)
hosp <-read.csv('hospital.csv')


## viewing the dataframe in a responsive manner, the view adjusts to the screen size

tbl_df(hosp)

## use the rstudio cheatsheet to extract and summarize

## calculating summary statistics for the different health conditions and seeing the barplot

hosp[,1] %>% summary % barplot

## arranging disease conditions by which ones were most common
hosp[,1] %>% summary %>% sort %>% View

## Remove the dollar sign from the charges
gsub('\\$', '', hosp$Average.Covered.Charges)
