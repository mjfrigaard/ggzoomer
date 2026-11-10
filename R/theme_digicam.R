#' Digicam theme
#'
#' Digital point and shoot cameras from the 2000s are back for their flash
#' heavy, slightly blurry photos. Gen Z revived early 2000s digital cameras
#' around 2022 on TikTok and Instagram. Many pulled them out of their
#' parents' drawers or bought them secondhand. The grainy, flash heavy
#' shots feel more authentic than heavily processed phone photos. There is
#' nostalgia, too: many of these users grew up being photographed on the
#' same cameras.
#'
#' The palette follows flash heavy early 2000s photos against a dark
#' background: a metallic silver body, the orange date stamp, LCD blue,
#' candy pink, gunmetal, and flash white.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Courier New when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Digital camera](https://en.wikipedia.org/wiki/Digital_camera) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Digicam") +
#'   theme_digicam(base_family = "sans", title_family = "sans")
theme_digicam <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Courier New", "Courier New Bold.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- digicam_cols[[mode]]
  marks <- digicam_marks[[mode]]
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

# Sampled from the front and back of a Canon PowerShot A95
digicam_cols <- list(
  dark = c(
    background = "#111111",
    panel = "#1E1E1E",
    grid = "#373737",
    text = "#EEEEEE",
    frame = "#F8F8F2",
    title = "#F8F8F2",
    strip = "#EEEEEE",
    striptext = "#111111",
    accent = "#FF8C1A",
    outline = "#EEEEEE",
    fill = "#C0C0C0"
  ),
  light = c(
    background = "#EEEEEE",
    panel = "#F8F8F8",
    grid = "#D2D2D2",
    text = "#2A2A26",
    frame = "#6C6C67",
    title = "#6C6C67",
    strip = "#2A2A26",
    striptext = "#EEEEEE",
    accent = "#FF8C1A",
    outline = "#2A2A26",
    fill = "#909090"
  )
)

digicam_marks <- list(
  dark = c("#C0C0C0", "#FF8C1A", "#3A7BD5", "#FFDDFF", "#7A7E84", "#F8F8F2"),
  light = c("#909090", "#FF8C1A", "#3A7BD5", "#F49AC2", "#7A7E84", "#C5C5BF")
)

