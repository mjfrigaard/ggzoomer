#' Streak theme
#'
#' Streaks are the daily counters that apps use to keep you coming back, a
#' common gamification trick. A streak counts how many days in a row you've
#' done something. It is a common gamification tool, which adds points,
#' badges, and leaderboards to things that aren't games. In the language
#' app [Duolingo](https://en.wikipedia.org/wiki/Duolingo), any finished
#' lesson counts toward a daily streak marked with a fire symbol. Its
#' Friend Streak lets up to five friends keep a streak together.
#'
#' The palette follows the article's points, badges, levels, and progress
#' bars: streak flame orange and red, gold badge, XP purple, progress
#' green, and a frozen streak blue.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Phosphate when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Gamification](https://en.wikipedia.org/wiki/Gamification) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Streak") +
#'   theme_streak(base_family = "sans", title_family = "sans")
theme_streak <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Phosphate", "Phosphate.ttc")) {
  cols <- streak_cols
  marks <- streak_marks
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

# Sampled from a poster of the five steps to earn a digital badge
streak_cols <- c(
  background = "#FFF8EE",
  panel = "#FEFCF8",
  grid = "#E2DBD2",
  text = "#3F221D",
  frame = "#D73027",
  title = "#D73027",
  strip = "#3F221D",
  striptext = "#FFF8EE",
  accent = "#E43D30",
  outline = "#3F221D",
  fill = "#FF7A00"
)

streak_marks <- c("#FF7A00", "#E43D30", "#FBC123", "#7C4DFF", "#2BB673", "#3AA0E8")

