#' LED strip theme
#'
#' LED strip lights are the adhesive color changing lights that line
#' bedroom ceilings and desks. This `ggplot2` theme's colors are sampled
#' from the Wikipedia image of a strip of cyan LED light under an airplane
#' cabin shelf.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Silom when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [LED strip light](https://en.wikipedia.org/wiki/LED_strip_light) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "LED strip") +
#'   theme_ledstrip(base_family = "sans", title_family = "sans")
theme_ledstrip <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Silom", "Silom.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- ledstrip_cols[[mode]]
  marks <- ledstrip_marks[[mode]]
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

# Sampled from a strip of cyan LED light under an airplane cabin shelf
ledstrip_cols <- list(
  dark = c(
    background = "#1C1B1C",
    panel = "#292728",
    grid = "#434243",
    text = "#F5EFF0",
    frame = "#006B8A",
    title = "#00A8C9",
    strip = "#F5EFF0",
    striptext = "#1C1B1C",
    accent = "#006B8A",
    outline = "#F5EFF0",
    fill = "#00A8C9"
  ),
  light = c(
    background = "#F2ECED",
    panel = "#FCFAFA",
    grid = "#DCD6D6",
    text = "#2D2C2C",
    frame = "#006B8A",
    title = "#007493",
    strip = "#2D2C2C",
    striptext = "#F2ECED",
    accent = "#006B8A",
    outline = "#2D2C2C",
    fill = "#00A8C9"
  )
)

ledstrip_marks <- list(
  dark = c("#00A8C9", "#006B8A", "#56DFFD", "#5A4A22", "#B6FFFF", "#3A4E57"),
  light = c("#00A8C9", "#006B8A", "#5BD4D4", "#003751", "#3F3109", "#000717")
)

