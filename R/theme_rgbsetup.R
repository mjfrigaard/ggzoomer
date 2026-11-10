#' RGB setup theme
#'
#' An RGB setup is a gaming PC and desk lit up in color changing lights.
#' This `ggplot2` theme's colors are sampled from the Wikipedia image of a
#' gaming PC with glass panels and colored fans.
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
    background = "#161C26",
    panel = "#222832",
    grid = "#3C424E",
    text = "#F2F1E6",
    frame = "#A833DA",
    title = "#CC6661",
    strip = "#F2F1E6",
    striptext = "#161C26",
    accent = "#A833DA",
    outline = "#F2F1E6",
    fill = "#973837"
  ),
  light = c(
    background = "#EFEFDD",
    panel = "#FBFBF5",
    grid = "#D9D8C7",
    text = "#262C37",
    frame = "#A833DA",
    title = "#973837",
    strip = "#262C37",
    striptext = "#EFEFDD",
    accent = "#A833DA",
    outline = "#262C37",
    fill = "#973837"
  )
)

rgbsetup_marks <- list(
  dark = c("#973837", "#A833DA", "#5E3599", "#BA76DC", "#67A844", "#907571"),
  light = c("#973837", "#A833DA", "#51298C", "#BA76DC", "#201947", "#67A844")
)

