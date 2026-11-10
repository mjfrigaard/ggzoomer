#' Coquette theme
#'
#' The coquette aesthetic is a 2020s fashion trend of bows, lace, ribbons,
#' and pastels. Coquette is a 2020s Gen Z trend that reclaims hyper
#' femininity as self expression. Unlike the girlboss era, it treats
#' softness as strength. On TikTok, #coquetteaesthetic has passed 18
#' billion views, and Lana Del Rey, Sabrina Carpenter, and Jennie have all
#' embraced the look. Critics call it regressive, while fans see a
#' celebration of vulnerability and individuality.
#'
#' The palette follows the hyper feminine wardrobe: ballet pink bows,
#' ribbon red hearts, pastel lavender and baby blue, pearls, and deep
#' cherry.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Snell Roundhand when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Coquette aesthetic](https://en.wikipedia.org/wiki/Coquette_aesthetic) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Coquette") +
#'   theme_coquette(base_family = "sans", title_family = "sans")
theme_coquette <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Snell Roundhand", "SnellRoundhand.ttc")) {
  cols <- coquette_cols
  marks <- coquette_marks
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

# Sampled from an 1880s tobacco card portrait of Marie Antoinette
coquette_cols <- c(
  background = "#FFF4F6",
  panel = "#FFFBFC",
  grid = "#E2D8DA",
  text = "#402123",
  frame = "#B8324B",
  title = "#B8324B",
  strip = "#402123",
  striptext = "#FFF4F6",
  accent = "#C8344F",
  outline = "#402123",
  fill = "#F4B6C2"
)

coquette_marks <- c("#F4B6C2", "#C8344F", "#C7B3E5", "#6989A6", "#90877D", "#8C1C3A")

