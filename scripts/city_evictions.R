# Description:
# Creates a tibble with GEOID, year, city_name, and number of evictions from
# evictions raw data.

# Author: Julia Park
# Version: 2020-01-30

# Libraries
library(tidyverse)
library(vroom)

# Parameters
url_data <- "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.csv"
file_out <- here::here("data/city_evictions.rds")

#===============================================================================

url_data %>%
  vroom(
    col_types =
      cols_only(
        GEOID = col_double(),
        year = col_double(),
        name = col_character(),
        evictions = col_double(),
      )
  ) %>%
  rename(city_name = name) %>%
  filter(year == 2016) %>%
  write_rds(file_out)
