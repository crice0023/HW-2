getwd()
setwd("C:/Users/ricecakes/Desktop/Git1")
getwd()

# Load the dplyr package
library(dplyr)

# Assuming ZA7500_v5_0_0_dta is already loaded into your R session
# Create df1 with selected columns
df1 <-
  select(ZA7500_v5_0_0_dta, v72, v80, age, v225, c_abrv, v243_ISCED_1)


country_names <-
  c(
    AL = "Albania",
    AM = "Armenia",
    AT = "Austria",
    AZ = "Azerbaijan",
    BA = "Bosnia and Herzegovina",
    BG = "Bulgaria",
    BY = "Belarus",
    CH = "Switzerland",
    CZ = "Czechia",
    DE = "Germany",
    DK = "Denmark",
    EE = "Estonia",
    ES = "Spain",
    FI = "Finland",
    FR = "France",
    GB = "Great Britain",
    GE = "Georgia",
    HR = "Croatia",
    HU = "Hungary",
    IS = "Iceland",
    IT = "Italy",
    LT = "Lithuania",
    LV = "Latvia",
    ME = "Montenegro",
    MK = "North Macedonia",
    NL = "Netherlands",
    NO = "Norway",
    PL = "Poland",
    PT = "Portugal",
    RO = "Romania",
    RS = "Serbia",
    RU = "Russia",
    SE = "Sweden",
    UA = "Ukraine"
  )



df1c <- df1 %>%
  mutate(country = country_names[c_abrv])


df1c <- df1c %>%
  rename(country = c_abrv)


age_descriptions <- c(
  `-10` = "multiple answers Mail",
  `-9` = "no follow-up",
  `-8` = "follow-up non response",
  `-5` = "other missing",
  `-4` = "item not included",
  `-3` = "not applicable",
  `-2` = "no answer",
  `-1` = "dont know",
  `82` = "82 and older"
)


df1c <- df1c %>%
  mutate(age = ifelse(
    as.character(age) %in% names(age_descriptions),
    age_descriptions[as.character(age)],
    as.character(age)
  ))

v243_ISCED_1_descriptions <- c(
  `-9` = "no follow-up",
  `-8` = "follow-up non response",
  `-5` = "other missing",
  `-4` = "item not included",
  `-3` = "not applicable",
  `-2` = "no answer",
  `-1` = "dont know",
  `0` = "Less than primary",
  `1` = "Primary",
  `2` = "Lower secondary",
  `3` = "Upper secondary",
  `4` = "Post-secondary non tertiary",
  `5` = "Short-cycle tertiary",
  `6` = "Bachelor or equivalent",
  `7` = "Master or equivalent",
  `8` = "Doctoral or equivalent",
  `66` = "other"
)



df1c <- df1c %>%
  mutate(Education = ifelse(
    as.character(v243_ISCED_1) %in% names(v243_ISCED_1_descriptions),
    v243_ISCED_1_descriptions[as.character(v243_ISCED_1)],
    as.character(v243_ISCED_1)
  )) %>%
  select(-v243_ISCED_1)


df1c <- df1c %>%
  rename(education = Education)


respondent_sex_descriptions <- c(
  `-10` = "multiple answers Mail",
  `-9` = "no follow-up",
  `-8` = "follow-up non response",
  `-5` = "other missing",
  `-4` = "item not included",
  `-3` = "not applicable",
  `-2` = "no answer",
  `-1` = "dont know",
  `1` = "male",
  `2` = "female"
)



df1c <- df1c %>%
  mutate(
    respondent_sex = ifelse(
      as.character(v225) %in% names(respondent_sex_descriptions),
      respondent_sex_descriptions[as.character(v225)],
      as.character(v225)
    )
  ) %>%
  select(-v225) # Optionally, remove the original v225 column

jobs_are_scarce_descriptions <- c(
  `-10` = "multiple answers Mail",
  `-9` = "no follow-up",
  `-8` = "follow-up non response",
  `-5` = "other missing",
  `-4` = "item not included",
  `-3` = "not applicable",
  `-2` = "no answer",
  `-1` = "dont know",
  `1` = "agree strongly",
  `2` = "agree",
  `3` = "neither agree nor disagree",
  `4` = "disagree",
  `5` = "disagree strongly"
)


