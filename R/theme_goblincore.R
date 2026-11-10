#' Goblincore theme
#'
#' Goblincore celebrates the less pretty side of nature: moss, mushrooms,
#' snails, and found objects. Goblincore is a grungier, moodier cousin of
#' cottagecore. It grew on TikTok in 2021 and ties into Gen Z's interest in
#' nature and sustainability. The trend pulls people away from screens and
#' into forests and empty lots. Coverage reads its anti consumerist
#' attitude and love of imperfection as a response to an unsettling, post
#' pandemic world.
#'
#' The palette follows mud, moss, and fungi in natural earth tones: moss
#' green, toadstool red, mushroom beige, lichen sage, mud brown, and olive
#' on soil black.
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
    background = "#231A10",
    panel = "#30261D",
    grid = "#4C4036",
    text = "#F7ECE3",
    frame = "#C8B49A",
    title = "#C8B49A",
    strip = "#F7ECE3",
    striptext = "#231A10",
    accent = "#B33A2E",
    outline = "#F7ECE3",
    fill = "#7B8E48"
  ),
  light = c(
    background = "#FDEBDC",
    panel = "#FDF7F2",
    grid = "#E0CFC0",
    text = "#352813",
    frame = "#7A6951",
    title = "#7A6951",
    strip = "#352813",
    striptext = "#FDEBDC",
    accent = "#B33A2E",
    outline = "#352813",
    fill = "#8A9E57"
  )
)

goblincore_marks <- list(
  dark = c("#7B8E48", "#B33A2E", "#C8B49A", "#7D8F6A", "#8A6A55", "#3B4E07"),
  light = c("#8A9E57", "#B33A2E", "#C8B49A", "#7D8F6A", "#8A6A55", "#344700")
)

