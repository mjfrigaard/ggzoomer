#' Dark academia theme
#'
#' Dark academia is an internet aesthetic built around old libraries,
#' tweed, and classic literature. This `ggplot2` theme's colors are sampled
#' from the Wikipedia image of a Gothic spiral staircase inside St.
#' Barbara's Church in Kutna Hora.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Big Caslon when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Dark academia](https://en.wikipedia.org/wiki/Dark_academia) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Dark academia") +
#'   theme_darkacademia(base_family = "sans", title_family = "sans")
theme_darkacademia <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Big Caslon", "BigCaslon.ttf")) {
  cols <- darkacademia_cols
  marks <- darkacademia_marks
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

# Sampled from a Gothic spiral staircase inside St. Barbara's Church in Kutna Hora
darkacademia_cols <- c(
  background = "#EAEEF5",
  panel = "#FAFBFD",
  grid = "#D4D7DE",
  text = "#312B25",
  frame = "#664900",
  title = "#7F682F",
  strip = "#312B25",
  striptext = "#EAEEF5",
  accent = "#664900",
  outline = "#312B25",
  fill = "#977E44"
)

darkacademia_marks <- c("#977E44", "#664900", "#2B1100", "#D5B676", "#766548", "#B1BDCD")