df1c <- df1c %>%
  mutate(
    jobs_are_scarce = ifelse(
      as.character(v80) %in% names(jobs_are_scarce_descriptions),
      jobs_are_scarce_descriptions[as.character(v80)],
      as.character(v80)
    )
  ) %>%
  select(-v80) # Remove the original v80 column


child_suffers_descriptions <- c(
  `-10` = "multiple answers Mail",
  `-9` = "no follow-up",
  `-8` = "follow-up non response",
  `-5` = "other missing",
  `-4` = "item not included",
  `-3` = "not applicable",
  `-2` = "no answer",
  `-1` = "dont know",
  `1` = "agree strongly",
  `2` = "agree",
  `3` = "disagree",
  `4` = "disagree strongly"
)



df1c <- df1c %>%
  mutate(
    child_suffers = ifelse(
      as.character(v72) %in% names(child_suffers_descriptions),
      child_suffers_descriptions[as.character(v72)],
      as.character(v72)
    )
  ) %>%
  select(-v72) # Optionally, remove the original v72 column if no longer needed

#save.image(file = "my_workspace.RData")

#(df1c, file = "C:/Users/ricecakes/Desktop/Git1/Git2/df1c.RData")


#######  rearranged and dataset ######## might clean things further ####

library(dplyr)
library(knitr)

df1c <- df1c %>%
  mutate(respondent_sex = case_when(
    respondent_sex %in% c(
      "multiple answers Mail",
      "no follow-up",
      "follow-up non response",
      "other missing",
      "item not included",
      "not applicable",
      "no answer",
      "dont know"
    ) ~ "unknown",
    TRUE ~ as.character(respondent_sex)
  ))

# Calculate frequency
sex_freq <- table(df1c$respondent_sex)

# Calculate percentage
sex_percentage <- prop.table(sex_freq) * 100

# Combine into a data frame
sex_table <- data.frame(
  Sex = names(sex_freq),
  Frequency = as.integer(sex_freq),
  Percentage = round(sex_percentage, 2)
)

kable(
  sex_table,
  format = "simple",
  col.names = c("Sex", "Frequency", "Percentage (%)")
)

# Assuming df1c$respondent_sex has been properly modified to contain "male", "female", and "unknown" as categories
sex_freq <-
  table(df1c$respondent_sex) # Frequency table for respondent_sex

# Calculate percentages
sex_percentage <- prop.table(sex_freq) * 100

# Combine into a data frame
sex_table <- data.frame(
  Sex = names(sex_freq),
  Frequency = as.numeric(sex_freq),
  `Percentage (%)` = round(sex_percentage, 2)
)

# Now, use kable to display the table
kable(sex_table, format = "simple")



# Frequency table for 'country'
country_frequency <- table(df1c$country)
country_frequency <- as.data.frame(country_frequency)
colnames(country_frequency) <- c("Country", "Frequency")


# Assuming country_frequency data frame is already created as described
kable(
  country_frequency,
  format = "simple",
  col.names = c("Country", "Frequency")
)



# education Frequency Table

education_frequency <- table(df1c$education)
colnames(education_df) <- c("Education", "Frequency")

# Add a percentage column
education_df$Percentage <-
  (education_df$Frequency / sum(education_df$Frequency)) * 100

# Round the percentages for better readability
education_df$Percentage <- round(education_df$Percentage, 2)


# Display the table using knitr::kable
knitr::kable(
  education_df,
  format = "simple",
  col.names = c("Education", "Frequency", "Percentage (%)")
)

# Child Suffers Frequency Table
child_suffers_frequency <- table(df1c$child_suffers)
child_suffers_df <- as.data.frame(child_suffers_frequency)
colnames(child_suffers_df) <- c("Child_Suffers", "Frequency")

# Add a percentage column
child_suffers_df$Percentage <-
  (child_suffers_df$Frequency / sum(child_suffers_df$Frequency)) * 100

# Round the percentages for better readability
child_suffers_df$Percentage <- round(child_suffers_df$Percentage, 2)


