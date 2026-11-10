#' LED strip theme
#'
#' LED strip lights are the adhesive color changing lights that line
#' bedroom ceilings and desks. LED strips are often called TikTok lights.
#' Refinery29 tracked the trend on TikTok from 2020 onward and called it
#' Gen Z's answer to the fairy lights of the 2010s. For teens in bare
#' bedrooms or dorms, a cheap strip of lights is one of the few ways to
#' make a space their own. Recent coverage notes Gen Z lighting turning
#' softer and dimmer.
#'
#' The palette follows TikTok lights along a dark bedroom wall: hot pink,
#' electric blue, purple, red, cyan, and green.
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
    background = "#0C0B1B",
    panel = "#191A27",
    grid = "#323342",
    text = "#EDEDF9",
    frame = "#00E5FF",
    title = "#00E5FF",
    strip = "#EDEDF9",
    striptext = "#0C0B1B",
    accent = "#0050FF",
    outline = "#EDEDF9",
    fill = "#FF1493"
  ),
  light = c(
    background = "#ECECFF",
    panel = "#F7F7FD",
    grid = "#D0D0E2",
    text = "#002F37",
    frame = "#00758E",
    title = "#00758E",
    strip = "#002F37",
    striptext = "#ECECFF",
    accent = "#0050FF",
    outline = "#002F37",
    fill = "#FF1493"
  )
)

ledstrip_marks <- list(
  dark = c("#FF1493", "#0050FF", "#4D10A9", "#FF0000", "#00E5FF", "#00FF66"),
  light = c("#FF1493", "#0050FF", "#40009E", "#FF0000", "#00D7F1", "#00E44D")
)

