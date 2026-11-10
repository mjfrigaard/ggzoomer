#' Vinyl theme
#'
#' Vinyl records outsell CDs again, thanks to collectors who buy albums in
#' colored variants. The Vinyl Alliance calls Gen Z the driving force of
#' the vinyl revival. In its research, 56% of Gen Z buyers cite the look,
#' 37% use records as home decor, and 80% own a record player. Many buy
#' secondhand for environmental reasons. They share their collections on
#' TikTok and Instagram, and they value owning music and a slower way of
#' listening.
#'
#' The palette follows records and their pressings: vinyl black, label red,
#' translucent amber, clear blue, marbled green, and cardboard sleeve tan.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Cochin when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Phonograph record](https://en.wikipedia.org/wiki/Phonograph_record) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Vinyl") +
#'   theme_vinyl(base_family = "sans", title_family = "sans")
theme_vinyl <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Cochin", "Cochin.ttc")) {
  cols <- vinyl_cols
  marks <- vinyl_marks
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

# Sampled from LP, EP, and single records side by side
vinyl_cols <- c(
  background = "#F2EBDD",
  panel = "#F8F5F1",
  grid = "#D6CFC1",
  text = "#2A2A2A",
  frame = "#0D0D0D",
  title = "#0D0D0D",
  strip = "#2A2A2A",
  striptext = "#F2EBDD",
  accent = "#C0392B",
  outline = "#2A2A2A",
  fill = "#0D0D0D"
)

vinyl_marks <- c("#0D0D0D", "#C0392B", "#E8A33D", "#5DADE2", "#2E8B57", "#D2B48C")

