#' Return the player with the highest points in a given year
#'
#' @param yyyy the year of interest
#' @return a correlation matrix of all numerical variables for a user-provided
#' year in the nba dataset
#' @examples
#' max_age(2004)


cors <- function(yyyy){
    library(tidyverse)
    numeric_data <- nba %>%
        filter(Year == yyyy) %>%
        keep(is.numeric)
    print(cor(numeric_data))
}
