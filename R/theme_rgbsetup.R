#' RGB setup theme
#'
#' An RGB setup is a gaming PC and desk lit up in color changing lights.
#' The RGB setup spread through streamers and the pro streamer setup trend
#' on TikTok and Instagram. A glowing desk makes an Instagram worthy stage.
#' Its appeal is self expression and personalization. Some gamers are now
#' pushing back with minimalist, no RGB setups.
#'
#' The palette follows a glowing desk cycling RGB: red, green, blue, neon
#' magenta, electric cyan, and ultraviolet purple on a black desk.
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
    background = "#0D0D12",
    panel = "#1B1B1E",
    grid = "#343438",
    text = "#EDEDF3",
    frame = "#00E5FF",
    title = "#00E5FF",
    strip = "#EDEDF3",
    striptext = "#0D0D12",
    accent = "#1EFF6A",
    outline = "#EDEDF3",
    fill = "#FF1E3C"
  ),
  light = c(
    background = "#EDEDF7",
    panel = "#F8F8FB",
    grid = "#D1D1DB",
    text = "#002F37",
    frame = "#00758E",
    title = "#00758E",
    strip = "#002F37",
    striptext = "#EDEDF7",
    accent = "#00E452",
    outline = "#002F37",
    fill = "#FF1E3C"
  )
)

rgbsetup_marks <- list(
  dark = c("#FF1E3C", "#1EFF6A", "#0035BA", "#FF2BD6", "#00E5FF", "#7A2BFF"),
  light = c("#FF1E3C", "#00E452", "#0035BA", "#FF2BD6", "#00DAF3", "#7A2BFF")
)

