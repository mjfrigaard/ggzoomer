#' Gorpcore theme
#'
#' Gorpcore is hiking gear (shell jackets, fleece, and trail shoes) worn as
#' everyday streetwear. This `ggplot2` theme's colors are sampled from the
#' Wikipedia image of outdoor jackets and pants hanging in a store.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to DIN Condensed when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Gorpcore](https://en.wikipedia.org/wiki/Gorpcore) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Gorpcore") +
#'   theme_gorpcore(base_family = "sans", title_family = "sans")
theme_gorpcore <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("DIN Condensed", "DIN Condensed Bold.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- gorpcore_cols[[mode]]
  marks <- gorpcore_marks[[mode]]
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

# Sampled from outdoor jackets and pants hanging in a store
gorpcore_cols <- list(
  dark = c(
    background = "#22191E",
    panel = "#2F252B",
    grid = "#4A3F45",
    text = "#FCEDF0",
    frame = "#A60043",
    title = "#FD2E03",
    strip = "#FCEDF0",
    striptext = "#22191E",
    accent = "#A60043",
    outline = "#FCEDF0",
    fill = "#FA2A00"
  ),
  light = c(
    background = "#F9EAED",
    panel = "#FFF9FB",
    grid = "#E3D4D7",
    text = "#33292F",
    frame = "#A60043",
    title = "#D80000",
    strip = "#33292F",
    striptext = "#F9EAED",
    accent = "#A60043",
    outline = "#33292F",
    fill = "#FA2A00"
  )
)

gorpcore_marks <- list(
  dark = c("#FA2A00", "#A60043", "#FFBE6C", "#B20000", "#C58879", "#866C6B"),
  light = c("#FA2A00", "#A60043", "#F6B664", "#B20000", "#2F0000", "#867072")
)

