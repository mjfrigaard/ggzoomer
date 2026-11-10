#' Doomscroll theme
#'
#' Doomscrolling is spending far too long scrolling through upsetting or
#' endless feeds. Doomscrolling is endlessly scrolling bad news, usually
#' late at night. A 2024 study found that 53% of Gen Z say they doomscroll,
#' compared with about a third of Americans overall. Studies link the habit
#' to stress and anxiety. It even spills into spending: Fortune reported in
#' 2024 that Gen Z spent 21% more on holiday shopping to cope.
#'
#' The palette follows a glowing phone in a dark room: screen glow blue,
#' notification red, blue light, slate gray, breaking news red, and dim
#' white.
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
    background = "#0B0B12",
    panel = "#191A1E",
    grid = "#323338",
    text = "#EDEDF4",
    frame = "#D9DCE3",
    title = "#D9DCE3",
    strip = "#EDEDF4",
    striptext = "#0B0B12",
    accent = "#FF3B30",
    outline = "#EDEDF4",
    fill = "#4A90E2"
  ),
  light = c(
    background = "#EDEDFB",
    panel = "#F8F8FC",
    grid = "#D1D1DE",
    text = "#282A2F",
    frame = "#6A6C72",
    title = "#6A6C72",
    strip = "#282A2F",
    striptext = "#EDEDFB",
    accent = "#FF3B30",
    outline = "#282A2F",
    fill = "#4A90E2"
  )
)

doomscroll_marks <- list(
  dark = c("#4A90E2", "#FF3B30", "#A9CBFF", "#8A93A3", "#D7262E", "#D9DCE3"),
  light = c("#4A90E2", "#FF3B30", "#A6C8FC", "#8A93A3", "#D7262E", "#C3C6CD")
)