knitr::kable(
  child_suffers_df,
  format = "simple",
  col.names = c("Child Suffers", "Frequency", "Percentage (%)")
)

# Jobs Are Scarce Frequency Table
jobs_are_scarce_frequency <- table(df1c$jobs_are_scarce)
jobs_are_scarce_df <- as.data.frame(jobs_are_scarce_frequency)
colnames(jobs_are_scarce_df) <- c("Jobs_Are_Scarce", "Frequency")

# Add a percentage column
jobs_are_scarce_df$Percentage <-
  (jobs_are_scarce_df$Frequency / sum(jobs_are_scarce_df$Frequency)) * 100

# Round the percentages for better readability
jobs_are_scarce_df$Percentage <-
  round(jobs_are_scarce_df$Percentage, 2)


knitr::kable(
  jobs_are_scarce_df,
  format = "simple",
  col.names = c("Jobs_Are_Scarce", "Frequency", "Percentage (%)")
)
#########  Combine categorical variable tables #############################

library(dplyr)
library(tidyr)
library(purrr)
library(knitr)

# Function to calculate frequencies and percentages for a given variable
calculate_frequencies <- function(data, var_name) {
  data %>%
    count(!!sym(var_name)) %>%
    rename(Category = !!sym(var_name)) %>%
    mutate(Variable = var_name,
           Percentage = n / sum(n) * 100) %>%
    select(Variable, Category, n, Percentage)
}

# List of categorical variables
categorical_vars <-
  c("country", "education", "child_suffers", "jobs_are_scarce")

# Calculate frequencies and percentages for each variable and bind rows together
categorical_summary <-
  map_dfr(categorical_vars, ~ calculate_frequencies(df1c, .x))

# Create a combined table with knitr::kable
kable(
  categorical_summary,
  format = "html",
  col.names = c("Variable", "Category", "Frequency", "Percentage")
) %>%
  kable_styling()

# install.packages("tinytex")
# library(tinytex)
# install.packages("LaTeX")
# library("LaTeX")
# install.packages("knitr")
# library(knitr)
# install.packages("rmarkdown")
# library(rmarkdown)
# install.packages("kableExtra")
# library(kableExtra)
# install.packages("latexpdf")
# library(latexpdf)
# install.packages("tinytex")
# library(tinytex)
# install.packages("purrr")
# library(purrr)
# getwd()
##################  Continuous Descriptives Age ##########################
library(dplyr)


df1c <- df1c %>%
  mutate(age = ifelse(age >= 82, 82, age))

# replace any age values of 82 and older with just 82, keeping the age column numeric.
# make non numerical data in age variable NA
library(dplyr)

df1c <- df1c %>%
  mutate(age = as.numeric(age),  # Attempt to convert age to numeric
         age = ifelse(is.na(age), NA, age))  # Non-numeric become NA


df1c %>%
  summarise(
    Mean = mean(age, na.rm = TRUE),
    SD = sd(age, na.rm = TRUE),
    Min = min(age, na.rm = TRUE),
    `25% Quantile` = quantile(age, 0.25, na.rm = TRUE),
    Median = median(age, na.rm = TRUE),
    `75% Quantile` = quantile(age, 0.75, na.rm = TRUE),
    Max = max(age, na.rm = TRUE)
  ) %>%
  knitr::kable()

unique(df1c$age)  # check for unique ages, no NAs in results confirmed

#####  Plot Section ##############################################
library(dplyr)
library(ggplot2)

# Assuming df1c has been loaded and prepared
df1c <- df1c %>%
  mutate(jobs_are_scarce = as.factor(jobs_are_scarce))

ggplot(df1c, aes(x = jobs_are_scarce, y = age)) +
  geom_boxplot() +
  labs(title = "Age Distribution by Jobs Are Scarce Response",
       x = "Jobs Are Scarce Response",
       y = "Age") +
  theme_minimal()

ggplot(df1c, aes(x = jobs_are_scarce, y = age)) +
  geom_violin(trim = FALSE) +
  geom_boxplot(width = 0.1, fill = "white") +  # Adding a narrow boxplot inside for median/quartiles
  labs(title = "Age Distribution by Jobs Are Scarce Response",
       x = "Jobs Are Scarce Response",
       y = "Age") +
  theme_minimal()

