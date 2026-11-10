#' Wired earbuds theme
#'
#' Wired earbuds made a comeback as a style statement and a break from
#' charging. Gen Z calls AirPods passé and wears the cord as an analog
#' statement against always on tech, alongside dumbphones, instant cameras,
#' and vinyl. Bella Hadid, Harry Styles, and Charli XCX have all been seen
#' in wired earbuds. Searches for wired headphones hit 2.6 million in April
#' 2025, up 68% in one month. Practical perks help: no charging and nothing
#' to lose.
#'
#' The palette follows corded earbuds: Panasonic red, lilac, mint, cable
#' gray, and black against Apple white.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Marker Felt when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Headphones](https://en.wikipedia.org/wiki/Headphones) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Wired earbuds") +
#'   theme_wiredbuds(base_family = "sans", title_family = "sans")
theme_wiredbuds <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Marker Felt", "MarkerFelt.ttc")) {
  cols <- wiredbuds_cols
  marks <- wiredbuds_marks
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

# Sampled from a pair of white wired earbuds on a wooden table
wiredbuds_cols <- c(
  background = "#F5F5F5",
  panel = "#FCFCFC",
  grid = "#D9D9D9",
  text = "#2A2A2A",
  frame = "#1A1A1A",
  title = "#1A1A1A",
  strip = "#2A2A2A",
  striptext = "#F5F5F5",
  accent = "#C3B1E1",
  outline = "#2A2A2A",
  fill = "#D62828"
)

wiredbuds_marks <- c("#D62828", "#C3B1E1", "#98D5BE", "#7F7F7F", "#1A1A1A")

