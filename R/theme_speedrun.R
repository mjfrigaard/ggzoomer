#' Speedrun theme
#'
#' Speedrunning is beating a video game as fast as possible, often live for
#' charity. YPulse reports that Gen Z watched speedrunning grow from a
#' niche hobby into mainstream entertainment. The word now spills into
#' everyday jokes, like a 2025 viral video of a YouTuber speedrunning his
#' cat off his gaming chair. A good run can launch a content creation
#' career.
#'
#' The palette follows a split timer overlay on a stream: ahead green,
#' behind pace red, gold split, stream purple, pixel sky blue, and timer
#' white.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to PT Mono when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Speedrunning](https://en.wikipedia.org/wiki/Speedrunning) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Speedrun") +
#'   theme_speedrun(base_family = "sans", title_family = "sans")
theme_speedrun <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("PT Mono", "PTMono.ttc"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- speedrun_cols[[mode]]
  marks <- speedrun_marks[[mode]]
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

# Sampled from the crowd at a Summer Games Done Quick charity marathon
speedrun_cols <- list(
  dark = c(
    background = "#111111",
    panel = "#1E1E1E",
    grid = "#373737",
    text = "#EEEEEE",
    frame = "#FFFFFF",
    title = "#FFFFFF",
    strip = "#EEEEEE",
    striptext = "#111111",
    accent = "#FF4136",
    outline = "#EEEEEE",
    fill = "#2ECC40"
  ),
  light = c(
    background = "#EEEEEE",
    panel = "#F8F8F8",
    grid = "#D2D2D2",
    text = "#2A2A2A",
    frame = "#6A6A6A",
    title = "#6A6A6A",
    strip = "#2A2A2A",
    striptext = "#EEEEEE",
    accent = "#FF4136",
    outline = "#2A2A2A",
    fill = "#009A00"
  )
)

speedrun_marks <- list(
  dark = c("#2ECC40", "#FF4136", "#FFD700", "#9146FF", "#5C94FC", "#FFFFFF"),
  light = c("#009A00", "#FF4136", "#E6C100", "#9146FF", "#5C94FC", "#C6C6C6")
)

