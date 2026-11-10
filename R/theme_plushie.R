#' Plushie theme
#'
#' Plushies (stuffed toys) are collected, displayed, and carried well past
#' childhood. Gen Z treats plushies as comfort objects tied to mental
#' wellness, and as collectibles like Beanie Babies once were. TikTok
#' hashtags for Squishmallows have passed a billion views. Jellycat's
#' revenue reached about $252 million in 2022 to 2023 as adult buyers
#' joined in. Critics read the trend as nostalgic stress relief or delayed
#' adulthood.
#'
#' The palette follows pastel Squishmallows and Jellycat plush: pastel
#' pink, lavender, baby blue, mint, butter yellow, and avocado green.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Rounded when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Stuffed toy](https://en.wikipedia.org/wiki/Stuffed_toy) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Plushie") +
#'   theme_plushie(base_family = "sans", title_family = "sans")
theme_plushie <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")) {
  cols <- plushie_cols
  marks <- plushie_marks
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

# Sampled from a replica of an early Steiff teddy bear
plushie_cols <- c(
  background = "#FFF9F5",
  panel = "#FEFCFA",
  grid = "#E2DCD9",
  text = "#2F263C",
  frame = "#7A5BA8",
  title = "#7A5BA8",
  strip = "#2F263C",
  striptext = "#FFF9F5",
  accent = "#C9B6E4",
  outline = "#2F263C",
  fill = "#F0BBC9"
)

plushie_marks <- c("#F0BBC9", "#C9B6E4", "#6E8E9F", "#6A907D", "#DBCA85", "#8FAF5A")

