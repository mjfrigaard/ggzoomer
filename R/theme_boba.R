#' Boba theme
#'
#' Bubble tea (boba) is a Taiwanese tea drink with chewy tapioca pearls.
#' Boba is known for its vibrant, layered colors, cups slick with
#' condensation, and swirling tapioca pearls or colorful popping boba. That
#' look makes it one of the most Instagrammable drinks around. For Gen Z, a
#' photo of a boba cup works as a kind of visual currency.
#'
#' The palette follows the vibrant, layered drinks: black tapioca pearls,
#' milk tea, taro, strawberry, matcha, and mango popping boba.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Chalkboard when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Bubble tea](https://en.wikipedia.org/wiki/Bubble_tea) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Boba") +
#'   theme_boba(base_family = "sans", title_family = "sans")
theme_boba <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Chalkboard", "Chalkboard.ttc")) {
  cols <- boba_cols
  marks <- boba_marks
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

# Sampled from a cup of milk tea with black tapioca pearls
boba_cols <- c(
  background = "#F7F1EA",
  panel = "#FEFCF9",
  grid = "#DAD5CE",
  text = "#3C2418",
  frame = "#3B2418",
  title = "#3B2418",
  strip = "#3C2418",
  striptext = "#F7F1EA",
  accent = "#C99A6E",
  outline = "#3C2418",
  fill = "#2B1A12"
)

boba_marks <- c("#2B1A12", "#C99A6E", "#A88BD0", "#E8577A", "#4D7F1C", "#F2A93B")