# install.packages("stargazer")
# library(stargazer)
#
# if (!requireNamespace("tinytex", quietly = TRUE))
#   install.packages("tinytex")
# tinytex::install_tinytex()
# library(tinytex)
# tinytex::tlmgr_update()
# tinytex::tlmgr_install("tabu")
# tinytex::tlmgr_update()
# tinytex::tlmgr_install("threeparttable")
# tinytex::parse_packages()
# options(tinytex.verbose = TRUE)
# tinytex::tlmgr_install("threeparttablex")
# tinytex::reinstall_tinytex()
#
# tinytex::tlmgr_install(c("makecell"))
#
# df1c <- df1c %>%
#   mutate(
#     age_squared = age ^ 2,
#     respondent_sex = as.factor(respondent_sex),
#     education = as.factor(education)
#   )
#
# model1 <-
#   lm(jobs_are_scarce ~ age + age_squared + respondent_sex + education,
#      data = df1c)
# model2 <-
#   lm(child_suffers ~ age + age_squared + respondent_sex + education,
#      data = df1c)
#
# stargazer(
#   model1,
#   model2,
#   type = "text",
#   title = "Regression Models Results",
#   align = TRUE,
#   header = FALSE,
#   model.numbers = FALSE,
#   digits = 3,
#   # Adjust number of decimal places, if desired
#   p.auto = TRUE,
#   # Ensure automatic p-value significance levels are used
#   signif.codes = TRUE
# )  # Ensure significance codes are shown
# summary(model1)
# summary(model2)
# Ensure df1c is your source dataframe
library(dplyr)

# Creating df2c from df1c
df2c <- df1c

# Explicitly converting 'child_suffers' character labels to their numeric values
df2c$child_suffers_numeric <- case_when(
  df2c$child_suffers == "multiple answers Mail" ~ -10,
  df2c$child_suffers == "no follow-up" ~ -9,
  df2c$child_suffers == "follow-up non response" ~ -8,
  df2c$child_suffers == "other missing" ~ -5,
  df2c$child_suffers == "item not included" ~ -4,
  df2c$child_suffers == "not applicable" ~ -3,
  df2c$child_suffers == "no answer" ~ -2,
  df2c$child_suffers == "dont know" ~ -1,
  df2c$child_suffers == "agree strongly" ~ 1,
  df2c$child_suffers == "agree" ~ 2,
  df2c$child_suffers == "disagree" ~ 3,
  df2c$child_suffers == "disagree strongly" ~ 4,
  TRUE ~ NA_real_ # Assign NA to any unmatched condition
)

# Verify the transformation
table(df2c$child_suffers_numeric, useNA = "ifany")


# Explicitly converting 'jobs_are_scarce' character labels to their numeric values
df2c$jobs_are_scarce_numeric <- case_when(
  df2c$jobs_are_scarce == "multiple answers Mail" ~ -10,
  df2c$jobs_are_scarce == "no follow-up" ~ -9,
  df2c$jobs_are_scarce == "follow-up non response" ~ -8,
  df2c$jobs_are_scarce == "other missing" ~ -5,
  df2c$jobs_are_scarce == "item not included" ~ -4,
  df2c$jobs_are_scarce == "not applicable" ~ -3,
  df2c$jobs_are_scarce == "no answer" ~ -2,
  df2c$jobs_are_scarce == "dont know" ~ -1,
  df2c$jobs_are_scarce == "agree strongly" ~ 1,
  df2c$jobs_are_scarce == "agree" ~ 2,
  df2c$jobs_are_scarce == "neither agree nor disagree" ~ 3,
  df2c$jobs_are_scarce == "disagree" ~ 4,
  df2c$jobs_are_scarce == "disagree strongly" ~ 5,
  TRUE ~ NA_real_ # Assign NA to any unmatched condition
)

# Verify the transformation
table(df2c$jobs_are_scarce_numeric, useNA = "ifany")

save(df2c, file = "C:/Users/ricecakes/Desktop/Git1/HW-2/Rcode/df2c.RData")

