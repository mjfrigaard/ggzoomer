#' Frog theme
#'
#' Frogs are tailless amphibians and a cottagecore and goblincore icon. Gen
#' Z's favorite frog is Animal Crossing's Froggy Chair, a green seat with a
#' wide red mouth. Fans get Froggy Chair tattoos, bake Froggy Chair cakes,
#' and print it on shirts. Frogcore extends the look to frog hoodies, rain
#' boots, and slippers. Frog memes, from wholesome mental health posts to
#' Arson Frog avatars, fill Gen Z feeds.
#'
#' The palette follows Animal Crossing's Froggy Chair and frog memes:
#' froggy green, the wide red mouth, pond blue, Arson Frog blue, moss, and
#' lily pad green on belly cream.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Superclarendon when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Frog](https://en.wikipedia.org/wiki/Frog) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Frog") +
#'   theme_frog(base_family = "sans", title_family = "sans")
theme_frog <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Superclarendon", "Superclarendon.ttc")) {
  cols <- frog_cols
  marks <- frog_marks
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

# Sampled from a red eyed tree frog on a branch
frog_cols <- c(
  background = "#F1EBC4",
  panel = "#F5F4EE",
  grid = "#D1CEBB",
  text = "#242940",
  frame = "#2E4A8C",
  title = "#2E4A8C",
  strip = "#242940",
  striptext = "#F1EBC4",
  accent = "#D93A2B",
  outline = "#242940",
  fill = "#6DBE45"
)

frog_marks <- c("#6DBE45", "#D93A2B", "#3B7EA1", "#2E4A8C", "#8A9A5B", "#3C7C1B")

