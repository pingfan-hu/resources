# This script is used to build functions in R package development.

rm(list = ls())
.rs.restartR()

devtools::load_all()

# Create the documentation for the package
devtools::document()

# Install the package
devtools::install(force = TRUE)

# Build the pkgdown site
pkgdown::build_site()

# Check package
devtools::check()

# Load the package and view the summary
library(surveydown)
help(package = 'surveydown')

# Install from github
# devtools::install_github('jhelvy/surveydown')
