# Description:
# Combines the city boundaries data and evictions data into one tibble.

# Author: Julia Park
# Version: 2020-01-30

# Libraries
library(tidyverse)

# Parameters
file_out <- here::here("data/city_evictions_boundaries.rds")
file_boundaries <- here::here("data/city_boundaries.rds")
file_evictions <- here::here("data/city_evictions.rds")

#===============================================================================

city_boundaries <- read_rds(file_boundaries)
city_evictions <- read_rds(file_evictions)

city_boundaries %>%
  left_join(city_evictions, by = c("GEOID", "city_name")) %>%
  write_rds(file_out)
