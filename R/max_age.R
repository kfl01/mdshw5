#' Return the player with the highest points in a given year
#'
#' @param yyyy the year of interest
#' @return the player with the highest age; in the case of a tie, use
#' alphabetical order (ascending) based on the first name
#' @examples
#' max_age(2004)

max_age <- function(yyyy) {
    library(tidyverse)
    nba %>%
        filter(Year == yyyy) %>%
        select(Year, Player, Age) %>%
        arrange(desc(Age)) %>%
        arrange(desc(Age), Player) %>%
        head(n = 1)
}


