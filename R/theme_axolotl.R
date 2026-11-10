#' Axolotl theme
#'
#' Axolotls are Mexican salamanders that keep their gills for life and
#' became an internet favorite (and a game mob). The axolotl is a
#' salamander that keeps its pink and white coloring, large eyes, and
#' feathery gills into adulthood. Online, it stands for cuteness, aquatic
#' pets, and staying young. Custom axolotl emojis often hold boba tea or
#' hearts, or wear tiny hats. In 2017, it became the official emoji of
#' Mexico City.
#'
#' The palette follows the axolotl emoji: pink and white skin, deep pink
#' feathery gills, big black eyes, and the boba tea, hearts, and aquarium
#' water it often comes with.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Rounded when
#'     it's available, otherwise `"sans"`.
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
                      title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")) {
  cols <- axolotl_cols
  marks <- axolotl_marks
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
axolotl_cols <- c(
  background = "#FFF5F7",
  panel = "#FFFBFC",
  grid = "#E2D9DB",
  text = "#402126",
  frame = "#C2425F",
  title = "#C2425F",
  strip = "#402126",
  striptext = "#FFF5F7",
  accent = "#E0607E",
  outline = "#402126",
  fill = "#F4A6B8"
)

axolotl_marks <- c("#F4A6B8", "#E0607E", "#2B2A2E", "#8A5A3B", "#8B0009", "#3B98A1")

