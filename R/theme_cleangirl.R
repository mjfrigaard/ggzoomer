#' Clean girl theme
#'
#' The clean girl aesthetic is a minimal beauty and wellness trend built on
#' slicked back hair, a no makeup makeup look, and a limited palette. The
#' palette follows the article's no makeup makeup look (heavy rosy blush,
#' perfect brows, brown lip liner), its whites, blacks, grays, and light
#' neutrals, and the matcha it mentions.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Didot when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Clean girl aesthetic](https://en.wikipedia.org/wiki/Clean_girl_aesthetic) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Clean girl") +
#'   theme_cleangirl(base_family = "sans", title_family = "sans")
theme_cleangirl <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Didot", "Didot.ttc")) {
  cols <- cleangirl_cols
  marks <- cleangirl_marks
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

# Sampled from a single small gold hoop earring
cleangirl_cols <- c(
  background = "#FAF8F6",
  panel = "#FDFCFB",
  grid = "#DDDBDA",
  text = "#402125",
  frame = "#B5485D",
  title = "#B5485D",
  strip = "#402125",
  striptext = "#FAF8F6",
  accent = "#5A3E2B",
  outline = "#402125",
  fill = "#E07A8A"
)

cleangirl_marks <- c("#E07A8A", "#5A3E2B", "#8C4F3E", "#525257", "#8DAA5B", "#1E1B1B")