###############  Loop function for Country #################################

print(countries)
# Assuming 'countries' is a vector of country names
countries <-
  c(
    "Albania",
    "Armenia",
    "Austria",
    "Azerbaijan",
    "Bosnia and Herzegovina",
    "Bulgaria",
    "Belarus",
    "Switzerland",
    "Czechia",
    "Germany",
    "Denmark",
    "Estonia",
    "Spain",
    "Finland",
    "France",
    "Great Britain",
    "Georgia",
    "Croatia",
    "Hungary",
    "Iceland",
    "Italy",
    "Lithuania",
    "Latvia",
    "Montenegro",
    "North Macedonia",
    "Netherlands",
    "Norway",
    "Poland",
    "Portugal",
    "Romania",
    "Serbia",
    "Russia",
    "Sweden",
    "Ukraine"
    
  ) # Example countries

# Assuming df1c has already been loaded to get the list of unique countries
countries <- unique(df1c$country)

template_path <-
  "C:/Users/ricecakes/Desktop/Git1/HW-2/Rmarkdown/Country_Level_Automated_Report.Rmd"

library(rmarkdown)
for (country in countries) {
  render(
    input = template_path,
    output_file = paste0("report_", country, ".html"),
    params = list(country = country)
  )
}

# Assuming df2c is your dataframe
save(country_specific_df2c, file = "C:/Users/ricecakes/Desktop/Git1/HW-2/Rcode/country_specific_df2c.RData")
row.names(coef_summary_jobs)

df3c <- df2c
df3c$child_suffers_numeric[df3c$child_suffers_numeric < 0] <- 0
df3c$jobs_are_scarce_numeric[df3c$jobs_are_scarce_numeric < 0] <- 0


country_specific_df2c$respondent_sex <-
  relevel(country_specific_df2c$respondent_sex, ref = "male")

country_specific_df2c$respondent_sex <-
  relevel(country_specific_df2c$respondent_sex, ref = "male")
model_jobs <-
  lm(jobs_are_scarce_numeric ~ respondent_sex, data = country_specific_df2c)
# Assuming "female" is not the reference level and you have refitted the model
effect_jobs <- coef(summary(model_jobs))["respondent_sexfemale",]


# Fit the model
model_jobs <-
  lm(jobs_are_scarce_numeric ~ respondent_sex, data = country_specific_df2c)

# Print the names of the coefficients
print(names(coef(model_jobs)))
print(names(coef(model_child)))
print(names(coef(model1)))
save(df3c, file = "C:/Users/ricecakes/Desktop/Git1/HW-2/Rcode/df3c.RData")



library(dplyr)
library(stargazer)

# Assuming 'countries' is a vector of country names
countries <- unique(df3c$country)

for (country in countries) {
  # Filter data for the current country in the loop
  country_data <- df3c %>% filter(country == country)
  
  # Regression model for "child_suffers_numeric"
  model_child <-
    lm(child_suffers_numeric ~ respondent_sex, data = country_data)
  
  # Regression model for "jobs_are_scarce_numeric"
  model_jobs <-
    lm(jobs_are_scarce_numeric ~ respondent_sex, data = country_data)
  
  # Display the summary or create a table of the regression
  stargazer(
    model_child,
    model_jobs,
    type = "html",
    title = paste("Regression Models for", country),
    out.header = FALSE,
    model.names = FALSE,
    covariate.labels = c("Intercept", "Sex"),
    omit.stat = c("adj.r.sq", "f", "ser")
  )
  
}

# Assuming df3c is your dataset and it has a variable named "respondent_sex"
df3c <- df3c %>%
  filter(respondent_sex %in% c("male", "female"))

# Now, 'respondent_sex' only contains "male" and "female"
# You can proceed with your regression analysis

df3c <- df3c[!is.na(df3c$country),]
str(df3c)

country_specific_df3c <- df3c


model_child <-
  lm(child_suffers_numeric ~ respondent_sex, data = country_specific_df3c_filtered)
unique(df3c$respondent_sex)
table(df3c$respondent_sex)
table(df3c$country$respondent_sex)


