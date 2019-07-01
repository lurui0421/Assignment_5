#' Maximum Points Function
#' This function allows you to get the player earned the most points for a specific year.
#' @param year Which is your year of interest? Range from 1950 to 2017.
#' @keywords points
#' @export
#' @examples
#' max_pts()
max_pts <- function(data,year){
          sub <- dplyr::filter(data, Year == year)
          max <- dplyr::filter(sub, PTS == max(PTS, na.rm = TRUE))
          dplyr::select(max, Year, Player, PTS)}
