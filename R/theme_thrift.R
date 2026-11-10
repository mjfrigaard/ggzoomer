#' Thrift theme
#'
#' Thrifting (shopping at charity and secondhand shops) is the budget and
#' planet friendly way to build a wardrobe. The palette follows the
#' article's Red Cross and Oxfam shops and vintage clothing: charity red,
#' mustard, faded denim, corduroy brown, Oxfam green, and dusty rose.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to SignPainter when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Charity shop](https://en.wikipedia.org/wiki/Charity_shop) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Thrift") +
#'   theme_thrift(base_family = "sans", title_family = "sans")
theme_thrift <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("SignPainter", "SignPainter.ttc")) {
  cols <- thrift_cols
  marks <- thrift_marks
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      text = ggplot2::element_text(colour = cols[["text"]]),
      plot.background = ggplot2::element_rect(fill = cols[["background"]],
                                              colour = cols[["frame"]],
                                              linewidth = base_size / 2),
      plot.margin = ggplot2::margin(base_size, base_size, base_size, base_size),
      plot.title.position = "plot",
      plot.title = ggplot2::element_text(family = title_family, face = "bold",
                                         colour = cols[["title"]],
                                         size = ggplot2::rel(1.5)),
      plot.subtitle = ggplot2::element_text(colour = cols[["text"]],
                                            margin = ggplot2::margin(2, 0, 8, 0)),
      panel.background = ggplot2::element_rect(fill = cols[["panel"]]),
      panel.border = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = cols[["grid"]],
                                               linewidth = 0.4),
      panel.grid.minor = ggplot2::element_blank(),
      axis.text = ggplot2::element_text(colour = cols[["text"]]),
      axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = cols[["strip"]], colour = NA),
      strip.text = ggplot2::element_text(colour = cols[["striptext"]], face = "bold"),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_rect(fill = cols[["background"]], colour = NA),
      # discrete fills and colours
      palette.fill.discrete = marks,
      palette.colour.discrete = marks,
      # default marks
      geom = ggplot2::element_geom(ink = cols[["text"]],
                                   paper = cols[["panel"]],
                                   accent = cols[["accent"]],
                                   colour = cols[["outline"]],
                                   fill = cols[["fill"]],
                                   family = base_family)
    )
}

# Sampled from shelves of glassware and goodies in a thrift store
thrift_cols <- c(
  background = "#F4EEE4",
  panel = "#FBF8F5",
  grid = "#D8D2C8",
  text = "#402220",
  frame = "#C8102E",
  title = "#C8102E",
  strip = "#402220",
  striptext = "#F4EEE4",
  accent = "#C99A2E",
  outline = "#402220",
  fill = "#C8102E"
)

thrift_marks <- c("#C8102E", "#C99A2E", "#5B7DA6", "#3D1900", "#005C00", "#C47A86")

