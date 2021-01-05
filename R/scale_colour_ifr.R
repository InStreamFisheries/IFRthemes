#' @title Apply IFR colour palette to ggplot object with six colours or less
#'
#' @description This function is added to a ggplot object to apply a custom IFR colour palette.
#' @details A colour palette based on the IFR logo that can be applied to plots with siz colours or less.
#' For plots with siz to ten colours, use \code{\link{scale_colour_ifr10}}.
#' @examples
#' ggplot(mtcars, aes(as.factor(carb), fill = as.factor(carb))) +
#'   geom_bar() +
#'   scale_fill_ifr() +
#'   theme_ifr()
#' @export
scale_colour_ifr <- function(...) {
  ggplot2::discrete_scale("colour",
                          "ifr",
                          scales::manual_pal(values = ifr_colours()), ...)
}

scale_color_ifr <- scale_colour_ifr
