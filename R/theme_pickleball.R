#' Pickleball theme
#'
#' Pickleball is a paddle sport played with a plastic ball over a low net,
#' and the fastest growing sport in the US. Forrester reports that 19% of
#' US Gen Z adults online already play pickleball. A Morning Consult survey
#' put the share who had ever played at 34%. Low cost, no memberships, and
#' quick social rallies explain the appeal, and TikTok has become a major
#' channel for the sport. Surveys disagree on whether Gen Z plays more than
#' other generations.
#'
#' The palette follows the court and gear: court blue, optic yellow ball,
#' court green, pickle green, preppy navy, and the black net.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to DIN Condensed when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Pickleball](https://en.wikipedia.org/wiki/Pickleball) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Pickleball") +
#'   theme_pickleball(base_family = "sans", title_family = "sans")
theme_pickleball <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf")) {
  cols <- pickleball_cols
  marks <- pickleball_marks
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

# Sampled from a professional doubles match on a pickleball court
pickleball_cols <- c(
  background = "#F7F9F4",
  panel = "#FCFCFB",
  grid = "#DBDCD8",
  text = "#212940",
  frame = "#1F2A44",
  title = "#1F2A44",
  strip = "#212940",
  striptext = "#F7F9F4",
  accent = "#B6D71E",
  outline = "#212940",
  fill = "#2E6DA4"
)

pickleball_marks <- c("#2E6DA4", "#B6D71E", "#3E8E5E", "#7BA05B", "#1F2A44", "#202020")

