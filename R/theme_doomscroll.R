#' Doomscroll theme
#'
#' Doomscrolling is spending far too long scrolling through upsetting or
#' endless feeds. This `ggplot2` theme's colors are sampled from the
#' Wikipedia image of a thumb scrolling a phone screen in the dark.
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
    background = "#1D1B1B",
    panel = "#292728",
    grid = "#434242",
    text = "#F2F0F0",
    frame = "#C97553",
    title = "#B77256",
    strip = "#F2F0F0",
    striptext = "#1D1B1B",
    accent = "#C97553",
    outline = "#F2F0F0",
    fill = "#793C24"
  ),
  light = c(
    background = "#EFEDED",
    panel = "#FBFAFB",
    grid = "#D9D7D7",
    text = "#2D2C2C",
    frame = "#C97553",
    title = "#531C04",
    strip = "#2D2C2C",
    striptext = "#EFEDED",
    accent = "#C97553",
    outline = "#2D2C2C",
    fill = "#531C04"
  )
)

doomscroll_marks <- list(
  dark = c("#793C24", "#C97553", "#FC9C77", "#FFE7BA", "#9E5F54", "#B18E8B"),
  light = c("#531C04", "#C97553", "#9A4A32", "#FC9C77", "#2E0000", "#B9C4BC")
)

