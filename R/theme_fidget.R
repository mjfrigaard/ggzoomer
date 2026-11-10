#' Fidget toy theme
#'
#' Fidget toys (spinners, cubes, pop its, and bike chains) are small things
#' to keep your hands busy. The palette follows the article's fidget
#' spinners, Fidget Cubes, and Pop Its: saturated silicone colors and a
#' chrome bearing gray.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Chalkduster when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Fidget toy](https://en.wikipedia.org/wiki/Fidget_toy) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Fidget toy") +
#'   theme_fidget(base_family = "sans", title_family = "sans")
theme_fidget <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Chalkduster", "Chalkduster.ttf")) {
  cols <- fidget_cols
  marks <- fidget_marks
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

# Sampled from a bike chain fidget toy on lined paper
fidget_cols <- c(
  background = "#F2F2F0",
  panel = "#FCFCFB",
  grid = "#D6D6D4",
  text = "#3F2129",
  frame = "#D01A69",
  title = "#D01A69",
  strip = "#3F2129",
  striptext = "#F2F2F0",
  accent = "#00BFB3",
  outline = "#3F2129",
  fill = "#FF3E9A"
)

fidget_marks <- c("#FF3E9A", "#00BFB3", "#9BDB2C", "#B34C00", "#8A4DFF", "#6B7280")

