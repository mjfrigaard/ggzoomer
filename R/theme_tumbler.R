#' Tumbler theme
#'
#' Insulated tumblers and water bottles (vacuum flasks) became a status
#' accessory in the 2020s. Gen Z and TikTok drove the boom in the 40 ounce
#' Stanley Quencher. The #StanleyTumbler tag drew tens of millions of
#' views, and limited color drops caused store stampedes in 2023 and 2024.
#' A cup once marketed to rugged dads became an affordable, reusable status
#' symbol carried across campuses and gyms. Pale Barbie pink became the
#' most coveted shade.
#'
#' The palette follows the 40 ounce Stanley Quencher color drops: Barbie
#' pink, lilac, seafoam, hammertone green, polished steel, and black on
#' cream.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Copperplate when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Vacuum flask](https://en.wikipedia.org/wiki/Vacuum_flask) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Tumbler") +
#'   theme_tumbler(base_family = "sans", title_family = "sans")
theme_tumbler <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Copperplate", "Copperplate.ttc")) {
  cols <- tumbler_cols
  marks <- tumbler_marks
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

# Sampled from a red vacuum flask on a cafeteria table
tumbler_cols <- c(
  background = "#F2E8D5",
  panel = "#F6F3ED",
  grid = "#D5CCBA",
  text = "#162F1F",
  frame = "#3F6B4F",
  title = "#3F6B4F",
  strip = "#162F1F",
  striptext = "#F2E8D5",
  accent = "#C8A2C8",
  outline = "#162F1F",
  fill = "#AF6781"
)

tumbler_marks <- c("#AF6781", "#C8A2C8", "#8CCEAC", "#3F6B4F", "#B8BCC2", "#1C1C1C")

