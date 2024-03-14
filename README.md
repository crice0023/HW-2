# HW-2
Chris Rice
3.13.24

## Project Description
According to the [[website](https://search.gesis.org/research_data/ZA7500#variables|exploredata-ZA7500_Varv72|0|variable_order|asc)]: The European Values Study is a large-scale, cross-national and longitudinal
survey research program on how Europeans think about family, work, religion, politics, and society. Repeated
every nine years in an increasing number of countries, the survey provides insights into the ideas, beliefs,
preferences, attitudes, values, and opinions of citizens all over Europe.
Beginning steps were to create an account with the aforementioned website in order to extract either the
SPSS or STATA file. In this case, we downloaded the STATA file in order to create an EVS 2017 analysis.
The original data set had hundreds of columns to choose from however, variables of interest were as follows:

1. Respondent’s age (continuous)
2. Respondent’s country (categorical)
3. Respondent’s education (categorical)
4. Respondent’s sex (categorical)
5. Respondent’s opinion on if jobs are scarce should national citizens have priority over immigrants (categorical)
6. Respondent’s opinion on if a child suffers when the mother is working (categorical)

Data was imported into RStudio, cleaned and turned into 3 dataframes cleaned and mutated into our working copies. No raw data was brought into GitHub, but it can be found if needed in the above [[website](https://search.gesis.org/research_data/ZA7500#variables|exploredata-ZA7500_Varv72|0|variable_order|asc)].
From this manipulated/cleaned dataset there were 3 main projects completed.

1. Created R and Rmd script to output a PDF **with code** for [[Statisticians](https://github.com/crice0023/HW-2/blob/main/Rmarkdown/Stat%20Copy/EVS_Statistician_Copy.pdf)] with the following:
   - `a.` Descriptive statistics (Continuous/Categorical)
   - `b.` 2 ggplots focusing on age against the 2 dependent vars (child_suffers and jobs_are_scarce)
   - `c.` Regression model using (child_suffers and jobs_are_scarce) against age, age^2, education, and respondent_sex variables.

2. Created R and Rmd script to output a PDF **without  code** for [[Policy Makers](https://github.com/crice0023/HW-2/blob/main/Rmarkdown/Policy%20Makers/EVS_Policy_Makers_Copy.pdf)] with the following:
   - `a.`  Descriptive statistics (Continuous/Categorical)
   - `b.`  2 ggplots focusing on age against the 2 dependent vars (child_suffers and jobs_are_scarce)
   - `c.`  Regression model using (child_suffers and jobs_are_scarce) against age, age^2, education, and respondent_sex variables.
  
3. Created R loop and Rmd script to output 33 country-specific [html files] with the following: 
   - `a.`  Descriptive statistics (Continuous/Categorical)
   - `b.`  2 ggplots focusing on sex against the 2 dependent vars (child_suffers_numeric and jobs_are_scarce_numeric)
   - `c.`  Regression model using (child_suffers_numeric and jobs_are_scarce_numeric) against respondent_sex variables. 
   
     
##  Repository Organization
The folder structure can be found here [https://github.com/crice0023/HW-2/tree/main].
The structure is as follows: 
1. R Code
    - `a.` df1c.RData (data set 1, clean)
    - `b.` df2c.RData (data set 2, clean)
    - `c.` df3c.Rdata (data set 3, clean)
    - `d.` HW-2.R  (R code used to clean data/manipulate data, and to create tables, charts, graphs, and regressions, etc.)
    - `e.` HW-2_Country_Loop.R  (Loop function to create the country-specific html products)
2. R Markdown
    - `a.` Country Specific HTML (houses 33 country-specific html files w/dynamic interpretation)
    - `b.` Policy Makers (houses PDF copy and RMD code)
    - `c.` Stat Copy (houses PDF copy and RMD code)
 
## Main Findings



## Session Info ##
R version 4.3.0 (2023-04-21 ucrt)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 10 x64 (build 19045)

Matrix products: default


locale:
[1] LC_COLLATE=English_United States.utf8 
[2] LC_CTYPE=C                            
[3] LC_MONETARY=English_United States.utf8
[4] LC_NUMERIC=C                          
[5] LC_TIME=English_United States.utf8    

time zone: America/New_York
tzcode source: internal

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods  
[7] base     

other attached packages:
 [1] stargazer_5.2.3  ggplot2_3.5.0    tidyr_1.3.1     
 [4] dplyr_1.1.4      purrr_1.0.2      tinytex_0.49    
 [7] latexpdf_0.1.8   kableExtra_1.4.0 rmarkdown_2.26  
[10] knitr_1.45      

loaded via a namespace (and not attached):
 [1] gtable_0.3.4       jsonlite_1.8.8     compiler_4.3.0    
 [4] highr_0.10         tidyselect_1.2.0   xml2_1.3.6        
 [7] stringr_1.5.1      jquerylib_0.1.4    systemfonts_1.0.5 
[10] scales_1.3.0       yaml_2.3.8         fastmap_1.1.1     
[13] R6_2.5.1           labeling_0.4.3     generics_0.1.3    
[16] tibble_3.2.1       munsell_0.5.0      svglite_2.1.3     
[19] RColorBrewer_1.1-3 bslib_0.6.1        pillar_1.9.0      
[22] rlang_1.1.3        utf8_1.2.4         cachem_1.0.8      
[25] stringi_1.8.3      xfun_0.42          sass_0.4.8        
[28] viridisLite_0.4.2  cli_3.6.2          withr_3.0.0       
[31] magrittr_2.0.3     grid_4.3.0         digest_0.6.34     
[34] rstudioapi_0.15.0  lifecycle_1.0.4    vctrs_0.6.5       
[37] evaluate_0.23      glue_1.7.0         farver_2.1.1      
[40] fansi_1.0.6        colorspace_2.1-0   tools_4.3.0       
[43] pkgconfig_2.0.3    htmltools_0.5.7  
