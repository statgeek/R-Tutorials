#This is an example of how to create row numbers for a data set 
#or row numbers for each group of data
#
#Author: F. Khurshed
#Date: 2019-07-17

library(tidyverse)

################################################################
# Objective 1: Create a row number for each row in the data set
################################################################

mpgRowNum <- mpg %>% 
  mutate(rowNum = row_number())



################################################################
# Objective 2: Create a group number for each manufacturer
################################################################

mpgGroupNbr <- mpg %>%
  arrange(manufacturer) %>%
  group_by(manufacturer) %>% 
  mutate(groupNbr = group_indices()*5)

#check coding
mpgGroupNbr %>% 
  group_by(manufacturer) %>%
  summarize(max = max(groupNbr), min = min(groupNbr))

