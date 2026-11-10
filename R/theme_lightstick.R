#' Lightstick theme
#'
#' Lightsticks are the glow sticks fans wave at concerts, now synced to the
#' show at K-pop tours. Every K-pop fandom has an official lightstick in
#' its own color, often topped with the group's logo. The Korea Herald
#' calls owning one a badge of devotion and fandom identity. Fans even
#' argue over look alike designs. At concerts, thousands of lightsticks
#' form synchronized seas of color, and the videos spread widely on social
#' media.
#'
#' The palette follows a concert crowd of K-pop lightsticks: pearl aqua,
#' BTS purple, Blackpink pink, Big Bang yellow, stage red, and clear
#' acrylic white.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Black when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Glow stick](https://en.wikipedia.org/wiki/Glow_stick) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Lightstick") +
#'   theme_lightstick(base_family = "sans", title_family = "sans")
theme_lightstick <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Black", "Arial Black.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- lightstick_cols[[mode]]
  marks <- lightstick_marks[[mode]]
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

# Sampled from a diagram of a glow stick being snapped and lit
lightstick_cols <- list(
  dark = c(
    background = "#0A0A0A",
    panel = "#191919",
    grid = "#323232",
    text = "#EEEEEE",
    frame = "#F2F6FA",
    title = "#F2F6FA",
    strip = "#EEEEEE",
    striptext = "#0A0A0A",
    accent = "#7E57C2",
    outline = "#EEEEEE",
    fill = "#7FD8D0"
  ),
  light = c(
    background = "#EEEEEE",
    panel = "#F8F8F8",
    grid = "#D2D2D2",
    text = "#272A2D",
    frame = "#696D70",
    title = "#696D70",
    strip = "#272A2D",
    striptext = "#EEEEEE",
    accent = "#7E57C2",
    outline = "#272A2D",
    fill = "#7CD5CD"
  )
)

lightstick_marks <- list(
  dark = c("#7FD8D0", "#7E57C2", "#F7A7C0", "#FFD700", "#E0115F", "#F2F6FA"),
  light = c("#7CD5CD", "#7E57C2", "#F7A7C0", "#E6C100", "#E0115F", "#82868A")
)

