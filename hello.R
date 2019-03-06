# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

max_PTS <- function(yyyy) {
    d0 %>%               # so how to get nba data in here
        filter(Year == yyyy) %>%
        select(Year, Player, PTS) %>%
        arrange(desc(PTS)) %>%
        head(n = 1)
}
