#' Axolotl theme
#'
#' Axolotls are Mexican salamanders that keep their gills for life and
#' became an internet favorite (and a game mob). This `ggplot2` theme's
#' colors are sampled from the Wikipedia image of a wild type axolotl
#' resting on gravel in an aquarium.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Rounded when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Axolotl](https://en.wikipedia.org/wiki/Axolotl) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Axolotl") +
#'   theme_axolotl(base_family = "sans", title_family = "sans")
theme_axolotl <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- axolotl_cols[[mode]]
  marks <- axolotl_marks[[mode]]
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

# Sampled from a wild type axolotl resting on gravel in an aquarium
axolotl_cols <- list(
  dark = c(
    background = "#191D16",
    panel = "#252922",
    grid = "#3F443C",
    text = "#EDF2E9",
    frame = "#65A755",
    title = "#4B9438",
    strip = "#EDF2E9",
    striptext = "#191D16",
    accent = "#65A755",
    outline = "#EDF2E9",
    fill = "#1C6A0D"
  ),
  light = c(
    background = "#EAF0E6",
    panel = "#F9FBF8",
    grid = "#D3D9CF",
    text = "#292D26",
    frame = "#002C00",
    title = "#1C6A0D",
    strip = "#292D26",
    striptext = "#EAF0E6",
    accent = "#002C00",
    outline = "#292D26",
    fill = "#1C6A0D"
  )
)

axolotl_marks <- list(
  dark = c("#1C6A0D", "#65A755", "#415142", "#BAEC97", "#607857", "#ACC2A1"),
  light = c("#1C6A0D", "#002C00", "#678447", "#91C270", "#000B00", "#B7C6AC")
)

