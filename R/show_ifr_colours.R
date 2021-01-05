#' @title Display the IFR colour palette
#'
#' @description This function allows the user to view the colours and corresponding hex values used
#' within \code{\link{scale_colour_ifr}}.
#' @details This function can be used to display IFR colours and select individual colours for custom plots.
#' For example, when adding custom lines to a plot, IFR red (#a40c01) can be used instead of "red".
#' @examples
#' show_ifr_colours() +
#' @export
show_ifr_colours <- function() {

  print(data.frame(colour_description = c("dark blue", "light grey", "dark red", "light blue", "dark grey", "light red"),
                   hex = c("#104692","#A8AABC","#a40c01","#76a9f0","#747687","#fd5c50")))

  fakeDat <- data.frame(xdat = c(1, 2, 3, 4, 5, 6),
                        yday = rep(1, 6))

  ggplot2::ggplot(fakeDat, ggplot2::aes(as.factor(xdat), fill = as.factor(xdat))) +
    ggplot2::geom_bar() +
    scale_fill_ifr() +
    ggplot2::xlab("") + ggplot2::ylab("") +
    theme_ifr() +
    ggplot2::theme(legend.position = "none",
                   axis.text.y = ggplot2::element_blank(),
                   axis.ticks.y = ggplot2::element_blank())

}
