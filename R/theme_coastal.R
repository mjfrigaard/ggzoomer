#' Coastal grandmother theme
#'
#' Coastal grandmother is a relaxed style of linen, beach houses, and
#' seaside cooking. The palette follows a linen beach house: sea blue,
#' navy, sand, hydrangea, seagrass, and driftwood (the article has no
#' palette, so the Cape Cod postcard leads).
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Baskerville when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Coastal grandmother](https://en.wikipedia.org/wiki/Coastal_grandmother) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Coastal grandmother") +
#'   theme_coastal(base_family = "sans", title_family = "sans")
theme_coastal <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Baskerville", "Baskerville.ttc")) {
  cols <- coastal_cols
  marks <- coastal_marks
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

# Sampled from a vintage postcard of the bath houses on Craigville Beach, Cape Cod
coastal_cols <- c(
  background = "#F4EFE6",
  panel = "#FBF9F6",
  grid = "#D8D3CA",
  text = "#1D2A40",
  frame = "#23395B",
  title = "#23395B",
  strip = "#1D2A40",
  striptext = "#F4EFE6",
  accent = "#23395B",
  outline = "#1D2A40",
  fill = "#3F7C93"
)

coastal_marks <- c("#3F7C93", "#23395B", "#C9A66B", "#7D8CC4", "#7E9C6C", "#8C857B")

