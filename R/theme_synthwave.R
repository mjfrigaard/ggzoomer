#' Synthwave theme
#'
#' Synthwave is electronic music (and art) that looks back at 1980s film
#' scores: neon grids and chrome sunsets. Synthwave gives Gen Z nostalgia
#' for an era they never lived through, reintroduced by Netflix and social
#' media. Synthwave art fills Instagram, Pinterest, and TikTok. Its neon
#' grids and sunsets now show up in mainstream ads, games, and TV. The look
#' also links to phonk music and import car culture.
#'
#' The palette follows neon over a grid at sunset: hot pink, neon cyan,
#' electric purple, sunset orange, sun yellow, and grid magenta on midnight
#' navy.
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
    background = "#191421",
    panel = "#25202E",
    grid = "#403A49",
    text = "#F0ECF7",
    frame = "#FF2A6D",
    title = "#FF2A6D",
    strip = "#F0ECF7",
    striptext = "#191421",
    accent = "#05D9E8",
    outline = "#F0ECF7",
    fill = "#FF2A6D"
  ),
  light = c(
    background = "#F2EBFD",
    panel = "#F9F7FD",
    grid = "#D6CFE0",
    text = "#402126",
    frame = "#D5004E",
    title = "#D5004E",
    strip = "#402126",
    striptext = "#F2EBFD",
    accent = "#05D9E8",
    outline = "#402126",
    fill = "#FF2A6D"
  )
)

synthwave_marks <- list(
  dark = c("#FF2A6D", "#05D9E8", "#7700FF", "#FF8C42", "#FFD319", "#D300C5"),
  light = c("#FF2A6D", "#05D9E8", "#7700FF", "#FF8C42", "#ECC200", "#D300C5")
)

