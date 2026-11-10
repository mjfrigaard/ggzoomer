#' Ring light theme
#'
#' Ring lights are the circular lights behind nearly every vlog, makeup
#' tutorial, and video call. Constant video content pushed Gen Z to buy
#' ring lights for selfies, makeup tutorials, and streams. The telltale
#' ring reflection in the eyes gives it away. Brands like Cygnett launched
#' ring lights aimed at Gen Z and marketed them on TikTok and Snapchat.
#' Search interest has dipped in the past year but grown over five years.
#'
#' The palette follows daylight white glow and pastel macaron ring lights:
#' warm tungsten, candy pink, macaron mint, macaron lilac, chasing cyan,
#' and the black tripod.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to DIN Alternate when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Ring flash](https://en.wikipedia.org/wiki/Ring_flash) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Ring light") +
#'   theme_ringlight(base_family = "sans", title_family = "sans")
theme_ringlight <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("DIN Alternate", "DIN Alternate Bold.ttf")) {
  cols <- ringlight_cols
  marks <- ringlight_marks
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

# Sampled from a ring of LEDs next to its controller
ringlight_cols <- c(
  background = "#F7F9FF",
  panel = "#FBFCFE",
  grid = "#DBDCE2",
  text = "#2A2A2A",
  frame = "#1A1A1A",
  title = "#1A1A1A",
  strip = "#2A2A2A",
  striptext = "#F7F9FF",
  accent = "#B46989",
  outline = "#2A2A2A",
  fill = "#EAC48D"
)

ringlight_marks <- c("#EAC48D", "#B46989", "#9BD4BD", "#CDB8F0", "#009AA5", "#1A1A1A")

