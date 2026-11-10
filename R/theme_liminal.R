#' Liminal space theme
#'
#' Liminal space is an internet aesthetic of empty in between places:
#' hallways, waiting rooms, and closed malls. Liminal space images began
#' with a 2019 4chan post that spawned the Backrooms, then spread across
#' Reddit and TikTok. Commentators tie their appeal to childhood memories
#' of malls and schools. Empty streets during the pandemic lockdowns made
#' the feeling familiar. YPulse reported in 2026 that Gen Z loves films and
#' shows set in liminal spaces.
#'
#' The palette follows empty Backrooms hallways and dated malls:
#' fluorescent yellow, stained carpet beige, pool tile aqua, concrete gray,
#' mall teal, and night parking lot orange.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Andale Mono when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Liminal space](https://en.wikipedia.org/wiki/Liminal_space) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Liminal space") +
#'   theme_liminal(base_family = "sans", title_family = "sans")
theme_liminal <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Andale Mono", "Andale Mono.ttf")) {
  cols <- liminal_cols
  marks <- liminal_marks
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

# Sampled from an empty carpeted hallway in the Stanley Hotel
liminal_cols <- c(
  background = "#EDEBD7",
  panel = "#F5F4EE",
  grid = "#D1CFBC",
  text = "#00302D",
  frame = "#227570",
  title = "#227570",
  strip = "#00302D",
  striptext = "#EDEBD7",
  accent = "#B9A77A",
  outline = "#00302D",
  fill = "#8E8227"
)

liminal_marks <- c("#8E8227", "#B9A77A", "#7CC6C9", "#9A9A94", "#2F7F7A", "#E89A3C")

