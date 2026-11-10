#' Dark academia theme
#'
#' Dark academia is an internet aesthetic built around old libraries,
#' tweed, and classic literature. The palette follows the article's palette
#' of black, white, beige, browns, dark green, and occasionally navy blue,
#' with candlelight gold and dark wood.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Big Caslon when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Dark academia](https://en.wikipedia.org/wiki/Dark_academia) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Dark academia") +
#'   theme_darkacademia(base_family = "sans", title_family = "sans")
theme_darkacademia <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Big Caslon", "BigCaslon.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- darkacademia_cols[[mode]]
  marks <- darkacademia_marks[[mode]]
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

# Sampled from a Gothic spiral staircase inside St. Barbara's Church in Kutna Hora
darkacademia_cols <- list(
  dark = c(
    background = "#1A1512",
    panel = "#26211E",
    grid = "#403B38",
    text = "#F4ECE9",
    frame = "#E0B252",
    title = "#E0B252",
    strip = "#F4ECE9",
    striptext = "#1A1512",
    accent = "#4F8A5C",
    outline = "#F4ECE9",
    fill = "#CDBA96"
  ),
  light = c(
    background = "#F9EBE4",
    panel = "#FCF7F4",
    grid = "#DCCFC8",
    text = "#332813",
    frame = "#896500",
    title = "#896500",
    strip = "#332813",
    striptext = "#F9EBE4",
    accent = "#4F8A5C",
    outline = "#332813",
    fill = "#CDBA96"
  )
)

darkacademia_marks <- list(
  dark = c("#CDBA96", "#4F8A5C", "#8B5E3C", "#5B7AB0", "#E0B252", "#EDE8DF"),
  light = c("#CDBA96", "#4F8A5C", "#8B5E3C", "#5B7AB0", "#E0B252", "#C8C4BB")
)

