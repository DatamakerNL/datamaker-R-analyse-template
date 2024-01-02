# Analysis-Toolkit

# Goal: To load the basic functions required for analysis

# The current script creates a starting point to install and/or load the basic required packages

# The file assumes that a project is initiated (by opening the project file in the main directory)

# Package requirements ----------------------------------------------------

required_packages <- readLines("3. Requirements/required_packages.txt", warn = FALSE)

# Check if packages are installed
# If not, install packages
# If yes, load packages
lapply(required_packages, function(x) {
  if (!require(x, character.only = TRUE)) {
    install.packages(x, dependencies = TRUE)
    library(x, character.only = TRUE)
  } else {
    library(x, character.only = TRUE)
  }
})

