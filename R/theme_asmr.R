#' ASMR theme
#'
#' ASMR (autonomous sensory meridian response) is the tingling some people
#' feel while watching whisper, tapping, and crinkle videos. ASMR is the
#' calm, tingling feeling some people get from whispers, tapping, and other
#' quiet sounds. YouTube turned it into a genre. Many ASMR videos show one
#' person whispering or tapping straight into the camera. The trend has
#' reached museums, too. The Louvre invited the channel PARIS ASMR to film
#' there in 2019, and the first major ASMR exhibition opened in Sweden in
#' 2020. [Gibi ASMR](https://en.wikipedia.org/wiki/Gibi_ASMR), one of
#' YouTube's top ASMR creators, started her channel in 2016 and reached one
#' million subscribers about a year after college.
#'
#' The palette follows the set behind [Gibi
#' ASMR](https://en.wikipedia.org/wiki/Gibi_ASMR)'s videos: a deep indigo
#' backdrop strung with blue and white fairy lights, a lilac top, red and
#' green bokeh, warm gold light, and pink nails.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Optima when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [ASMR](https://en.wikipedia.org/wiki/ASMR) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "ASMR") +
#'   theme_asmr(base_family = "sans", title_family = "sans")
theme_asmr <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Optima", "Optima.ttc"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- asmr_cols[[mode]]
  marks <- asmr_marks[[mode]]
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

# Sampled from a body map showing where ASMR tingles start and spread
asmr_cols <- list(
  dark = c(
    background = "#120D4D",
    panel = "#211759",
    grid = "#3F3169",
    text = "#F0ECF7",
    frame = "#DCE6FF",
    title = "#DCE6FF",
    strip = "#F0ECF7",
    striptext = "#120D4D",
    accent = "#B9A2F0",
    outline = "#F0ECF7",
    fill = "#6F8CFF"
  ),
  light = c(
    background = "#F1EBFE",
    panel = "#F9F7FD",
    grid = "#D5CFE1",
    text = "#202A3D",
    frame = "#626B81",
    title = "#626B81",
    strip = "#202A3D",
    striptext = "#F1EBFE",
    accent = "#B9A2F0",
    outline = "#202A3D",
    fill = "#6F8CFF"
  )
)

asmr_marks <- list(
  dark = c("#6F8CFF", "#B9A2F0", "#E2412A", "#4FC36A", "#F2C14E", "#D98FB0"),
  light = c("#6F8CFF", "#B9A2F0", "#E2412A", "#4FC36A", "#EFBE4B", "#D98FB0")
)

