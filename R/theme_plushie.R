#' Plushie theme
#'
#' Plushies (stuffed toys) are collected, displayed, and carried well past
#' childhood. Stuffed toys are among the most popular toys, and not just
#' for children. In 2019, about a third of British adults said they slept
#' with a soft toy. In the 2020s, Squishmallows, Jellycat, and Labubu
#' became fads after going viral on social media.
#'
#' The palette follows the article's soft toys in "a wide variety of
#' colors" and fur textures: teddy honey, bunny pink, frog green, sky blue,
#' lavender, and button eye brown.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Rounded when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Stuffed toy](https://en.wikipedia.org/wiki/Stuffed_toy) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Plushie") +
#'   theme_plushie(base_family = "sans", title_family = "sans")
theme_plushie <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")) {
  cols <- plushie_cols
  marks <- plushie_marks
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

# Sampled from a replica of an early Steiff teddy bear
plushie_cols <- c(
  background = "#FFF6EE",
  panel = "#FFFCF9",
  grid = "#E2DAD2",
  text = "#3C2419",
  frame = "#A0522D",
  title = "#A0522D",
  strip = "#3C2419",
  striptext = "#FFF6EE",
  accent = "#F4A3B6",
  outline = "#3C2419",
  fill = "#C68A4A"
)

plushie_marks <- c("#C68A4A", "#F4A3B6", "#8CC084", "#8EC3E8", "#7965A1", "#4A3426")

