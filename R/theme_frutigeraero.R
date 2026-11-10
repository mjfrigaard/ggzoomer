#' Frutiger Aero theme
#'
#' Frutiger Aero is the glossy design style of the mid 2000s: bubbles,
#' water, grass, and blue skies. The palette follows the article's blue
#' skies, grass, aurorae, and bright colors ("yellows, and particularly
#' blues and greens").
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Skia when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Frutiger Aero](https://en.wikipedia.org/wiki/Frutiger_Aero) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Frutiger Aero") +
#'   theme_frutigeraero(base_family = "sans", title_family = "sans")
theme_frutigeraero <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Skia", "Skia.ttf")) {
  cols <- frutigeraero_cols
  marks <- frutigeraero_marks
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

# Sampled from soap bubbles floating over sunlit grass
frutigeraero_cols <- c(
  background = "#E6F4FD",
  panel = "#F8FDFF",
  grid = "#CAD8E0",
  text = "#1E2A40",
  frame = "#0B6FC9",
  title = "#0B6FC9",
  strip = "#1E2A40",
  striptext = "#E6F4FD",
  accent = "#2EC4D6",
  outline = "#1E2A40",
  fill = "#1E90FF"
)

frutigeraero_marks <- c("#1E90FF", "#2EC4D6", "#5DBB3F", "#A6D33C", "#A98300", "#2D36AC")

