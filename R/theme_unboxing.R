#' Unboxing theme
#'
#' Unboxing videos film someone opening a new product, from phones to
#' sneakers. This `ggplot2` theme's colors are sampled from the Wikipedia
#' image of hands lifting a new instrument out of its shipping box.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Rockwell when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Unboxing](https://en.wikipedia.org/wiki/Unboxing) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Unboxing") +
#'   theme_unboxing(base_family = "sans", title_family = "sans")
theme_unboxing <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Rockwell", "Rockwell.ttc"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- unboxing_cols[[mode]]
  marks <- unboxing_marks[[mode]]
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

# Sampled from hands lifting a new instrument out of its shipping box
unboxing_cols <- list(
  dark = c(
    background = "#231919",
    panel = "#302525",
    grid = "#4B3F3F",
    text = "#F9EFE6",
    frame = "#C69868",
    title = "#EB4853",
    strip = "#F9EFE6",
    striptext = "#231919",
    accent = "#C69868",
    outline = "#F9EFE6",
    fill = "#D53243"
  ),
  light = c(
    background = "#FEEBD8",
    panel = "#FFFAF3",
    grid = "#E7D4C2",
    text = "#352929",
    frame = "#C69868",
    title = "#CC273C",
    strip = "#352929",
    striptext = "#FEEBD8",
    accent = "#C69868",
    outline = "#352929",
    fill = "#D53243"
  )
)

unboxing_marks <- list(
  dark = c("#D53243", "#C69868", "#FFE1B1", "#AD9289", "#564848", "#766F78"),
  light = c("#D53243", "#C69868", "#512E08", "#360000", "#D2BAAC", "#38323A")
)

