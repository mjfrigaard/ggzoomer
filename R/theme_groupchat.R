#' Group chat theme
#'
#' Group chats are where friends plan, share memes, and leave each other on
#' read. Group chats have become Gen Z's third place, taking over from
#' malls and coffee shops as the place to hang out. Their humor runs on
#' memes that reference earlier memes. A 2025 Giphy survey found that about
#' 89% of Gen Z and millennials check with their group chat before major
#' life decisions. Snap found that nearly two thirds of Gen Z shoppers
#' bought something after friends approved it in the chat.
#'
#' The palette follows stacked chat bubbles and emoji: iMessage blue, SMS
#' green, emoji yellow, heart red, typing gray, and dark mode black.
#'
#' @param base_size Base font size. Defaults to `15`.
#' @param base_family Base font family. Defaults to Arial when it's
#'     available on the system, otherwise `"sans"`.
#' @param title_family Title font family. Defaults to Arial Rounded when
#'     it's available, otherwise `"sans"`.
#'
#' @return A `ggplot2` theme object.
#'
#' @seealso [Online chat](https://en.wikipedia.org/wiki/Online_chat) on Wikipedia.
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = c("a", "b", "b")), aes(x = x, fill = x)) +
#'   geom_bar() +
#'   labs(title = "Group chat") +
#'   theme_groupchat(base_family = "sans", title_family = "sans")
theme_groupchat <- function(base_size = 15,
                      base_family = register_font("Arial", "Arial.ttf",
                                                  "Arial Bold.ttf"),
                      title_family = register_font("Arial Rounded", "Arial Rounded Bold.ttf")) {
  cols <- groupchat_cols
  marks <- groupchat_marks
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

# Sampled from a group conversation in a messaging app
groupchat_cols <- c(
  background = "#FFFFFF",
  panel = "#FCFCFC",
  grid = "#E2E2E2",
  text = "#242940",
  frame = "#0070F3",
  title = "#0070F3",
  strip = "#242940",
  striptext = "#FFFFFF",
  accent = "#00851A",
  outline = "#242940",
  fill = "#007AFF"
)

groupchat_marks <- c("#007AFF", "#00851A", "#F3C142", "#FF2D55", "#8E8E93", "#000000")

