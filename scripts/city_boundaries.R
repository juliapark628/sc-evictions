# Description:
# Creates a tibble with GEOID, city_name, and geometry from raw boundary data

# Author: Julia Park
# Version: 2020-01-30

# Libraries
library(tidyverse)
library(sf)

# Parameters
url_data <-
  "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.geojson"
file_out <- here::here("data/city_boundaries.rds")

#===============================================================================

url_data %>%
  sf::read_sf() %>%
  select(GEOID, city_name = n) %>%
  mutate(GEOID = as.double(GEOID)) %>%
  write_rds(file_out)
