#' Unboxing theme
#'
#' Unboxing videos film someone opening a new product, from phones to
#' sneakers. Gen Z grew up watching unboxing videos on YouTube. TikTok and
#' Instagram Reels turned the format into quick, punchy clips full of
#' crinkle and tear sounds. A study of Gen Z smartphone buyers found that
#' the reviewer's touch and description raised their intent to buy, while
#' visuals alone did not. The appeal mixes product research, a playful
#' tone, and a relaxing sensory payoff.
#'
#' The palette follows a box being opened on camera: kraft cardboard,
#' tissue paper pink, glossy black, silver foil, and shrink wrap blue on
#' white packaging.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Rockwell when
#'     it's available, otherwise `"sans"`.
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
                      title_family = register_font("Rockwell", "Rockwell.ttc")) {
  cols <- unboxing_cols
  marks <- unboxing_marks
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
unboxing_cols <- c(
  background = "#F8F8F6",
  panel = "#FCFCFB",
  grid = "#DBDBDA",
  text = "#2A2A2A",
  frame = "#111111",
  title = "#111111",
  strip = "#2A2A2A",
  striptext = "#F8F8F6",
  accent = "#A77E85",
  outline = "#2A2A2A",
  fill = "#C8A27A"
)

unboxing_marks <- c("#C8A27A", "#A77E85", "#111111", "#C0C0C0", "#8E9BA2")

