## import the health data file downloaded from data.gov
libray(ddplyr)
library(ggvis)
hosp <-read.csv('healthsummary.csv')


## viewing the dataframe in a responsive manner, the view adjusts to the screen size

tbl_df(hosp)

## use the rstudio cheatsheet to extract and summarize

## calculating summary statistics for the different health conditions and seeing the barplot

hosp[,1] %>% summary % barplot

## arranging disease conditions by which ones were most common
hosp[,1] %>% summary %>% sort
