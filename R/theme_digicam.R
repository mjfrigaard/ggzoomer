#' Digicam theme
#'
#' Digital point and shoot cameras from the 2000s are back for their flash
#' heavy, slightly blurry photos. In the early 2020s, digital cameras from
#' the early 2000s came back as a TikTok trend. The revival spread to
#' marketplaces like eBay and Etsy. Wikipedia describes it as Gen Z
#' nostalgia and a tribute to the Y2K aesthetic. These are the cameras
#' people carried before every phone had a good one.
#'
#' The palette follows the article's sensor channels (red, green, and
#' blue), an LCD screen, the flash, and the black grip on a silver body.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Courier New when
#'     it's available, otherwise `"sans"`.
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
                      title_family = register_font("Courier New", "Courier New Bold.ttf")) {
  cols <- digicam_cols
  marks <- digicam_marks
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
digicam_cols <- c(
  background = "#EDEEF0",
  panel = "#F8F8F9",
  grid = "#D1D2D4",
  text = "#26283F",
  frame = "#2459C9",
  title = "#2459C9",
  strip = "#26283F",
  striptext = "#EDEEF0",
  accent = "#2E9E4F",
  outline = "#26283F",
  fill = "#8B0009"
)

digicam_marks <- c("#8B0009", "#2E9E4F", "#2459C9", "#39B8C9", "#EFBF2D", "#2A2A2E")

