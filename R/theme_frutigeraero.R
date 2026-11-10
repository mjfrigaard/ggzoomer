#' Frutiger Aero theme
#'
#' Frutiger Aero is the glossy design style of the mid 2000s: bubbles,
#' water, grass, and blue skies. This `ggplot2` theme's colors are sampled
#' from the Wikipedia image of soap bubbles floating over sunlit grass.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Skia when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Frutiger Aero](https://en.wikipedia.org/wiki/Frutiger_Aero) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Frutiger Aero") +
#'   theme_frutigeraero(base_family = "sans", title_family = "sans")
theme_frutigeraero <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Skia", "Skia.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- frutigeraero_cols[[mode]]
  marks <- frutigeraero_marks[[mode]]
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

# Sampled from soap bubbles floating over sunlit grass
frutigeraero_cols <- list(
  dark = c(
    background = "#181C23",
    panel = "#242830",
    grid = "#3F424B",
    text = "#ECF1FB",
    frame = "#236707",
    title = "#ECC480",
    strip = "#ECF1FB",
    striptext = "#181C23",
    accent = "#236707",
    outline = "#ECF1FB",
    fill = "#ECC480"
  ),
  light = c(
    background = "#EAEEF9",
    panel = "#F9FBFE",
    grid = "#D3D7E2",
    text = "#292C34",
    frame = "#236707",
    title = "#856626",
    strip = "#292C34",
    striptext = "#EAEEF9",
    accent = "#236707",
    outline = "#292C34",
    fill = "#E3BC78"
  )
)

frutigeraero_marks <- list(
  dark = c("#ECC480", "#236707", "#6E9217", "#6FA56B", "#425138", "#53785D"),
  light = c("#E3BC78", "#236707", "#6E9217", "#002500", "#2C5038", "#958D73")
)