country_sex_table <- df3c %>%
  count(country, respondent_sex) %>%
  spread(key = respondent_sex, value = n, fill = 0)

print(n = 34, country_sex_table)
# removing dont know and no answer from var respondent_sex
df3c_filtered <- df3c %>%
  filter(!respondent_sex %in% c("dont know", "no answer"))

lapply(df2c[c('age',
              'country',
              'respondent_sex',
              'child_suffers',
              'jobs_are_scarce',
              'education')], unique)
library(dplyr)
dplyr::ungroup(df3c)

sessionInfo()
######  Country Regression Attempt 100,000 ################################
# Assuming you have a vector of countries, some of which might be NA
countries <- c(
  "Albania",
  "Armenia",
  "Austria",
  "Azerbaijan",
  "Bosnia and Herzegovina",
  "Bulgaria",
  "Belarus",
  "Switzerland",
  "Czechia",
  "Germany",
  "Denmark",
  "Estonia",
  "Spain",
  "Finland",
  "France",
  "Great Britain",
  "Georgia",
  "Croatia",
  "Hungary",
  "Iceland",
  "Italy",
  "Lithuania",
  "Latvia",
  "Montenegro",
  "North Macedonia",
  "Netherlands",
  "Norway",
  "Poland",
  "Portugal",
  "Romania",
  "Serbia",
  "Russia",
  "Sweden",
  "Ukraine"
)

# Removing the NA value
countries_cleaned <- countries[!is.na(countries)]

# Print the cleaned vector
print(countries_cleaned)


# First, add "other" as a level to the respondent_sex factor
df3c$respondent_sex <-
  factor(df3c$respondent_sex, levels = c(levels(df3c$respondent_sex), "other"))

# Now, safely recode 'dont know' and 'no answer' into 'other'
df3c$respondent_sex[df3c$respondent_sex %in% c("dont know", "no answer")] <-
  "other"
df3c$respondent_sex <-
  factor(df3c$respondent_sex, levels = c(levels(df3c$respondent_sex), "other"))
df3c$respondent_sex[df3c$respondent_sex %in% c("dont know", "no answer")] <-
  "other"
df3c$respondent_sex_recode <- df3c$respondent_sex

# Assuming df3c is your data frame

# Linear regression with 'child_suffers_numeric' as the dependent variable
model1 <-
  lm(child_suffers_numeric ~ respondent_sex_recode, data = df3c)
summary(model1)

# Linear regression with 'jobs_are_scarce_numeric' as the dependent variable
model2 <-
  lm(jobs_are_scarce_numeric ~ respondent_sex_recode, data = df3c)
summary(model2)

# Initialize lists to store models
models_child_suffers <- list()
models_jobs_are_scarce <- list()

for (country in countries_cleaned) {
  # Subset data for the country
  subset_data <- subset(df3c, country == country)
  
  # Fit models
  model_child_suffers <-
    lm(child_suffers_numeric ~ respondent_sex_recode, data = subset_data)
  model_jobs_are_scarce <-
    lm(jobs_are_scarce_numeric ~ respondent_sex_recode, data = subset_data)
  
  # Store models in the list
  models_child_suffers[[country]] <- model_child_suffers
  models_jobs_are_scarce[[country]] <- model_jobs_are_scarce
}

# Generate dynamic interpretation for 'child_suffers_numeric'
coef_summary_child <- summary(model_child_suffers)$coefficients
sex_effect_child <-
  coef_summary_child["respondent_sex_recodemale",]  # Assuming binary coding with 'female' as reference
significant_child <-
  ifelse(
    sex_effect_child["Pr(>|t|)"] < 0.05,
    "statistically significant",
    "not statistically significant"
  )

interpretation_child <-
  paste(
    "For 'child_suffers_numeric' in",
    country,
    ", being female is associated with a ",
    ifelse(sex_effect_child["Estimate"] > 0, "positive", "negative"),
    " effect of",
    round(sex_effect_child["Estimate"], 2),
    ". This relationship is",
    significant_child,
    ".\n"
  )

