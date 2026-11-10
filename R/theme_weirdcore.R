#' Weirdcore theme
#'
#' Weirdcore is an internet aesthetic of low quality images, liminal
#' spaces, and unsettling captions. Gen Z led weirdcore on TikTok, YouTube,
#' Instagram, and Discord, and it surged around 2021. It recycles late
#' 1990s and 2000s images that many in Gen Z barely remember. Commentators
#' read it as an outlet for anxiety, hazy memory, and despair. It is a
#' rough counterpoint to polished clean girl feeds.
#'
#' The palette follows low quality surreal images: fluorescent hallway
#' yellow, liminal pool blue, grass green, caption red, washed sky blue,
#' and CRT black.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Times New Roman when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Weirdcore](https://en.wikipedia.org/wiki/Weirdcore) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Weirdcore") +
#'   theme_weirdcore(base_family = "sans", title_family = "sans")
theme_weirdcore <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Times New Roman", "Times New Roman Bold.ttf")) {
  cols <- weirdcore_cols
  marks <- weirdcore_marks
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

# Sampled from a grassy grid under a black sun with the caption "You must escape this simulation"
weirdcore_cols <- c(
  background = "#F0EEE6",
  panel = "#F9F8F5",
  grid = "#D4D2CA",
  text = "#3E231C",
  frame = "#D90000",
  title = "#D90000",
  strip = "#3E231C",
  striptext = "#F0EEE6",
  accent = "#7EC8E3",
  outline = "#3E231C",
  fill = "#CEC688"
)

weirdcore_marks <- c("#CEC688", "#7EC8E3", "#5FA84B", "#E00000", "#6989A6", "#0A0A0A")

