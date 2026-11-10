#' Indie sleaze theme
#'
#' Indie sleaze is the messy, flash photo party style of 2006 to 2012, now
#' back on social media. This `ggplot2` theme's colors are sampled from the
#' Wikipedia image of a singer performing under a stage light in 2007.
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
    background = "#211A16",
    panel = "#2D2722",
    grid = "#48413C",
    text = "#FAEFE6",
    frame = "#7B3B00",
    title = "#C27534",
    strip = "#FAEFE6",
    striptext = "#211A16",
    accent = "#7B3B00",
    outline = "#FAEFE6",
    fill = "#C27534"
  ),
  light = c(
    background = "#F9ECE1",
    panel = "#FEFAF6",
    grid = "#E2D5CB",
    text = "#322B26",
    frame = "#7B3B00",
    title = "#A15A18",
    strip = "#322B26",
    striptext = "#F9ECE1",
    accent = "#7B3B00",
    outline = "#322B26",
    fill = "#C27534"
  )
)

indiesleaze_marks <- list(
  dark = c("#C27534", "#7B3B00", "#FBC58B", "#773C3D", "#A19485", "#8A6C56"),
  light = c("#C27534", "#7B3B00", "#ECB77E", "#350000", "#493E31", "#846751")
)

