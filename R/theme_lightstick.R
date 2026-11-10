#' Lightstick theme
#'
#' Lightsticks are the glow sticks fans wave at concerts, now synced to the
#' show at K-pop tours. This `ggplot2` theme's colors are sampled from the
#' Wikipedia image of a diagram of a glow stick being snapped and lit.
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
    background = "#1B1B1B",
    panel = "#282828",
    grid = "#424242",
    text = "#F1F1F1",
    frame = "#00B725",
    title = "#00F327",
    strip = "#F1F1F1",
    striptext = "#1B1B1B",
    accent = "#00B725",
    outline = "#F1F1F1",
    fill = "#00F327"
  ),
  light = c(
    background = "#EEEEEE",
    panel = "#FBFBFB",
    grid = "#D7D7D7",
    text = "#2C2C2C",
    frame = "#008B00",
    title = "#007E00",
    strip = "#2C2C2C",
    striptext = "#EEEEEE",
    accent = "#008B00",
    outline = "#2C2C2C",
    fill = "#00E102"
  )
)

lightstick_marks <- list(
  dark = c("#00F327", "#00B725", "#007100", "#335636", "#369247", "#9EFFA4"),
  light = c("#00E102", "#008B00", "#005200", "#63B356", "#002900", "#000B00")
)

