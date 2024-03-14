# Load necessary libraries
library(rmarkdown)
library(dplyr)

# Assuming df1c has been saved in a global environment file
load("C:/Users/ricecakes/Desktop/Git1/HW-2/Rcode/df1c.RData")

countries <- unique(df1c$country)

template_path <- "C:/Users/ricecakes/Desktop/Git1/HW-2/Rmarkdown/Country_Level_Automated_Report.Rmd"

for (country in countries) {
  render(input = template_path,
         output_file = paste0("report_", country, ".html"),
         params = list(country = country))
}





