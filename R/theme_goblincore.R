#' Goblincore theme
#'
#' Goblincore celebrates the less pretty side of nature: moss, mushrooms,
#' snails, and found objects. This `ggplot2` theme's colors are sampled
#' from the Wikipedia image of a still life of old vases, a framed photo,
#' and an animal skull.
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
    background = "#251818",
    panel = "#322424",
    grid = "#4E3E3E",
    text = "#FDEDEB",
    frame = "#F96758",
    title = "#EA4B40",
    strip = "#FDEDEB",
    striptext = "#251818",
    accent = "#F96758",
    outline = "#FDEDEB",
    fill = "#AE0015"
  ),
  light = c(
    background = "#FFE7E2",
    panel = "#FFF8F7",
    grid = "#EFD0CB",
    text = "#372928",
    frame = "#F66555",
    title = "#AE0015",
    strip = "#372928",
    striptext = "#FFE7E2",
    accent = "#F66555",
    outline = "#372928",
    fill = "#AE0015"
  )
)

goblincore_marks <- list(
  dark = c("#AE0015", "#F96758", "#D13B5E", "#D9ABA1", "#6F93A1", "#5E637B"),
  light = c("#AE0015", "#F66555", "#590000", "#D13B5E", "#D9ABA1", "#6F93A1")
)

