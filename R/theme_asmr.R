#' ASMR theme
#'
#' ASMR (autonomous sensory meridian response) is the tingling some people
#' feel while watching whisper, tapping, and crinkle videos. ASMR is the
#' calm, tingling feeling some people get from whispers, tapping, and other
#' quiet sounds. YouTube turned it into a genre. Many ASMR videos show one
#' person whispering or tapping straight into the camera. The trend has
#' reached museums, too. The Louvre invited the channel PARIS ASMR to film
#' there in 2019, and the first major ASMR exhibition opened in Sweden in
#' 2020.
#'
#' The palette follows the article's soft triggers (whispers, light touch,
#' brushing) as calm blues, lilac, blush, and mint, with the deep blue of
#' its tingle map.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Optima when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [ASMR](https://en.wikipedia.org/wiki/ASMR) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "ASMR") +
#'   theme_asmr(base_family = "sans", title_family = "sans")
theme_asmr <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Optima", "Optima.ttc")) {
  cols <- asmr_cols
  marks <- asmr_marks
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

# Sampled from a body map showing where ASMR tingles start and spread
asmr_cols <- c(
  background = "#F1EEF8",
  panel = "#FAF9FC",
  grid = "#D5D2DB",
  text = "#2C273D",
  frame = "#2836D9",
  title = "#2836D9",
  strip = "#2C273D",
  striptext = "#F1EEF8",
  accent = "#8C95F0",
  outline = "#2C273D",
  fill = "#2836D9"
)

asmr_marks <- c("#2836D9", "#8C95F0", "#E4B7FC", "#E7A6C4", "#3F8777", "#1D2366")

