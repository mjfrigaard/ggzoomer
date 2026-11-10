#' RGB setup theme
#'
#' An RGB setup is a gaming PC and desk lit up in color changing lights. An
#' RGB setup is a gaming PC lit up in color. Gaming PCs use powerful
#' graphics cards, processors, and memory. Their cases often add extra LED
#' lights or see-through panels just for looks. In the 2010s and 2020s,
#' gaming laptops and handheld gaming PCs joined the desktop builds.
#'
#' The palette follows the article's gaming PCs lit in RGB: cyan, purple,
#' red, lime, and blue case lighting with a white glow.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Narrow when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Gaming computer](https://en.wikipedia.org/wiki/Gaming_computer) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "RGB setup") +
#'   theme_rgbsetup(base_family = "sans", title_family = "sans")
theme_rgbsetup <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Narrow", "Arial Narrow Bold.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- rgbsetup_cols[[mode]]
  marks <- rgbsetup_marks[[mode]]
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

# Sampled from a gaming PC with glass panels and colored fans
rgbsetup_cols <- list(
  dark = c(
    background = "#0D0B14",
    panel = "#1B1A20",
    grid = "#34333A",
    text = "#EEEDF6",
    frame = "#00E5FF",
    title = "#00E5FF",
    strip = "#EEEDF6",
    striptext = "#0D0B14",
    accent = "#8B5CF6",
    outline = "#EEEDF6",
    fill = "#00E5FF"
  ),
  light = c(
    background = "#EFECFE",
    panel = "#F8F7FD",
    grid = "#D3D0E1",
    text = "#002F37",
    frame = "#00758E",
    title = "#00758E",
    strip = "#002F37",
    striptext = "#EFECFE",
    accent = "#8B5CF6",
    outline = "#002F37",
    fill = "#00D7F1"
  )
)

rgbsetup_marks <- list(
  dark = c("#00E5FF", "#8B5CF6", "#FF3355", "#B6FF3B", "#0043BA", "#E8E6F0"),
  light = c("#00D7F1", "#8B5CF6", "#FF3355", "#90DA00", "#0043BA", "#C6C4CE")
)

