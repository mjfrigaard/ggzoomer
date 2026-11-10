#' Indie sleaze theme
#'
#' Indie sleaze is the messy, flash photo party style of 2006 to 2012, now
#' back on social media. The palette follows the article's flash
#' photography, bleached hair, shredded denim, galaxy and "Aztec" prints,
#' and smudged eyeliner on a dark club floor.
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
    background = "#121014",
    panel = "#1E1D20",
    grid = "#38363A",
    text = "#EFEDF2",
    frame = "#F2EEE6",
    title = "#F2EEE6",
    strip = "#EFEDF2",
    striptext = "#121014",
    accent = "#E3C878",
    outline = "#EFEDF2",
    fill = "#F2EEE6"
  ),
  light = c(
    background = "#F1ECF5",
    panel = "#F9F7FA",
    grid = "#D5D0D9",
    text = "#2C2A24",
    frame = "#6E6B64",
    title = "#6E6B64",
    strip = "#2C2A24",
    striptext = "#F1ECF5",
    accent = "#DDC273",
    outline = "#2C2A24",
    fill = "#C8C4BC"
  )
)

indiesleaze_marks <- list(
  dark = c("#F2EEE6", "#E3C878", "#5C7FA8", "#7B5BB5", "#C1502E", "#7C7880"),
  light = c("#C8C4BC", "#DDC273", "#5C7FA8", "#7B5BB5", "#C1502E", "#7C7880")
)

