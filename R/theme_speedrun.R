#' Speedrun theme
#'
#' Speedrunning is beating a video game as fast as possible, often live for
#' charity. Speedrunning means beating a video game as fast as possible.
#' Runners share videos and livestreams on YouTube and Twitch, and
#' community leaderboards rank the fastest runs. Games Done Quick, the
#' largest speedrunning marathon, had raised over $37 million for charity
#' by January 2022. Many runners say the community has helped their mental
#' health.
#'
#' The palette follows the article's timers and leaderboards: split timer
#' gold (best segment), green (ahead), red (behind), white digits, and tool
#' assisted cyan and purple.
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
    background = "#0C0F0C",
    panel = "#1A1C1A",
    grid = "#333533",
    text = "#ECEFEC",
    frame = "#34D058",
    title = "#34D058",
    strip = "#ECEFEC",
    striptext = "#0C0F0C",
    accent = "#008D17",
    outline = "#ECEFEC",
    fill = "#F5C542"
  ),
  light = c(
    background = "#EAEFEA",
    panel = "#F6F8F6",
    grid = "#CED3CE",
    text = "#1B2E1C",
    frame = "#007D00",
    title = "#007D00",
    strip = "#1B2E1C",
    striptext = "#EAEFEA",
    accent = "#008D17",
    outline = "#1B2E1C",
    fill = "#EFC03C"
  )
)

speedrun_marks <- list(
  dark = c("#F5C542", "#008D17", "#F0506E", "#F2F2F2", "#39C5CF", "#A371F7"),
  light = c("#EFC03C", "#008D17", "#F0506E", "#C5C5C5", "#39C5CF", "#A371F7")
)

