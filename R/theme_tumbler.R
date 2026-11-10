#' Tumbler theme
#'
#' Insulated tumblers and water bottles (vacuum flasks) became a status
#' accessory in the 2020s. An insulated tumbler is a vacuum flask built as
#' a cup. A vacuum between two walls slows heat transfer, so drinks stay
#' hot or cold for hours. With cold drinks, it also stops the outside of
#' the cup from sweating. The idea is old enough that "thermos" became a
#' generic word in the United States in 1963.
#'
#' The palette follows the article's stainless vacuum flask, in the powder
#' coated colors of today's tumblers (cream, sage, rose, and cobalt) and
#' the classic red Thermos.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Copperplate when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Vacuum flask](https://en.wikipedia.org/wiki/Vacuum_flask) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Tumbler") +
#'   theme_tumbler(base_family = "sans", title_family = "sans")
theme_tumbler <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Copperplate", "Copperplate.ttc")) {
  cols <- tumbler_cols
  marks <- tumbler_marks
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

# Sampled from a red vacuum flask on a cafeteria table
tumbler_cols <- c(
  background = "#F2F4F5",
  panel = "#FCFCFD",
  grid = "#D6D8D9",
  text = "#3F221E",
  frame = "#A3161A",
  title = "#A3161A",
  strip = "#3F221E",
  striptext = "#F2F4F5",
  accent = "#D6C8AD",
  outline = "#3F221E",
  fill = "#8C949C"
)

tumbler_marks <- c("#8C949C", "#D6C8AD", "#8FA58B", "#D8A1A6", "#2F55A4", "#A3161A")

