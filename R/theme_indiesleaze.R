#' Indie sleaze theme
#'
#' Indie sleaze is the messy, flash photo party style of 2006 to 2012, now
#' back on social media. Trend forecasters predicted an indie sleaze
#' revival at the start of 2022, and TikTok amplified it. For younger Gen
#' Z, it is nostalgia for an era they were too young to live through. The
#' messy, flash lit look is also a counterpoint to the polished clean girl
#' aesthetic and a break from hyper perfection.
#'
#' The palette follows harsh flash photos in dark clubs: red eye red, neon
#' rave pink, washed denim, flash white, smudged eyeliner gray, and worn
#' leather.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Impact when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Indie sleaze](https://en.wikipedia.org/wiki/Indie_sleaze) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Indie sleaze") +
#'   theme_indiesleaze(base_family = "sans", title_family = "sans")
theme_indiesleaze <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Impact", "Impact.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- indiesleaze_cols[[mode]]
  marks <- indiesleaze_marks[[mode]]
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

# Sampled from a singer performing under a stage light in 2007
indiesleaze_cols <- list(
  dark = c(
    background = "#111111",
    panel = "#1E1E1E",
    grid = "#373737",
    text = "#EEEEEE",
    frame = "#F5F5F0",
    title = "#F5F5F0",
    strip = "#EEEEEE",
    striptext = "#111111",
    accent = "#FF2E88",
    outline = "#EEEEEE",
    fill = "#C8102E"
  ),
  light = c(
    background = "#EEEEEE",
    panel = "#F8F8F8",
    grid = "#D2D2D2",
    text = "#2A2A26",
    frame = "#6C6C67",
    title = "#6C6C67",
    strip = "#2A2A26",
    striptext = "#EEEEEE",
    accent = "#FF2E88",
    outline = "#2A2A26",
    fill = "#C8102E"
  )
)

indiesleaze_marks <- list(
  dark = c("#C8102E", "#FF2E88", "#5B7FA3", "#F5F5F0", "#8A8A8A", "#8C6A55"),
  light = c("#C8102E", "#FF2E88", "#5B7FA3", "#C5C5C0", "#8A8A8A", "#8C6A55")
)

