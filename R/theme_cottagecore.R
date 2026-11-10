#' Cottagecore theme
#'
#' Cottagecore is an internet aesthetic that romanticizes rural life:
#' gardens, baking, and handmade things. This `ggplot2` theme's colors are
#' sampled from the Wikipedia image of Anne Hathaway's Cottage, a thatched
#' cottage and garden in Warwickshire.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Bradley Hand when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Cottagecore](https://en.wikipedia.org/wiki/Cottagecore) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Cottagecore") +
#'   theme_cottagecore(base_family = "sans", title_family = "sans")
theme_cottagecore <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Bradley Hand", "Bradley Hand Bold.ttf")) {
  cols <- cottagecore_cols
  marks <- cottagecore_marks
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

# Sampled from Anne Hathaway's Cottage, a thatched cottage and garden in Warwickshire
cottagecore_cols <- c(
  background = "#E6EDFF",
  panel = "#F8FBFF",
  grid = "#D0D7ED",
  text = "#352A22",
  frame = "#92A23B",
  title = "#366AB4",
  strip = "#352A22",
  striptext = "#E6EDFF",
  accent = "#92A23B",
  outline = "#352A22",
  fill = "#6490DE"
)

cottagecore_marks <- c("#6490DE", "#92A23B", "#657915", "#3A4900", "#0A1100", "#FAB386")

