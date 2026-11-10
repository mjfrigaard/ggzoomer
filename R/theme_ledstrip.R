#' LED strip theme
#'
#' LED strip lights are the adhesive color changing lights that line
#' bedroom ceilings and desks. LED strips are flexible bands of small
#' lights that stick along a wall, desk, or monitor. Hobbyists use them for
#' computer lighting, monitor backlights, and DIY projects. A USB port or
#' battery pack can power them. Paired with a small controller, they can
#' change color with music or anything else the controller senses.
#'
#' The palette follows the article's strip types: red, green, and blue
#' multicolor LEDs, warm and cool white color temperatures, and a 2200K
#' amber.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Silom when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [LED strip light](https://en.wikipedia.org/wiki/LED_strip_light) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "LED strip") +
#'   theme_ledstrip(base_family = "sans", title_family = "sans")
theme_ledstrip <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Silom", "Silom.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- ledstrip_cols[[mode]]
  marks <- ledstrip_marks[[mode]]
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

# Sampled from a strip of cyan LED light under an airplane cabin shelf
ledstrip_cols <- list(
  dark = c(
    background = "#0C101E",
    panel = "#191D2A",
    grid = "#323645",
    text = "#EBEDF9",
    frame = "#4670FF",
    title = "#4670FF",
    strip = "#EBEDF9",
    striptext = "#0C101E",
    accent = "#00962E",
    outline = "#EBEDF9",
    fill = "#FF3B3B"
  ),
  light = c(
    background = "#E9EDFF",
    panel = "#F6F7FD",
    grid = "#CDD1E2",
    text = "#28283F",
    frame = "#215FF0",
    title = "#215FF0",
    strip = "#28283F",
    striptext = "#E9EDFF",
    accent = "#00962E",
    outline = "#28283F",
    fill = "#FF3B3B"
  )
)

ledstrip_marks <- list(
  dark = c("#FF3B3B", "#00962E", "#3D6BFF", "#FFC58A", "#DDE8FF", "#FF9F43"),
  light = c("#FF3B3B", "#00962E", "#3D6BFF", "#F3BA80", "#BBC6DD", "#FF9F43")
)

