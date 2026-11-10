#' Vaporwave theme
#'
#' Vaporwave is a 2010s music genre and meme aesthetic of slowed down mall
#' music, old computers, and pink and teal gradients. This `ggplot2`
#' theme's colors are sampled from the Wikipedia image of a vaporwave style
#' Wikipedia logo with windows and planets.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Krungthep when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Vaporwave](https://en.wikipedia.org/wiki/Vaporwave) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Vaporwave") +
#'   theme_vaporwave(base_family = "sans", title_family = "sans")
theme_vaporwave <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Krungthep", "Krungthep.ttf")) {
  cols <- vaporwave_cols
  marks <- vaporwave_marks
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

# Sampled from a vaporwave style Wikipedia logo with windows and planets
vaporwave_cols <- c(
  background = "#EAEEF9",
  panel = "#FAFBFE",
  grid = "#D4D7E2",
  text = "#31283C",
  frame = "#C2C900",
  title = "#4F18AD",
  strip = "#31283C",
  striptext = "#EAEEF9",
  accent = "#C2C900",
  outline = "#31283C",
  fill = "#4F18AD"
)

vaporwave_marks <- c("#4F18AD", "#C2C900", "#C458E2", "#7A7600", "#0C0052", "#FF9CFF")

