#' Kidcore theme
#'
#' Kidcore is a bright, nostalgic aesthetic of primary colors, beads,
#' stickers, and childhood toys. Trend researchers tracked kidcore as early
#' as 2015 among millennials, but Gen Z pushed it further on TikTok. It
#' feeds the generation's nostalgia for eras they barely experienced.
#' Commentators describe it as escapism and comfort, even a form of self
#' care. Brands now use its bright, toy like look to speak to young
#' audiences.
#'
#' The palette follows Fisher Price primaries and toy colors: red, yellow,
#' blue, crayon green, tangerine orange, and grape purple.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Comic Sans MS when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Kidcore](https://en.wikipedia.org/wiki/Kidcore) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Kidcore") +
#'   theme_kidcore(base_family = "sans", title_family = "sans")
theme_kidcore <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Comic Sans MS", "Comic Sans MS Bold.ttf")) {
  cols <- kidcore_cols
  marks <- kidcore_marks
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

# Sampled from a heart shaped rainbow bead necklace
kidcore_cols <- c(
  background = "#FFFDF5",
  panel = "#FDFCF9",
  grid = "#E2E0D9",
  text = "#27283F",
  frame = "#1F5BD8",
  title = "#1F5BD8",
  strip = "#27283F",
  striptext = "#FFFDF5",
  accent = "#EFC500",
  outline = "#27283F",
  fill = "#E32636"
)

kidcore_marks <- c("#E32636", "#EFC500", "#1F5BD8", "#007700", "#FF8C1A", "#45008F")

