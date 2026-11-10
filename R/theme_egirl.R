#' E-girl theme
#'
#' E-girls and e-boys are a TikTok youth subculture that mixes emo, scene,
#' and mall goth fashion with anime and K-pop style. E-girls and e-boys
#' reached the mainstream in 2019 through TikTok transformation videos.
#' TikTok lacked Instagram's polish and filters, so the look pushed back on
#' perfectly edited influencer photos. In 2020, "e-girl style" was a top 10
#' trending fashion term on Google, and celebrities like Dua Lipa copied
#' its bleached stripes. Designers at Celine later built collections around
#' e-boy style.
#'
#' The palette follows the e-girl look: neon pink and blue dyed hair,
#' silver chains, a red band tee print, bleached blonde streaks, and anime
#' pink blush on black.
#'
#' Use `mode = "light"` for a light background with dark text and darker marks.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Silom when
#'     it's available, otherwise `"sans"`.
#' @param mode `"dark"` (the default) or `"light"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [E-girl and e-boy subculture](https://en.wikipedia.org/wiki/E-girl_and_e-boy_subculture) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "E-girl") +
#'   theme_egirl(base_family = "sans", title_family = "sans")
theme_egirl <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Silom", "Silom.ttf"),
                      mode = c("dark", "light")) {
  mode <- match.arg(mode)
  cols <- egirl_cols[[mode]]
  marks <- egirl_marks[[mode]]
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

# Sampled from an e-girl's striped sleeves, layered chain necklaces, and black band tee
egirl_cols <- list(
  dark = c(
    background = "#141216",
    panel = "#201E22",
    grid = "#3A383C",
    text = "#EFEDF2",
    frame = "#FF4FA0",
    title = "#FF4FA0",
    strip = "#EFEDF2",
    striptext = "#141216",
    accent = "#3FA9F5",
    outline = "#EFEDF2",
    fill = "#FF4FA0"
  ),
  light = c(
    background = "#F1ECF6",
    panel = "#F9F7FB",
    grid = "#D5D0DA",
    text = "#3E212C",
    frame = "#CE0B77",
    title = "#CE0B77",
    strip = "#3E212C",
    striptext = "#F1ECF6",
    accent = "#3FA9F5",
    outline = "#3E212C",
    fill = "#FF4FA0"
  )
)

egirl_marks <- list(
  dark = c("#FF4FA0", "#3FA9F5", "#C8C8CC", "#D7263D", "#F2D16B", "#F4A3B8"),
  light = c("#FF4FA0", "#3FA9F5", "#C5C5C9", "#D7263D", "#E3C35E", "#AF6479")
)

