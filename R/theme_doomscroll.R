#' Doomscroll theme
#'
#' Doomscrolling is spending far too long scrolling through upsetting or
#' endless feeds. The palette follows the article's late night feeds of
#' negative news: screen glow blue, alert red, headline gray, notification
#' orange, purple, and cyan on a dark room.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Verdana when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Doomscrolling](https://en.wikipedia.org/wiki/Doomscrolling) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Doomscroll") +
#'   theme_doomscroll(base_family = "sans", title_family = "sans")
theme_doomscroll <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Verdana", "Verdana Bold.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- doomscroll_cols[[mode]]
  marks <- doomscroll_marks[[mode]]
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

# Sampled from a thumb scrolling a phone screen in the dark
doomscroll_cols <- list(
  dark = c(
    background = "#0B0D14",
    panel = "#191B20",
    grid = "#32343A",
    text = "#ECEEF5",
    frame = "#E5484D",
    title = "#E5484D",
    strip = "#ECEEF5",
    striptext = "#0B0D14",
    accent = "#E5484D",
    outline = "#ECEEF5",
    fill = "#7FA8FF"
  ),
  light = c(
    background = "#EAEDFD",
    panel = "#F7F7FD",
    grid = "#CED1E0",
    text = "#402220",
    frame = "#C92C38",
    title = "#C92C38",
    strip = "#402220",
    striptext = "#EAEDFD",
    accent = "#E5484D",
    outline = "#402220",
    fill = "#7FA8FF"
  )
)

doomscroll_marks <- list(
  dark = c("#7FA8FF", "#E5484D", "#8B93A1", "#F28C28", "#8E6BD8", "#3FC1C9"),
  light = c("#7FA8FF", "#E5484D", "#8B93A1", "#F28C28", "#8E6BD8", "#3FC1C9")
)

