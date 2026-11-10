#' Ring light theme
#'
#' Ring lights are the circular lights behind nearly every vlog, makeup
#' tutorial, and video call. This `ggplot2` theme's colors are sampled from
#' the Wikipedia image of a ring of LEDs next to its controller.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to DIN Alternate when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Ring flash](https://en.wikipedia.org/wiki/Ring_flash) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Ring light") +
#'   theme_ringlight(base_family = "sans", title_family = "sans")
theme_ringlight <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("DIN Alternate", "DIN Alternate Bold.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- ringlight_cols[[mode]]
  marks <- ringlight_marks[[mode]]
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

# Sampled from a ring of LEDs next to its controller
ringlight_cols <- list(
  dark = c(
    background = "#1B1B1C",
    panel = "#282829",
    grid = "#424243",
    text = "#F0F0F2",
    frame = "#6C7180",
    title = "#7F8395",
    strip = "#F0F0F2",
    striptext = "#1B1B1C",
    accent = "#6C7180",
    outline = "#F0F0F2",
    fill = "#474B5B"
  ),
  light = c(
    background = "#EEEEEF",
    panel = "#FBFBFB",
    grid = "#D7D7D8",
    text = "#2C2C2D",
    frame = "#6C7180",
    title = "#424656",
    strip = "#2C2C2D",
    striptext = "#EEEEEF",
    accent = "#6C7180",
    outline = "#2C2C2D",
    fill = "#424656"
  )
)

ringlight_marks <- list(
  dark = c("#474B5B", "#6C7180", "#AEB3C1", "#4F4E40", "#9A9791", "#ECEEF8"),
  light = c("#424656", "#6C7180", "#AEB3C1", "#10141D", "#414033", "#9F9792")
)

