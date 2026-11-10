#' Matcha theme
#'
#' Matcha is finely ground Japanese green tea, now a cafe staple as a
#' latte. The palette follows the article's vivid green color, matcha
#' lattes, soba noodles, and wagashi: ceremonial green, bright green, latte
#' foam, buckwheat, red bean, and tea leaf.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Gill Sans when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Matcha](https://en.wikipedia.org/wiki/Matcha) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Matcha") +
#'   theme_matcha(base_family = "sans", title_family = "sans")
theme_matcha <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Gill Sans", "GillSans.ttc")) {
  cols <- matcha_cols
  marks <- matcha_marks
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

# Sampled from a bamboo scoop of matcha powder
matcha_cols <- c(
  background = "#F4F1E6",
  panel = "#FCFBF7",
  grid = "#D8D5CA",
  text = "#222D17",
  frame = "#4A7A1E",
  title = "#4A7A1E",
  strip = "#222D17",
  striptext = "#F4F1E6",
  accent = "#9BC53D",
  outline = "#222D17",
  fill = "#6A9A2B"
)

matcha_marks <- c("#6A9A2B", "#9BC53D", "#BFCE87", "#7E6A55", "#7A2E35", "#001700")