# Generate dynamic interpretation for 'jobs_are_scarce_numeric'
coef_summary_jobs <- summary(model_jobs_are_scarce)$coefficients
sex_effect_jobs <- coef_summary_jobs["respondent_sex_recodemale",]
significant_jobs <-
  ifelse(sex_effect_jobs["Pr(>|t|)"] < 0.05,
         "statistically significant",
         "not statistically significant")

interpretation_jobs <-
  paste(
    "For 'jobs_are_scarce_numeric' in",
    country,
    ", being female is associated with a ",
    ifelse(sex_effect_jobs["Estimate"] > 0, "positive", "negative"),
    " effect of",
    round(sex_effect_jobs["Estimate"], 2),
    ". This relationship is",
    significant_jobs,
    ".\n"
  )

# Print the interpretations for each country
cat(interpretation_child)
cat(interpretation_jobs)

########################################

save(subset_data, file = "C:/Users/ricecakes/Desktop/Git1/HW-2/Rcode/subset_data.RData")

install.packages("broom")

library(broom)


# Before subsetting, grab all levels of the factor
all_sex_levels <- levels(df3c$respondent_sex_recode)

# After subsetting
subset_data <- df3c[df3c$country == specific_country,]

# Ensure 'respondent_sex_recode' retains all original levels
subset_data$respondent_sex_recode <-
  factor(subset_data$respondent_sex_recode, levels = all_sex_levels)
print(head(country_data))


install.packages("gtsummary")
library(gtsummary)

install.packages("broom.mixed")
library(broom.mixed)

install.packages("modelsummary")
library(modelsummary)

install.packages("sjPlot")
library(sjPlot)

if (!requireNamespace("gtsummary", quietly = TRUE))
  install.packages("gtsummary")
#######################  new attempt at country specific regression ###########
library(dplyr)
library(knitr)
library(broom)
library(dplyr)
library(stargazer)

load("C:/Users/ricecakes/Desktop/Git1/HW-2/Rcode/df2c.RData")

country_data <- df2c %>%
  filter(country == params$country)

df2c <- df2c %>%
  mutate(age_squared = age^2,
         respondent_sex = as.factor(respondent_sex),
         education = as.factor(education))

model1 <- lm(jobs_are_scarce_numeric ~ age + age_squared + respondent_sex + education, data = df2c)
model2 <- lm(child_suffers_numeric ~ age + age_squared + respondent_sex + education, data = df2c)

stargazer(model1, model2, type = "text", 
          title = "Regression Models Results",
          align = TRUE,
          header = FALSE,
          model.numbers = FALSE,
          digits = 3,  # Adjust number of decimal places, if desired
          p.auto = TRUE,  # Ensure automatic p-value significance levels are used
          signif.codes = TRUE)  # Ensure significance codes are shown


interpret_model <- function(model, dependent_variable) {
  coef_table <- broom::tidy(model)
  
  message <- paste("Regression analysis for", dependent_variable, "in", params$country, "reveals the following significant relationships (p < 0.05):\n")
  
  significant_coefs <- coef_table %>%
    filter(p.value < 0.05) %>%
    mutate(
      term = ifelse(term == "(Intercept)", "the intercept", term),
      direction = ifelse(estimate > 0, "positive", "negative"),
      significance = case_when(
        p.value < 0.001 ~ "***",
        p.value < 0.01 ~ "**",
        p.value < 0.05 ~ "*",
        TRUE ~ ""
      )
    )
  
  if (nrow(significant_coefs) == 0) {
    message <- paste(message, "No variables were found to have a statistically significant effect.")
  } else {
    detailed_messages <- vector("character", length = nrow(significant_coefs))
    for (i in 1:nrow(significant_coefs)) {
      row <- significant_coefs[i, ]
      detailed_messages[i] <- paste(row$term, "has a", row$direction, "effect (estimate:", round(row$estimate, 3), row$significance, ")")
    }
    message <- paste(message, paste(detailed_messages, collapse = "\n"), sep = "\n")
  }
  
  return(message)
}


message_for_model1 <- interpret_model(model1, "jobs_are_scarce_numeric")
message_for_model2 <- interpret_model(model2, "child_suffers_numeric")

cat(message_for_model1, "\n\n")
cat(message_for_model2)

