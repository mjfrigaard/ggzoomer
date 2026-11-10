#' Wired earbuds theme
#'
#' Wired earbuds made a comeback as a style statement and a break from
#' charging. The palette follows the Headphones article's rubber, gold
#' contacts, and wire, plus the red right channel marker, the wood table,
#' and navy.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Marker Felt when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Headphones](https://en.wikipedia.org/wiki/Headphones) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Wired earbuds") +
#'   theme_wiredbuds(base_family = "sans", title_family = "sans")
theme_wiredbuds <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Marker Felt", "MarkerFelt.ttc")) {
  cols <- wiredbuds_cols
  marks <- wiredbuds_marks
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

# Sampled from a pair of white wired earbuds on a wooden table
wiredbuds_cols <- c(
  background = "#FDFDFD",
  panel = "#FCFCFC",
  grid = "#E0E0E0",
  text = "#3F221F",
  frame = "#D33A3A",
  title = "#D33A3A",
  strip = "#3F221F",
  striptext = "#FDFDFD",
  accent = "#C9A23F",
  outline = "#3F221F",
  fill = "#222326"
)

wiredbuds_marks <- c("#222326", "#C9A23F", "#4A2300", "#8E9399", "#23395B", "#D33A3A")

