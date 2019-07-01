#' Oldest Player Function
#' This function get the oldest player of the input year, if multiple players found, return the one earned the most points
#' @param year Which is your year of interest? Range from 1950 to 2017.
#' @keywords age
#' @export
#' @examples
#' oldest_player()

oldest_player <- function(data, year){
                  sub <- filter(data, Year == year)
                  filter <- filter(sub, Age == max(Age, na.rm = TRUE))
                  filter(filter, PTS == max(PTS, na.rm = TRUE))}
