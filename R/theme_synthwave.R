#' Synthwave theme
#'
#' Synthwave is electronic music (and art) that looks back at 1980s film
#' scores: neon grids and chrome sunsets. This `ggplot2` theme's colors are
#' sampled from the Wikipedia image of a neon grid under a striped sunset.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Futura when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Synthwave](https://en.wikipedia.org/wiki/Synthwave) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Synthwave") +
#'   theme_synthwave(base_family = "sans", title_family = "sans")
theme_synthwave <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Futura", "Futura.ttc"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- synthwave_cols[[mode]]
  marks <- synthwave_marks[[mode]]
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

# Sampled from a neon grid under a striped sunset
synthwave_cols <- list(
  dark = c(
    background = "#1F1924",
    panel = "#2B2630",
    grid = "#46404B",
    text = "#F5EEF9",
    frame = "#EEBA00",
    title = "#FF00FF",
    strip = "#F5EEF9",
    striptext = "#1F1924",
    accent = "#EEBA00",
    outline = "#F5EEF9",
    fill = "#FF00FF"
  ),
  light = c(
    background = "#F5E9FF",
    panel = "#FDF9FF",
    grid = "#DFD3E8",
    text = "#32283B",
    frame = "#EEBA00",
    title = "#BE00C2",
    strip = "#32283B",
    striptext = "#F5E9FF",
    accent = "#EEBA00",
    outline = "#32283B",
    fill = "#FF00FF"
  )
)

synthwave_marks <- list(
  dark = c("#FF00FF", "#EEBA00", "#C18100", "#564565", "#A200A9", "#7D6B8D"),
  light = c("#FF00FF", "#EEBA00", "#C18100", "#41314F", "#A200A9", "#9581A4")
)

