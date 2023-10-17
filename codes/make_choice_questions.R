library(tidyverse)
library(cbcTools)

profiles <- cbc_profiles(
    upfront      = c(100, 300, 500), # USD
    lv_2_charger = c('No', 'Yes'),
    discount     = c(10, 25, 50),    # percentage
    window       = c(0.5, 1, 2, 4),  # hrs
    guaranteed   = c(25, 50, 75)     # percentage
)

# Make a basic survey using the full factorial of all profiles
design <- cbc_design(
    profiles = profiles,
    n_resp   = 100,  # Number of respondents
    n_alts   = 2,    # Number of alternatives per question
    n_q      = 5     # Number of questions per respondent
)

head(design) # preview

# Save design
write_csv(design, file.path('cbc_questions'))