## deja vu from earlier!

library("tidyverse")

## create a data frame of your installed packages
## hint: installed.packages() is the function you need

pkg <- data.frame(installed.packages())

# Kara suggested
pkgs <- as_tibble(installed.packages())

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

pkgfew <- pkg %>%
  dplyr::select(Package, LibPath, Version, Priority, Built)

#Look at my data to make sure it looks good.

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

library("here")
#write_csv(pkgfew, here("data", "installed-packages.csv"))

## YES overwrite the file that is there now (or delete it first)
## that's a old result from me (Jenny)
## it an example of what yours should look like and where it should go
