#' @title Apply IFR colour palette to ggplot object with seven to ten colours
#'
#' @description This function is added to a ggplot object to apply a custom IFR colour palette.
#' @details A colour-blind friend colour palette that can be applied to plots with seven to ten colours.
#' For plots with less than seven colours, use \code{\link{scale_fill_ifr}}.
#' @examples
#' ChickWeight %>%
#'   mutate(Chick = as.factor(Chick)) %>%
#'   group_by(Chick) %>%
#'   summarise(Mean = mean(weight),
#'             .groups = 'drop') %>%
#'   slice(1:10) %>%
#'   ggplot(., aes(x = Chick, y = Mean, fill = Chick)) +
#'   geom_col() +
#'   scale_fill_ifr10() +
#'   theme_ifr() +
#'   theme(legend.position = "none")
#' @export
scale_fill_ifr10 <- function(...) {
  ggplot2::discrete_scale("fill",
                          "ifr",
                          scales::manual_pal(values = ifr_colours10()), ...)

}
