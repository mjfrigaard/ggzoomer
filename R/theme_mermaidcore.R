#' Mermaidcore theme
#'
#' Mermaidcore is a fashion trend of shells, pearls, sequins, and
#' iridescent sea colors. This `ggplot2` theme's colors are sampled from
#' the Wikipedia image of a cutaway nautilus shell showing its pearly
#' chambers (Wikipedia's Nacre article).
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Apple Chancery when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Mermaid](https://en.wikipedia.org/wiki/Mermaid) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Mermaidcore") +
#'   theme_mermaidcore(base_family = "sans", title_family = "sans")
theme_mermaidcore <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Apple Chancery", "Apple Chancery.ttf")) {
  cols <- mermaidcore_cols
  marks <- mermaidcore_marks
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

# Sampled from a cutaway nautilus shell showing its pearly chambers (Wikipedia's Nacre article)
mermaidcore_cols <- c(
  background = "#F3EED7",
  panel = "#FDFBF3",
  grid = "#DDD7C1",
  text = "#2C2C28",
  frame = "#524E37",
  title = "#726C53",
  strip = "#2C2C28",
  striptext = "#F3EED7",
  accent = "#524E37",
  outline = "#2C2C28",
  fill = "#847E64"
)

mermaidcore_marks <- c("#847E64", "#524E37", "#C9B181", "#272100", "#140000", "#B1C6CC")

