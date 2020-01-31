# Search path
VPATH = data data-raw eda reports scripts

# Processed data files
DATA = city_boundaries.rds city_evictions.rds city_evictions_boundaries.rds

# EDA studies
EDA = city_evictions.Rmd

# Reports
REPORTS =

# All targets
all : $(DATA) $(EDA) $(REPORTS)

# Data dependencies
city_evictions_boundaries.rds : city_boundaries.rds city_evictions.rds

# EDA study and report dependencies
city_evictions.Rmd = city_evictions.rds

# Pattern rules
%.rds : %.R
	Rscript $<
%.md : %.Rmd
	Rscript -e 'rmarkdown::render(input = "$<", output_options = list(html_preview = FALSE))'
