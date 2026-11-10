#' Matcha theme
#'
#' Matcha is finely ground Japanese green tea, now a cafe staple as a
#' latte. In 2025, BeverageDaily called matcha Gen Z's avocado toast
#' moment. Its photogenic green suits Instagram and TikTok, where a new
#' flavor or cup design can go viral fast. Gen Z also picks matcha for its
#' perceived health benefits, dairy free options, and lower caffeine than
#' coffee. The whisking ritual signals that you're in the know.
#'
#' The palette follows a matcha latte layered over oat milk: ceremonial
#' green, bamboo whisk tan, deep tea leaf, matcha mochi, bright latte
#' green, and a dark wood counter.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Gill Sans when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Matcha](https://en.wikipedia.org/wiki/Matcha) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Matcha") +
#'   theme_matcha(base_family = "sans", title_family = "sans")
theme_matcha <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Gill Sans", "GillSans.ttc")) {
  cols <- matcha_cols
  marks <- matcha_marks
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

# Sampled from a bamboo scoop of matcha powder
matcha_cols <- c(
  background = "#F3EBDC",
  panel = "#F8F5F0",
  grid = "#D7CFC0",
  text = "#212D18",
  frame = "#3E5C2A",
  title = "#3E5C2A",
  strip = "#212D18",
  striptext = "#F3EBDC",
  accent = "#C9A86A",
  outline = "#212D18",
  fill = "#7BA23F"
)

matcha_marks <- c("#7BA23F", "#C9A86A", "#3E5C2A", "#B7C897", "#688630", "#5E4B3C")

