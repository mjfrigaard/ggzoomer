#' Lightstick theme
#'
#' Lightsticks are the glow sticks fans wave at concerts, now synced to the
#' show at K-pop tours. Glow sticks are cheap lights that need no batteries
#' and give off no heat. They are a fixture at raves, concerts, festivals,
#' and dance clubs. Fans also wave them in dance styles such as glow poi
#' and wotagei.
#'
#' The palette follows the article's chemiluminescent glow in a translucent
#' plastic tube: green, pink, blue, yellow, orange, and purple on a black
#' arena.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Black when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Glow stick](https://en.wikipedia.org/wiki/Glow_stick) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Lightstick") +
#'   theme_lightstick(base_family = "sans", title_family = "sans")
theme_lightstick <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Black", "Arial Black.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- lightstick_cols[[mode]]
  marks <- lightstick_marks[[mode]]
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

# Sampled from a diagram of a glow stick being snapped and lit
lightstick_cols <- list(
  dark = c(
    background = "#08080C",
    panel = "#18181A",
    grid = "#313133",
    text = "#EDEDF1",
    frame = "#4CFF3A",
    title = "#4CFF3A",
    strip = "#EDEDF1",
    striptext = "#08080C",
    accent = "#FF4FB0",
    outline = "#EDEDF1",
    fill = "#4CFF3A"
  ),
  light = c(
    background = "#EDEDF4",
    panel = "#F7F7FA",
    grid = "#D1D1D8",
    text = "#1E2E1A",
    frame = "#007C00",
    title = "#007C00",
    strip = "#1E2E1A",
    striptext = "#EDEDF4",
    accent = "#FF4FB0",
    outline = "#1E2E1A",
    fill = "#00A000"
  )
)

lightstick_marks <- list(
  dark = c("#4CFF3A", "#FF4FB0", "#3DA8FF", "#FFFF7E", "#FF9A3D", "#6E2CBA"),
  light = c("#00A000", "#FF4FB0", "#3DA8FF", "#CACB45", "#6E2200", "#6E2CBA")
)

