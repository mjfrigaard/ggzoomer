#' Mushroom lamp theme
#'
#' Mushroom lamps are glowing nightlights that became a bedroom decor
#' trend. Interest in mushroom lamps reportedly took off from a DIY TikTok
#' post. Pinterest's 2023 forecast named mushroom decor a top emerging
#' trend, with searches up 666% over five years. The lamps fit the
#' fairycore and cottagecore rooms Gen Z favors. They work as mood lighting
#' and as a statement piece on Instagram.
#'
#' The palette follows a glowing glass toadstool in a dark room: amber
#' glow, candy stripe red, milk glass cream, toadstool orange, mossy green,
#' and lilac glass.
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
    background = "#1A1410",
    panel = "#26201D",
    grid = "#403A36",
    text = "#F5ECE8",
    frame = "#F2A541",
    title = "#F2A541",
    strip = "#F5ECE8",
    striptext = "#1A1410",
    accent = "#D9483B",
    outline = "#F5ECE8",
    fill = "#F2A541"
  ),
  light = c(
    background = "#FBEBE1",
    panel = "#FCF7F4",
    grid = "#DECFC5",
    text = "#372714",
    frame = "#9D5D00",
    title = "#9D5D00",
    strip = "#372714",
    striptext = "#FBEBE1",
    accent = "#D9483B",
    outline = "#372714",
    fill = "#F2A541"
  )
)

mushroomlamp_marks <- list(
  dark = c("#F2A541", "#D9483B", "#F4EBDD", "#E86A33", "#3E4F11", "#C8A2D8"),
  light = c("#F2A541", "#D9483B", "#CCC4B6", "#E86A33", "#3E4F11", "#C8A2D8")
)

