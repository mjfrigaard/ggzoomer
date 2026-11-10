#' Capybara theme
#'
#' Capybaras are the largest living rodents and a famously calm internet
#' mascot. Capybaras became a figure in meme culture in the 2020s. A common
#' meme format pairs a capybara with the song "After Party" by Don Toliver,
#' and a song about capybaras became a TikTok hit in 2022. Capybaras also
#' stand for calm. People see them as unflappable, and their personalities
#' have been called "buddha-like."
#'
#' The palette follows the ["After Party" single
#' cover](https://en.wikipedia.org/wiki/File:Don_Toliver_-_After_Party_%28single_cover%29.jpeg)
#' that the article's capybara memes pair with: a purple lowrider hearse,
#' lavender chrome, a near black shadow, the gray signpost and ground, a
#' mauve HEAVEN sign, and the hand lettered title, all on cream paper.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Marion when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Capybara](https://en.wikipedia.org/wiki/Capybara) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Capybara") +
#'   theme_capybara(base_family = "sans", title_family = "sans")
theme_capybara <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Marion", "Marion.ttc")) {
  cols <- capybara_cols
  marks <- capybara_marks
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

# Sampled from a capybara standing on a sandy riverbank
capybara_cols <- c(
  background = "#F3EBDE",
  panel = "#F8F6F1",
  grid = "#D7CFC2",
  text = "#30253B",
  frame = "#240849",
  title = "#240849",
  strip = "#30253B",
  striptext = "#F3EBDE",
  accent = "#9768CE",
  outline = "#30253B",
  fill = "#5B20A2"
)

capybara_marks <- c("#5B20A2", "#9768CE", "#120526", "#9D998C", "#76538F", "#625F5A")

