#' Goblincore theme
#'
#' Goblincore celebrates the less pretty side of nature: moss, mushrooms,
#' snails, and found objects. Goblincore celebrates the parts of nature
#' most people overlook, such as soil, small animals, and second-hand
#' objects. It surfaced on Tumblr and TikTok in the late 2010s and "hit
#' full steam in 2020" during the pandemic. The goblincore subreddit grew
#' 395% in the year to July 2021. That June, Etsy reported a 695% jump in
#' goblincore searches.
#'
#' The palette follows the article's brown, green, and clashing colors:
#' moss, mushroom caps, earthworms, bones, rocks, and soil.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Luminari when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Goblincore](https://en.wikipedia.org/wiki/Goblincore) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Goblincore") +
#'   theme_goblincore(base_family = "sans", title_family = "sans")
theme_goblincore <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Luminari", "Luminari.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- goblincore_cols[[mode]]
  marks <- goblincore_marks[[mode]]
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

# Sampled from a still life of old vases, a framed photo, and an animal skull
goblincore_cols <- list(
  dark = c(
    background = "#1C1712",
    panel = "#28231E",
    grid = "#433D38",
    text = "#F4EDE6",
    frame = "#9DBB5A",
    title = "#9DBB5A",
    strip = "#F4EDE6",
    striptext = "#1C1712",
    accent = "#B8432E",
    outline = "#F4EDE6",
    fill = "#7A9A3A"
  ),
  light = c(
    background = "#FAEBDE",
    panel = "#FCF7F2",
    grid = "#DDCFC2",
    text = "#262D15",
    frame = "#557413",
    title = "#557413",
    strip = "#262D15",
    striptext = "#FAEBDE",
    accent = "#B8432E",
    outline = "#262D15",
    fill = "#7A9A3A"
  )
)

goblincore_marks <- list(
  dark = c("#7A9A3A", "#B8432E", "#D08C8C", "#D9CFB8", "#4F4C46", "#663C12"),
  light = c("#7A9A3A", "#B8432E", "#8D4F51", "#CEC4AD", "#8A8780", "#5B3308")
)

