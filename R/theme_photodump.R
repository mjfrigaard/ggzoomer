#' Photo dump theme
#'
#' A photo dump is a carousel post of loosely related phone photos from the
#' week. A photo dump is a loose Instagram carousel of unposed shots,
#' blurry photos, screenshots, and memes. The format traces back to summer
#' 2020 and spread as celebrities like Dua Lipa and Olivia Rodrigo adopted
#' it. Gen Z uses it to signal authenticity and push back on the pressure
#' to keep a perfect feed. Critics note the effortless look is often
#' carefully curated.
#'
#' The palette follows a casual camera roll carousel: Instagram magenta,
#' faded denim, sunset orange, washed olive, film grain beige, and blurry
#' night black.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to American Typewriter when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Camera phone](https://en.wikipedia.org/wiki/Camera_phone) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Photo dump") +
#'   theme_photodump(base_family = "sans", title_family = "sans")
theme_photodump <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("American Typewriter", "AmericanTypewriter.ttc")) {
  cols <- photodump_cols
  marks <- photodump_marks
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

# Sampled from a phone on a tripod recording a sunset over water
photodump_cols <- c(
  background = "#F5F3EE",
  panel = "#FDFCFA",
  grid = "#D9D7D2",
  text = "#292930",
  frame = "#1E1E24",
  title = "#1E1E24",
  strip = "#292930",
  striptext = "#F5F3EE",
  accent = "#7A93AC",
  outline = "#292930",
  fill = "#C13584"
)

photodump_marks <- c("#C13584", "#7A93AC", "#E8834A", "#8A8F6A", "#D5C8B2", "#1E1E24")

