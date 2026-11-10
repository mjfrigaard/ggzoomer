#' Slime theme
#'
#' Slime is the stretchy toy that kids make at home and watch in satisfying
#' videos. Slime started as a Mattel toy in 1976, sold in a tiny plastic
#' trash can. It later spread to Ghostbusters, Teenage Mutant Ninja
#' Turtles, and Nickelodeon, where it soaks winners at the Kids' Choice
#' Awards. In 2025, slime joined the National Toy Hall of Fame.
#'
#' The palette follows the article's oozy green slime, the other colors
#' from food coloring, and its plastic trash can.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Noteworthy when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Slime (toy)](https://en.wikipedia.org/wiki/Slime_(toy)) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Slime") +
#'   theme_slime(base_family = "sans", title_family = "sans")
theme_slime <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Noteworthy", "Noteworthy.ttc")) {
  cols <- slime_cols
  marks <- slime_marks
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

# Sampled from green slime poured from a cup
slime_cols <- c(
  background = "#F1F7EC",
  panel = "#FBFDF9",
  grid = "#D5DBD0",
  text = "#1E2E1A",
  frame = "#008300",
  title = "#008300",
  strip = "#1E2E1A",
  striptext = "#F1F7EC",
  accent = "#9B4DCA",
  outline = "#1E2E1A",
  fill = "#4BD13A"
)

slime_marks <- c("#4BD13A", "#9B4DCA", "#F25CA2", "#2FA4E7", "#998B00", "#7D8A80")

