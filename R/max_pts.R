#' Return the player with the highest points in a given year
#'
#' @param yyyy the year of interest
#' @return the player and points with the highest number of points
#' @examples
#' max_pts(2004)



max_pts <- function(yyyy) {
    library(tidyverse)
    nba %>%
        filter(Year == yyyy) %>%
        select(Year, Player, PTS) %>%
        arrange(desc(PTS)) %>%
        head(n = 1)
}
