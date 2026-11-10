#' Speedrun theme
#'
#' Speedrunning is beating a video game as fast as possible, often live for
#' charity. This `ggplot2` theme's colors are sampled from the Wikipedia
#' image of the crowd at a Summer Games Done Quick charity marathon.
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
    background = "#1F1A1C",
    panel = "#2B2729",
    grid = "#464143",
    text = "#F5EFF2",
    frame = "#D2A684",
    title = "#F03D55",
    strip = "#F5EFF2",
    striptext = "#1F1A1C",
    accent = "#D2A684",
    outline = "#F5EFF2",
    fill = "#E02B49"
  ),
  light = c(
    background = "#F2ECEF",
    panel = "#FCFAFB",
    grid = "#DBD6D8",
    text = "#2F2B2D",
    frame = "#58371A",
    title = "#D31940",
    strip = "#2F2B2D",
    striptext = "#F2ECEF",
    accent = "#58371A",
    outline = "#2F2B2D",
    fill = "#E02B49"
  )
)

speedrun_marks <- list(
  dark = c("#E02B49", "#D2A684", "#82350F", "#FFE1D6", "#FFD783", "#A9938F"),
  light = c("#E02B49", "#58371A", "#310000", "#DA968D", "#E5AE5C", "#7AA9B5")
)

