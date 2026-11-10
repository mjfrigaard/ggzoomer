#' Livestream theme
#'
#' Livestreaming is broadcasting video in real time, from gaming streams to
#' vlogs filmed on the street. Livestreaming is video broadcast in real
#' time. Twitch and Kick are popular places to watch people play video
#' games, from esports to speedruns. Chat is a key feature. Viewers talk
#' with the streamer and with each other while the stream is live. Kick
#' alone averaged 235,000 live streams a day by June 2023.
#'
#' The palette follows a live broadcast as the article describes it: the
#' red live badge, stream purple, chat green, viewer blue, and donation
#' gold on a dark player.
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
#' @seealso [Live streaming](https://en.wikipedia.org/wiki/Live_streaming) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Livestream") +
#'   theme_livestream(base_family = "sans", title_family = "sans")
theme_livestream <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Black", "Arial Black.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- livestream_cols[[mode]]
  marks <- livestream_marks[[mode]]
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

# Sampled from a journalist livestreaming from a railway station
livestream_cols <- list(
  dark = c(
    background = "#0E0E10",
    panel = "#1B1B1D",
    grid = "#353536",
    text = "#EEEEF0",
    frame = "#FF4A47",
    title = "#FF4A47",
    strip = "#EEEEF0",
    striptext = "#0E0E10",
    accent = "#9B5CFF",
    outline = "#EEEEF0",
    fill = "#FF4A47"
  ),
  light = c(
    background = "#EDEDF2",
    panel = "#F7F7F9",
    grid = "#D1D1D6",
    text = "#3F221E",
    frame = "#D11427",
    title = "#D11427",
    strip = "#3F221E",
    striptext = "#EDEDF2",
    accent = "#9B5CFF",
    outline = "#3F221E",
    fill = "#FF4A47"
  )
)

livestream_marks <- list(
  dark = c("#FF4A47", "#9B5CFF", "#00C389", "#004BBA", "#F5A623", "#A3A3B0"),
  light = c("#FF4A47", "#9B5CFF", "#00C389", "#004BBA", "#F5A623", "#A3A3B0")
)

