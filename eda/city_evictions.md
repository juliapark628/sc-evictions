City evictions EDA
================
Julia Park
2020-01-30

  - [Most evictions](#most-evictions)

``` r
# Libraries
library(tidyverse)

# Parameters
file_evictions <- here::here("data/city_evictions.rds")

#===============================================================================

# Code
city_evictions <- read_rds(file_evictions)
```

## Most evictions

``` r
city_evictions %>% 
  arrange(desc(evictions))
```

    ## # A tibble: 397 x 4
    ##      GEOID  year city_name        evictions
    ##      <dbl> <dbl> <chr>                <dbl>
    ##  1 4550875  2016 North Charleston     3660.
    ##  2 4516000  2016 Columbia             2225.
    ##  3 4513330  2016 Charleston           1546.
    ##  4 4562395  2016 St. Andrews          1383.
    ##  5 4525810  2016 Florence             1097.
    ##  6 4519285  2016 Dentsville            769.
    ##  7 4549075  2016 Myrtle Beach          729.
    ##  8 4501360  2016 Anderson              642.
    ##  9 4532065  2016 Hanahan               529.
    ## 10 4529815  2016 Goose Creek           480.
    ## # … with 387 more rows

North Charleston has the most evictions.
