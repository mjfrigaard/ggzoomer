#' Dark academia theme
#'
#' Dark academia is an internet aesthetic built around old libraries,
#' tweed, and classic literature. Dark academia spread through Tumblr and
#' TikTok. Tumblr's 2021 year in review ranked it the platform's second
#' most popular aesthetic, and about 48% of Tumblr users are Gen Z.
#' Commentators link its appeal to digital fatigue and a hunger for
#' reflection and an intellectual identity. Critics point out that it has
#' since been sold back as a lifestyle brand.
#'
#' The palette follows a dim library with black coffee: parchment, brown
#' tweed, burgundy, forest green, charcoal, and dark oak.
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
    background = "#1F1A17",
    panel = "#2C2623",
    grid = "#46403D",
    text = "#F4ECE8",
    frame = "#E8DCC0",
    title = "#E8DCC0",
    strip = "#F4ECE8",
    striptext = "#1F1A17",
    accent = "#B1895F",
    outline = "#F4ECE8",
    fill = "#E8DCC0"
  ),
  light = c(
    background = "#FAEBE2",
    panel = "#FCF7F4",
    grid = "#DDCFC6",
    text = "#302914",
    frame = "#746A51",
    title = "#746A51",
    strip = "#302914",
    striptext = "#FAEBE2",
    accent = "#B1895F",
    outline = "#302914",
    fill = "#CFC3A8"
  )
)

darkacademia_marks <- list(
  dark = c("#E8DCC0", "#B1895F", "#9E2B2E", "#5E7F55", "#7D8C99", "#C9A27A"),
  light = c("#CFC3A8", "#B1895F", "#9E2B2E", "#5E7F55", "#7D8C99", "#C9A27A")
)

