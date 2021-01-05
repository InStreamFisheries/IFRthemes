#' @title Apply IFR theme to ggplot2 object
#'
#' @description This function is added to a ggplot object to apply a custom IFR style.
#' @param base_size Adjust the base size of plot text.
#' @details This custom theme adjusts the standard ggplot theme to create report-ready plots.
#' Font sizing is appropriate for a plot approximately 6" square, or similar.
#' For larger or smaller plots, use base_size to adjust the text size as necessary to create
#' aesthetic plots with readable text. All theme adjustments can be over-ridden with a subsequent theme()
#' call.
#' @examples
#' ggplot(mtcars, aes(mpg, disp)) +
#'   geom_point() +
#'   theme_ifr()
#' @export
theme_ifr <- function(base_size = 16) {

  ggplot2::theme_bw(base_size = base_size,
                    base_family = "sans") +
    ggplot2::theme(
      panel.background = ggplot2::element_blank(),
      legend.background = ggplot2::element_rect(fill = "transparent",
                                                colour = NA),
      legend.key = ggplot2::element_rect(fill = "transparent",
                                         colour = NA),
      legend.position = "right",
      legend.justification = c(1, 1),
      legend.title = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(size = rel(0.8)),
      axis.text = ggplot2::element_text(size = rel(0.8)),
      axis.title = ggplot2::element_text(size = rel(1)),
      strip.background = ggplot2::element_rect(fill = NA),
      strip.text = ggplot2::element_text(size = rel(1)),
      panel.grid.major = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank()
    )

}
