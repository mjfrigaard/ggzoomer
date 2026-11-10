#' Mushroom lamp theme
#'
#' Mushroom lamps are glowing nightlights that became a bedroom decor
#' trend. Nightlights give comfort and a sense of security in the dark.
#' Because they are cheap to make, they come in many decorative designs,
#' from cartoon characters to fantastical shapes like the glowing mushroom.
#' Low cost LEDs added colors that can change on their own or at the touch
#' of a button.
#'
#' The palette follows the article's nightlight sources (incandescent
#' amber, neon orange, and soft electroluminescent green and blue) plus a
#' red spotted mushroom cap.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Trattatello when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Nightlight](https://en.wikipedia.org/wiki/Nightlight) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Mushroom lamp") +
#'   theme_mushroomlamp(base_family = "sans", title_family = "sans")
theme_mushroomlamp <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Trattatello", "Trattatello.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- mushroomlamp_cols[[mode]]
  marks <- mushroomlamp_marks[[mode]]
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

# Sampled from a green LED nightlight plugged into a wall
mushroomlamp_cols <- list(
  dark = c(
    background = "#12100E",
    panel = "#1E1D1B",
    grid = "#383635",
    text = "#F0EDEB",
    frame = "#FFB547",
    title = "#FFB547",
    strip = "#F0EDEB",
    striptext = "#12100E",
    accent = "#FF6A3D",
    outline = "#F0EDEB",
    fill = "#FFB547"
  ),
  light = c(
    background = "#F1EDE9",
    panel = "#F9F7F6",
    grid = "#D5D1CD",
    text = "#362714",
    frame = "#985D00",
    title = "#985D00",
    strip = "#362714",
    striptext = "#F1EDE9",
    accent = "#FF6A3D",
    outline = "#362714",
    fill = "#FFB547"
  )
)

mushroomlamp_marks <- list(
  dark = c("#FFB547", "#FF6A3D", "#7CFFB2", "#6FC3FF", "#D9434E", "#F5EFE6"),
  light = c("#FFB547", "#FF6A3D", "#57DC92", "#6FC3FF", "#D9434E", "#CBC5BC")
)

