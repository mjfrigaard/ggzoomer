#' Synthwave theme
#'
#' Synthwave is electronic music (and art) that looks back at 1980s film
#' scores: neon grids and chrome sunsets. Synthwave is electronic music
#' modeled on 1980s film and video game soundtracks. The 2011 film Drive
#' brought it into the mainstream. Hotline Miami, Far Cry 3: Blood Dragon,
#' and Stranger Things carried it to new fans. PC Gamer described its look
#' as 1980s excess that millennials find irresistible, modernized until
#' it's "just barely recognizable."
#'
#' The palette follows the article's outrun look: magenta neon, gridlines,
#' and a 1980s sunset in pink, orange, and yellow, with violet and chrome
#' blue.
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
    background = "#0F0618",
    panel = "#1B1724",
    grid = "#352F3E",
    text = "#F1ECF7",
    frame = "#FF6EC7",
    title = "#FF6EC7",
    strip = "#F1ECF7",
    striptext = "#0F0618",
    accent = "#FF6EC7",
    outline = "#F1ECF7",
    fill = "#F72585"
  ),
  light = c(
    background = "#F2EBFD",
    panel = "#F9F7FD",
    grid = "#D6CFE0",
    text = "#3C2231",
    frame = "#BD2C8C",
    title = "#BD2C8C",
    strip = "#3C2231",
    striptext = "#F2EBFD",
    accent = "#FF6EC7",
    outline = "#3C2231",
    fill = "#F72585"
  )
)

synthwave_marks <- list(
  dark = c("#F72585", "#FF6EC7", "#FF9E3D", "#FFD23F", "#7B2FF7", "#4CC9F0"),
  light = c("#F72585", "#FF6EC7", "#FF9E3D", "#A48200", "#7B2FF7", "#4CC9F0")
)

